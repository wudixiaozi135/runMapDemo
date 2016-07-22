package tx.sce.controller
{
	import LibCore.utils.ProcessUtils;
	
	import flash.desktop.NativeProcess;
	import flash.desktop.NativeProcessStartupInfo;
	import flash.display.Bitmap;
	import flash.events.Event;
	import flash.events.NativeProcessExitEvent;
	import flash.filesystem.File;
	
	import mx.controls.Alert;
	
	import tx.sce.command.Command;
	import tx.sce.data.DataCollect;
	import tx.sce.data.ProjectData;
	import tx.sce.tools.MyZip;
	import tx.sce.updateMsg.UpdateMsg;
	import tx.sce.view.NpcRender;

	public class ProjectController extends Controller
	{	
		static private const ZIP_EXE:File = File.applicationDirectory.resolvePath("ext/7z.exe");	//压缩程序

		public function ProjectController(dt:DataCollect)
		{
			super(dt);
		}
				
		override protected function doCommand(cmd:Command):void
		{
			var msg:UpdateMsg;
			if (cmd.can_undo) 
			{
				data.projectData.isDirty = true;
			}
			switch (cmd.type)
			{
				case Command.NEW_PROJECT:
					data.projectData = new ProjectData();
					break;
				
				case Command.OPEN_PROJECT:
					openFile(cmd.commandData.file);
					break;
				
				case Command.SAVE_PROJECT:
					getZipReady();	
					data.projectData.file? saveFile(data.projectData.file) : createAndSave("保存","/"); 
					break;
				
				case Command.SAVE_AS:
					getZipReady();
					createAndSave("另存为",data.projectData.file? data.projectData.file.nativePath : "/");
					break;
				
				case Command.CHECK_DIRTY_FOR_CLOSE:
					msg = new UpdateMsg(UpdateMsg.CHECK_DIRTY_FOR_CLOSE_RESULT);
					msg.msgData = {is_dirty:getIsDirty()};
					dispatchMsg(msg);
					break;
				
				case Command.CLOSE_PROJECT:
					if (data.projectData)
					{
						data.projectData.dataZip && data.projectData.dataZip.destroy();
						data.projectData = null;
					}
					dispatchMsg(new UpdateMsg(UpdateMsg.CLOSE_VIEW));
					break;	
			}
		}
		
		override protected function undoCommand(cmd:Command):void
		{
			
		}
		
		private function createAndSave(createMsg:String, createPath:String):void
		{
			var tmp:File = new File(createPath);
			tmp.addEventListener(Event.SELECT,onFileCreated);
			tmp.browseForSave(createMsg);
		}
		
		protected function onFileCreated(event:Event):void
		{
			var cf:File = event.currentTarget as File;
			cf.removeEventListener(Event.SELECT,onFileCreated);
			if(cf.extension!="sce")
			{
				cf = new File(cf.nativePath+".sce");
			}
			data.projectData.file = cf;
			saveFile(cf);
		}
		
		private function saveFile(file:File):void
		{		
			try
			{
				if(file.exists)
				{
					file.deleteFile();
				}
			}
			catch(err:Error)
			{
				Alert.show("保存失败\r#无法删除"+file.nativePath,"提示");
				return;
			}
			
			ProcessUtils.startProcess(ZIP_EXE, ["a", file.nativePath, data.projectData.dataZip.getFolderPath()+"/*", "-mx=0"], null, onZip);
		}
		
		private function onZip(e:Event):void
		{
			if (e.type == NativeProcessExitEvent.EXIT)
			{
				Alert.show("保存成功","提示");
				data.projectData.isDirty = false;
			}
		}
		
		private function getZipReady():void
		{
			var newZip:MyZip = new MyZip();
			newZip.addFileFromString("library.xml",data.libraryData.libXml.toXMLString());
			newZip.addFileFromString("sceneXml.xml",getSceneXml().toXMLString());
			//var len:int = data.libraryData.picZip.getFileCount();
			var arr:Array = data.libraryData.picZip.getFileList();
			for each (var file:File in arr)
			{
				newZip.addFile(file);
			}
			if (data.projectData.dataZip) 
			{
				data.projectData.dataZip.destroy();
			}
			data.projectData.dataZip = newZip;
		}
		
		private function openFile(file:File):void
		{			
			data.projectData = new ProjectData(file);
			data.projectData.dataZip = new MyZip();
			
			ProcessUtils.startProcess(ZIP_EXE, ["x", file.nativePath, "-o"+data.projectData.dataZip.getFolderPath()], null, onUnzip);
		}
			
		private function onUnzip(e:Event):void
		{
			if (e.type == NativeProcessExitEvent.EXIT)
			{
				dispatchMsg(new UpdateMsg(UpdateMsg.FILE_DATA_LOADED));
			}
		}
		
		private function getIsDirty():Boolean
		{
			if (!data.projectData) return false;
			if (data.commandRecord.doneCmd.length == 0)
			{
				data.projectData.isDirty = false;
			}
			return data.projectData.isDirty;
		}
		
		private function getSceneXml():XML
		{
			var xml:XML = <Scene width={data.layerData.canvasWidth} height={data.layerData.canvasHeight} id={data.layerData.id} gridWidth={data.layerData.gridWidth} gridHeight={data.layerData.gridHeight}/>;
			var layerXml:XML;
			var layerArr:Array;
			for each (var info:Object in data.layerData.layersInfo)
			{
				layerXml = <layer name={info.name}/>;
				xml.appendChild(layerXml);
				layerArr = data.layerData.layersArr[info.name];
				switch (info.name)
				{
					case "GridLayer":
						for (var x:int = 0; x < data.layerData.gridColumns; x++)
						{
							for (var y:int = 0; y < data.layerData.gridRows; y++)
							{
								layerXml.appendChild(<grid x={x} y={y} walkable={(layerArr[x] && layerArr[x][y]!=null)? layerArr[x][y]:true} />);
							}								
						}	
						break;
					
					case "NPCLayer":
						for each (var render:NpcRender in layerArr)
						{
							layerXml.appendChild(<NPC name={render.name} x={render.x} y={render.y} direction={render.idleIndex} mpOffsetX={render.movePathOffset.x} mpOffsetY={render.movePathOffset.y}/>);
						}
						break;
					
					default:
						for each (var bm:Bitmap in layerArr)
						{
							layerXml.appendChild(<bitmap name={bm.name} x={bm.x} y={bm.y} />);
						}
						break;
				}
			}
			return xml;
		}
		
		
	}
}