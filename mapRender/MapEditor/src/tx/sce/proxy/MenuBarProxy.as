package tx.sce.proxy
{
	import flash.events.Event;
	import flash.filesystem.File;
	import flash.net.FileFilter;
	
	import mx.controls.Alert;
	import mx.controls.FlexNativeMenu;
	import mx.events.CloseEvent;
	import mx.events.FlexEvent;
	import mx.events.FlexNativeMenuEvent;
	import mx.managers.PopUpManager;
	
	import tx.sce.command.Command;
	import tx.sce.data.GlobalData;
	import tx.sce.tools.Global;
	import tx.sce.tools.MyInputWindow;
	import tx.sce.updateMsg.UpdateMsg;
	import tx.sce.view.ExportProgressView;

	public class MenuBarProxy extends Proxy
	{
		private var closeAfterSave:Boolean = false;
		private var exitAfterClose:Boolean = false;
		private var newAfterClose:Boolean = false;
		private var openAfterClose:Boolean = false;
		private static const controllerNum:int = 3;   //控制器的数目，用来检查所收到的反馈消息的数目是否足够。
		private var closeMsgTimes:int = 0;
		private var menuBarView:FlexNativeMenu;
		private var menuXML:XML =
			<root>
				<menuitem label="文件" >
					<menuitem label="新建" cmd="new" keyEquivalent="n" controlKey="true"/>
					<menuitem type="separator"/>
					<menuitem label="打开" cmd="open" keyEquivalent="o" controlKey="true"/>
					<menuitem label="保存" cmd="save" keyEquivalent="s" controlKey="true" enabled="false"/>
					<menuitem label="另存为" cmd="saveAs" keyEquivalent="s" controlKey="true" shiftKey="true" enabled="false"/>
					<menuitem type="separator"/>
					<menuitem label="关闭" cmd="close" keyEquivalent="w" controlKey="true" enabled="false"/>
					<menuitem label="退出" cmd="exit" keyEquivalent="q" controlKey="true"/>
				</menuitem>
				<menuitem label="编辑">
					<Item label="撤销" cmd="undo"  keyEquivalent="z" controlKey="true" />
					<Item label="重做" cmd="redo"  keyEquivalent="y" controlKey="true" />
				</menuitem>
				<menuitem label="功能">
					<Item label="导出" cmd="export"  keyEquivalent="&#xD;enter" controlKey="true" altKey="false" enabled="false"/>
					<Item label="预览" cmd="preview"  keyEquivalent="&#xD;enter" controlKey="true" altKey="true" enabled="true"/>
				</menuitem>
			</root>;
		
		private var exportProgressView:ExportProgressView;
		
		public function MenuBarProxy(winapp:MapEditor)
		{
			app = winapp;
			menuBarView = new FlexNativeMenu();
			menuBarView.dataProvider = menuXML;
			menuBarView.showRoot = false;
			menuBarView.labelField = "@label";
			menuBarView.keyEquivalentField = "@keyEquivalent";
			menuBarView.addEventListener(FlexNativeMenuEvent.ITEM_CLICK,onMenu);
			menuBarView.addEventListener(FlexNativeMenuEvent.MENU_SHOW,onMenuShow);
			app.menu = menuBarView;
			app.addEventListener(Event.CLOSING,onClosing);
			
			exportProgressView = new ExportProgressView();
		}
		
		
		private function onMenu(e:FlexNativeMenuEvent):void
		{
			var cmd:Command;
			switch(e.label)
			{
				case "新建":
					newAfterClose = true;
					dispatchCommand(new Command(Command.CHECK_DIRTY_FOR_CLOSE,null,false));
					break;
				case "打开":
					openAfterClose = true;
					dispatchCommand(new Command(Command.CHECK_DIRTY_FOR_CLOSE,null,false));
					break;
				case "保存":
					cmd = new Command(Command.SAVE_PROJECT,null,false);
					dispatchCommand(cmd);
					break;
				case "另存为":
					cmd = new Command(Command.SAVE_AS,null,false);
					dispatchCommand(cmd);
					break;
				case "关闭":
					dispatchCommand(new Command(Command.CHECK_DIRTY_FOR_CLOSE,null,false));
					break;
				case "退出":
					onClosing(null);
					break;
				
				case "撤销":
					dispatchCommand(new Command(Command.UNDO,null,false));
					break;	
				
				case "重做":
					dispatchCommand(new Command(Command.REDO,null,false));
					break;
				
				case "导出":
					export();
					break;
				
				case "预览":
					preview();
					break;
			}
		}
			
		override protected function handleMsg(msg:UpdateMsg):void
		{
			var cmd:Command;
			switch (msg.type)
			{
				case UpdateMsg.FILE_DATA_LOADED:
					dispatchCommand(new Command(Command.CREATE_FROM_FILE,null,false));
					break;
				
				case UpdateMsg.LIBRARY_DATA_READY:
					dispatchCommand(new Command(Command.CREATE_SCENE_AREA,null,false));
					break;
				
				case UpdateMsg.CHECK_DIRTY_FOR_CLOSE_RESULT:
					msg.msgData.is_dirty? 
					askToSave() :dispatchCommand(new Command(Command.CLOSE_PROJECT,null,false));
					break;
				
				case UpdateMsg.SAVE_FINISH:
					if (closeAfterSave)
					{
						closeAfterSave = false;
						dispatchCommand(new Command(Command.CLOSE_PROJECT,null,false));
					}
					break;
				
				case UpdateMsg.SHOW_NEW_LIBRARY_VIEW:
					//项目文件载入完毕就设置另存为、关闭等按钮可用，这里借用SHOW_NEW_LIBRARY_VIEW消息，来代表项目文件加载完毕
					setMenuItemAble(true);
					break;
				
				case UpdateMsg.SET_EXPORT_PROGRESS:
					//setTimeout(exportProgressView.bar.setProgress, 0, msg.msgData.value, msg.msgData.total);
					exportProgressView.bar.setProgress(msg.msgData.value, msg.msgData.total);
					exportProgressView.bar.label = "EXPORTING "+int(exportProgressView.bar.value)+"%";
					//exportProgressView.bar.dispatchEvent(new Event(Event.RESIZE));
					break;
				
				case UpdateMsg.CLOSE_EXPORT_PROGRESS:
					CloseExportProgress(msg);
					break;
				
				case UpdateMsg.CLOSE_VIEW:
					closeMsgTimes++;
					if ( closeMsgTimes < controllerNum) 
						break;
					else 
						closeMsgTimes = 0;
					//所有Controller都发送close_view消息后才执行操作。
					setMenuItemAble(false);
					if (exitAfterClose) app.exit();
					if (newAfterClose)
					{
						newAfterClose = false;
						newProject();
					}
					if (openAfterClose) 
					{
						openAfterClose = false;
						openFile();
					}
					break;
			}
		}
				
		protected function onMenuShow(event:FlexNativeMenuEvent):void
		{
			var menuBar:FlexNativeMenu = event.target as FlexNativeMenu;
			menuBar.removeEventListener(FlexNativeMenuEvent.MENU_SHOW,onMenuShow);
			Global.setNativeMenuItemName(menuBar.nativeMenu);
		}		
		
	
		protected function openFile():void
		{
			var file:File = new File("/");
			file.addEventListener(Event.SELECT,onFileSelected);
			file.browseForOpen("打开文件",[new FileFilter("场景编辑文件(*.sce)","*.sce")]);
		}
		
		protected function onFileSelected(event:Event):void
		{
			var sf:File = event.currentTarget as File;
			var cmd:Command;
			sf.removeEventListener(Event.SELECT,onFileSelected);
			cmd = new Command(Command.OPEN_PROJECT,null,false);
			cmd.commandData = {file:sf};
			dispatchCommand(cmd);
		}		
		
		private function askToSave():void
		{
			Alert.show("是否保存更改？","提示", Alert.YES|Alert.NO|Alert.CANCEL,app, onAskToSave);
		}
		
		private function onAskToSave(evt:CloseEvent):void
		{
			switch (evt.detail)
			{
				case Alert.YES:
					closeAfterSave = true;
					dispatchCommand(new Command(Command.SAVE_PROJECT,null,false));
					break;
				case Alert.NO:
					dispatchCommand(new Command(Command.CLOSE_PROJECT,null,false));
					break;
				case Alert.CANCEL:
					break;
			}
		}
		
		private function setMenuItemAble(value:Boolean):void
		{
			//如果到此为止也没有给各个item命名，则这时候命名。
			if (!menuBarView.nativeMenu.items[0].name) Global.setNativeMenuItemName(menuBarView.nativeMenu);			
			
			menuBarView.nativeMenu.getItemByName("文件").submenu.getItemByName("保存").enabled = value;
			menuBarView.nativeMenu.getItemByName("文件").submenu.getItemByName("另存为").enabled = value;
			menuBarView.nativeMenu.getItemByName("文件").submenu.getItemByName("关闭").enabled = value;
			menuBarView.nativeMenu.getItemByName("功能").submenu.getItemByName("导出").enabled = value;
		}
		
		protected function onClosing(event:Event):void
		{
			if (event) event.preventDefault();
			exitAfterClose = true;
			dispatchCommand(new Command(Command.CHECK_DIRTY_FOR_CLOSE,null,false));
		}
		
		private function newProject():void
		{
			var inputContent:Array = new Array();
			var newCanvasWindow:MyInputWindow;
			
			inputContent.push({label:"场景ID",value:"1"});
			inputContent.push({label:"场景宽度（像素）",value:"640"});
			inputContent.push({label:"场景高度（像素）",value:"480"});
			inputContent.push({label:"网格宽度（像素）", value:"64"});
			inputContent.push({label:"网格高度（像素）", value:"32"});
			newCanvasWindow = new MyInputWindow("新建场景",inputContent,onOk);
			PopUpManager.addPopUp(newCanvasWindow,app,true);
			PopUpManager.centerPopUp(newCanvasWindow);
		}
		
		private function onOk(content:Object):void
		{
			var cmd:Command;
			cmd = new Command(Command.NEW_PROJECT,null,false);
			cmd.commandData = {id:content["场景ID"], width:content["场景宽度（像素）"], height:content["场景高度（像素）"], gridWidth:content["网格宽度（像素）"], gridHeight:content["网格高度（像素）"]};
			dispatchCommand(cmd);
		}
		
		private function export():void
		{
			var exportWin:MyInputWindow;
			var exportData:Array = new Array();
			exportData.push({label:"图块宽度（像素）", value:300});
			exportData.push({label:"图块高度（像素）", value:300});
			exportWin = new MyInputWindow("导出场景",exportData,onExportInput);
			PopUpManager.addPopUp(exportWin,app,true);
			PopUpManager.centerPopUp(exportWin);
		}
		
		private function onExportInput(exportData:Object):void
		{
			var getDiretory:File = new File();
			getDiretory.addEventListener(Event.SELECT,onDiretorySelected);
			getDiretory.browseForDirectory("选择导出目录");
			
			function onDiretorySelected(evt:Event):void
			{				
				getDiretory.removeEventListener(Event.SELECT,onDiretorySelected);
				exportProgressView.addEventListener(FlexEvent.SHOW, onProgressBarShow);
				PopUpManager.addPopUp(exportProgressView, app, true);
				PopUpManager.centerPopUp(exportProgressView);
			}
			
			function onProgressBarShow(event:Event):void
			{
				exportProgressView.removeEventListener(FlexEvent.SHOW, onProgressBarShow);
				exportProgressView.bar.setProgress(0,100);
				exportProgressView.bar.label = "EXPORTING "+int(exportProgressView.bar.value)+"%";
					
//				if (File.applicationDirectory.resolvePath("ext/naruto").exists == false)
//				{
//					var np:NativeProcess = new NativeProcess();
//					np.addEventListener(NativeProcessExitEvent.EXIT,sendCmd);
//					var npsi:NativeProcessStartupInfo = new NativeProcessStartupInfo();
//					npsi.executable = File.applicationDirectory.resolvePath("ext/7z.exe");
//					var args:Vector.<String> = new Vector.<String>;
//					args[0] = "x";
//					args[1] = File.applicationDirectory.resolvePath("ext/naruto.7z").nativePath;
//					args[2] = "-o"+File.applicationDirectory.resolvePath("ext/").nativePath;
//					npsi.arguments = args;
//					np.start(npsi);
//				}
//				else
//				{
					sendCmd();
//				}
				
//				var file:File = new File("C:/Windows/System32/Macromed/Flash/FlashPlayerTrust/trustNaruto.txt");
//				if (file.exists == false)
//				{
//					try
//					{
//						var fileStream:FileStream = new FileStream();
//						fileStream.open(file,FileMode.WRITE);
//						fileStream.writeUTFBytes(File.applicationDirectory.resolvePath("ext/naruto").nativePath);
//						fileStream.close();
//					}	
//					catch(err:Error){
//						Alert.show("set trust directory failed"+err.toString(),"error");
//						trace(err);
//					}
//				}

				function sendCmd():void
				{
					var cmd:Command;
					cmd = new Command(Command.EXPORT_SCENE,null,false);
					cmd.commandData = {path:getDiretory.nativePath, blockWidth:exportData["图块宽度（像素）"], blockHeight:exportData["图块高度（像素）"]};
					dispatchCommand(cmd);
				}
			}
		}
		
		private function CloseExportProgress(msg:UpdateMsg):void
		{
			PopUpManager.removePopUp(exportProgressView);
			if (msg.msgData.success)
			{
				Alert.show("导出成功","提示");
			}
			else
			{
				Alert.show(msg.msgData.error.toString(),"错误");
			}
		}
		
		private function preview():void
		{
			Alert.show("此功能暂未实现！");
			return;
			Alert.show("如果是第一次预览或者上次导出之后内容有修改，请先导出场景,继续预览？","提示",Alert.YES|Alert.NO,app,onAlertClose);
		}
		
		private function onAlertClose(evt:CloseEvent):void
		{
			if (evt.detail == Alert.YES)
			{
				if(GlobalData.tempDir)
				{
					//实际没有导出过这个文件，暂屏蔽此功能
					var file:File = GlobalData.tempDir.resolvePath("ext/naruto/entry.swf");
					file.openWithDefaultApplication();
				}
			}
		}
	}
}