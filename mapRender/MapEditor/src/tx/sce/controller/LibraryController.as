package tx.sce.controller
{
	import LibCore.mme.events.MmeAssetRenderEvent;

	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filesystem.File;
	import flash.net.URLRequest;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	
	import tx.sce.command.Command;
	import tx.sce.data.DataCollect;
	import tx.sce.data.LibraryData;
	import tx.sce.tools.MyZip;
	import tx.sce.updateMsg.UpdateMsg;
	import tx.sce.view.NpcRender;

	
	public class LibraryController extends Controller
	{				
		private var loadedPic:DisplayObject;
		private var loadPicXml:XML;
		private var loadForPreview:Boolean = false;
		private var loadForEdit:Boolean = false;
		private const LOAD_PIC_READY:String = "load_pic_ready";
		
		public function LibraryController(dt:DataCollect)
		{
			super(dt);
		}
			
		override protected function doCommand(cmd:Command):void
		{
			var msg:UpdateMsg;
			var xml:XML;
			
			switch (cmd.type)
			{
				case Command.NEW_PROJECT:
					data.libraryData = new LibraryData();
					this.dispatchMsg(new UpdateMsg(UpdateMsg.SHOW_NEW_LIBRARY_VIEW));
					break;
				
				case Command.CREATE_FROM_FILE:
					createFromFile();
					this.dispatchMsg(new UpdateMsg(UpdateMsg.SHOW_NEW_LIBRARY_VIEW));
					break;
				
				case Command.ADD_FILES_TO_LIBRARY:
					addFilesToLib(cmd);
					updateTreeSource();
					break;
				
				case Command.NEW_FOLDER:
					doNewFolder(cmd);
					updateTreeSource();
					break;
				
				case Command.PREVIEW_PIC:
					addEventListener(LOAD_PIC_READY,onPicLoaded);
					loadForPreview = true;
					loadPic(cmd.commandData.target as XML);
					break;
				
				case Command.DEL_FILES_OR_FOLDERS:
					delItems(cmd);
					break;
				
				case Command.RENAME_FOLDER:
					xml = this.getXmlById(cmd.commandData.targetId);
					cmd.commandData.oldname = String(xml.@name);
					xml.@name = String(cmd.commandData.name);
					break;
				
				case Command.EDIT_LIBRARY_ITEM:
					//editLibraryItem(cmd);
					addEventListener(LOAD_PIC_READY,onPicLoaded);
					loadPicXml = cmd.commandData.xml as XML;
					loadForEdit = true;
					loadPic(loadPicXml);
					break;
				
				case Command.CHANGE_LIBRARY_ITEM_ORDER:
					data.libraryData.libXml = cmd.commandData.newXml;
					updateTreeSource(true);
					break;
				
				case Command.CLOSE_PROJECT:
					if (data.libraryData)
					{
						data.libraryData.picZip && data.libraryData.picZip.destroy();
						data.libraryData = null;
					}
					dispatchMsg(new UpdateMsg(UpdateMsg.CLOSE_VIEW));
					break;
			}
		}
		
		override protected function undoCommand(cmd:Command):void
		{
			var xml:XML;
			var xmllist:XMLList;
			switch (cmd.type)
			{
				case Command.ADD_FILES_TO_LIBRARY:
					undoAddFiles(cmd.commandData.idArr);
					break;
				case Command.NEW_FOLDER:
					xmllist = XMLList(data.libraryData.libXml..item.(@id == cmd.commandData.id));
					delete xmllist[0];
					break;
				case Command.RENAME_FOLDER:
					xml = this.getXmlById(cmd.commandData.targetId);
					xml.@name = String(cmd.commandData.oldname);
					break;
				case Command.DEL_FILES_OR_FOLDERS:
					undoDel(cmd);
					break;
				
				case Command.CHANGE_LIBRARY_ITEM_ORDER:
					data.libraryData.libXml = cmd.commandData.oldXml;
					updateTreeSource(true);
					break;
			}
		}
		
		private function addFilesToLib(cmd:Command):void
		{
			var target:XML = this.getXmlById(cmd.commandData.targetId);
			var files:Array = cmd.commandData.files;
			var exists:Vector.<String> = new Vector.<String>;
			var zip:MyZip = data.libraryData.picZip;
			for each(var file:File in files)
			{
				if(zip.getFileCount()>0 && zip.getFileByName(file.name))
				{
					exists.push(file.name);
				}
			}
			var func:Function = function():void
			{
				var itemParent:XML = (target == null)? data.libraryData.libXml:target;
				var pathArr:Array = new Array();
				for each(file in files)
				{   
					if(exists.indexOf(file.name)!=-1)
					{
						files.splice(files.indexOf(file),1);
						continue;
					}
					pathArr.push(file.nativePath);
					if (!cmd.commandData.hasOwnProperty("idArr") || (cmd.commandData.idArr as Array).length <files.length)
					{
						if (!cmd.commandData.hasOwnProperty("idArr"))
							cmd.commandData.idArr = new Array();
						cmd.commandData.idArr.push(data.libraryData.libXml.@idCount++);					
					}
					itemParent.appendChild
						(new XML("<item id='"+(cmd.commandData.idArr[files.indexOf(file)])+"' name='"+file.name+"' isBranch='false' "+"path='"+file.nativePath+"' />"));
					//trace("idCount:"+data.libraryData.libXml.@idCount);

				}
				addToZipFile(pathArr);
			}
			if(exists.length>0)
			{
				Alert.show("文件已存在：\n"+exists.join("\n")+"\n是否忽略？","提示",Alert.YES|Alert.CANCEL,null,function(ce:CloseEvent):void{
					if(ce.detail == Alert.YES)
					{
						func();
					}
				});
			}else
			{
				func();
			}			
		}
		
		private function addToZipFile(arr:Array):void
		{
			var file:File;
			for each (var path:String in arr)
			{
				file = new File(path);
				data.libraryData.picZip.addFile(file);
			}
		}
		
		private function doNewFolder(cmd:Command):void
		{
			var target:XML = this.getXmlById(cmd.commandData.targetId);
			if (!cmd.commandData.hasOwnProperty("id"))
				cmd.commandData.id = data.libraryData.libXml.@idCount++;
			target.appendChild(new XML("<item id='"+(cmd.commandData.id)+"' name='"+cmd.commandData.name+"' isBranch='true'/>"));
			trace("idCount:"+data.libraryData.libXml.@idCount);
		}
		
		private function updateTreeSource(haveTo:Boolean = false):void
		{
			//首次往库中添加元素要更新tree的显示源以绑定数据源。
			if (data.libraryData.isNewLibrary || haveTo)
			{
				data.libraryData.isNewLibrary = false;
				var msg:UpdateMsg = new UpdateMsg(UpdateMsg.SET_TREE_SOURCE);
				msg.msgData = {libXml:data.libraryData.libXml};
				this.dispatchMsg(msg);
			}
		}
		
		private function loadPic(target:XML):void
		{
			if(target && String(target.@isBranch)!="true")
			{
				var file:File = data.libraryData.picZip.getFileByName(target.@name);
				if (file.extension == "swf")
				{
					var render:NpcRender = new NpcRender();
					var sp:Sprite = new Sprite();
					render.addEventListener(MmeAssetRenderEvent.READY,onloaded);
					render.loadUrl(file.nativePath);
					sp.addChild(render);
				}
				else
				{
					var loader:Loader = new Loader();
					loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onloaded);
					loader.load(new URLRequest(file.nativePath));
				}
			}
			else
			{
				loadedPic = null;
				dispatchEvent(new Event(LOAD_PIC_READY));
			}
			
			function onloaded(evt:Event):void
			{
				if (evt.type == Event.COMPLETE)  //表示是pic，因为如果是render的话事件类型是MmeAssetRenderEvent.READY
				{
					loadedPic = loader;
				}
				else
				{
					loadedPic = sp;
					render.play("idle_0",0,true);
					render.x = Math.abs(render.topLeft.x);
					render.y = Math.abs(render.topLeft.y);
				}
				dispatchEvent(new Event(LOAD_PIC_READY));
			}
		}
		
		private function onPicLoaded(evt:Event):void
		{
			var msg:UpdateMsg;
			if (loadForPreview)
			{
				loadForPreview = false;
				data.libraryData.previewPic = loadedPic;
				msg = new UpdateMsg(UpdateMsg.SET_PREVIEW_PIC);
				msg.msgData = {bitmap:data.libraryData.previewPic};
				dispatchMsg(msg);
				return;
			}
			if (loadForEdit)
			{
				loadForEdit = false;
				msg = new UpdateMsg(UpdateMsg.EDIT_LIBRARY_ITEM);
				msg.msgData = {xml:loadPicXml, pic:loadedPic, gridWidth:data.layerData.gridWidth, gridHeight:data.layerData.gridHeight};
				dispatchMsg(msg);
				return;
			}
		}
		
		private function delItems(cmd:Command):void
		{
			var items:Array = cmd.commandData.items;
			var xmllist:XMLList;
			var temp:int;
			var item:XML;
			//先保存undo所需数据
			if (!cmd.commandData.hasOwnProperty("parentIdArr"))
			{
				cmd.commandData.parentIdArr = new Array();
				for each (item in items)
				{
					cmd.commandData.parentIdArr.push(int(item.parent().@id));
				}
			}
			for each (item in items)
			{
				temp = item.@id;
				xmllist = data.libraryData.libXml..item.(@id == temp);
				if (xmllist.length() > 0)
				{
					delete xmllist[0];
				}
				if (String(item.@isBranch) == "true") 
				{
					xmllist = item..item.(String(@isBranch) != "true");
					for each (var tmpxml:XML in xmllist)
					{
						if (items.indexOf(tmpxml) == -1)
							items.push(tmpxml);
					}
					continue;
				}
				else
				{
					var count:int = data.libraryData.picZip.getFileCount();
					for (var i:int = 0; i<count; i++)
					{
						if (data.libraryData.picZip.getFileAt(i).name == item.@name)
						{
							data.libraryData.picZip.removeFileAt(i);
							break;
						}
					}
				}
			}
			if (!cmd.commandData.hasOwnProperty("pathArr"))
			{
				cmd.commandData.pathArr = new Array();
				for each (item in items)
				{
					if (String(item.@isBranch) != "true") 
					{
						cmd.commandData.pathArr.push(String(item.@path));
					}
				}
			}
		}
		
		private function createFromFile():void
		{
			var newZip:MyZip = new MyZip();
			var len:int = data.projectData.dataZip.getFileCount();
			var xmlFile:File = data.projectData.dataZip.getFileByName("library.xml");
			xmlFile.addEventListener(Event.COMPLETE,onLoaded);
			xmlFile.load();
			
			for (var i:int = 0; i < len; i++)
			{
				var file:File = data.projectData.dataZip.getFileAt(i);
				if (file.name == "library.xml" || file.name == "sceneXml.xml")
				{
					continue;
				}				
				newZip.addFile(file);
			}
			data.libraryData = new LibraryData(null,newZip);		
			
			function onLoaded(evt:Event):void
			{
				var newXml:XML;
				newXml = new XML((evt.target as File).data);
				data.libraryData.libXml = newXml;
				if (data.libraryData.libXml.item.length() > 0) 
					updateTreeSource();
				dispatchMsg(new UpdateMsg(UpdateMsg.LIBRARY_DATA_READY));
			}
		}
						
		private function undoAddFiles(idArr:Array):void
		{
			var xmlArr:Array = new Array();
			var xmllist:XMLList;
			var cmd:Command;
			for each (var id:int in idArr)
			{
				xmllist = data.libraryData.libXml..item.(@id == id);
				xmlArr.push(xmllist[0] as XML);
			}
			cmd = new Command(Command.DEL_FILES_OR_FOLDERS);
			cmd.commandData = {items:xmlArr};
			delItems(cmd);
		}
				
		private function getXmlById(id:int):XML
		{
			if (id == -1) return data.libraryData.libXml;
			var xmllist:XMLList = data.libraryData.libXml..item.(@id == id);
			var xml:XML = xmllist[0];
			return xml;
		}
		
		private function undoDel(cmd:Command):void
		{
			var items:Array = cmd.commandData.items;
			var parentIdArr:Array = cmd.commandData.parentIdArr;
			var pathArr:Array = cmd.commandData.pathArr;
			var xml:XML;
			for (var i:int=0; i<items.length; i++)
			{
				xml=getXmlById(parentIdArr[i]);
				if ( xml && !getXmlById(items[i].@id) )
				{
					xml.appendChild(items[i]);
				}
			}
			this.addToZipFile(pathArr);
		}
		
		/*private function editLibraryItem(cmd:Command):void
		{
			addEventListener("preViewPic_Ready",onPicReady);
			
			function onPicReady(evt:Event):void
			{
				removeEventListener("preViewPic_Ready",onPicReady);
				var msg:UpdateMsg;
				msg = new UpdateMsg(UpdateMsg.EDIT_LIBRARY_ITEM);
				msg.msgData = {xml:cmd.commandData.xml, pic:data.libraryData.previewPic};
				dispatchMsg(msg);
			}
		}*/
		

	}
}