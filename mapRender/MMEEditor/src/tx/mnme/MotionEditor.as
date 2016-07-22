package tx.mnme
{
	import tx.mnme.commands.CommandManager;
	import tx.mnme.file.ExportControl;
	import tx.mnme.file.FileControl;
	import tx.mnme.views.windows.DocumentWindow;
	import tx.mnme.views.windows.ImportActionByConfigWindow;
	import tx.mnme.views.windows.ImportActionWindow;
	import tx.mnme.views.windows.PreviewNativeWidnow;
	import tx.mnme.views.windows.ReplaceResourcesWindow;
	
	import flash.display.NativeWindow;
	import flash.events.Event;
	import flash.events.InvokeEvent;
	import flash.filesystem.File;
	import flash.system.System;
	
	import mx.controls.FlexNativeMenu;
	import mx.events.FlexNativeMenuEvent;
	import mx.managers.ISystemManager;
	import mx.managers.PopUpManager;

	public class MotionEditor
	{
		public static const VERSON:String = "Naturo.MotionEditor Beta 1.0";
		
		private var fileControl:FileControl;
		private var menuXML:XML =
			<root>
				<menuitem label="文件" lv='0'>
					<menuitem label="新建">
						<menuitem label="新建普通" cmd="create"/>
						<menuitem label="新建人物" cmd="createRole"/>
						<menuitem label="新建特效" cmd="createEffect"/>
					</menuitem>
					<menuitem type="separator"/>
					<menuitem label="打开" cmd="open" keyEquivalent="o" controlKey="true"/>
					<menuitem label="保存" cmd="save" keyEquivalent="s" controlKey="true"/>
					<menuitem label="另存为" cmd="saveAs" keyEquivalent="s" controlKey="true" shiftKey="true"/>
					<menuitem type="separator"/>
					<menuitem label="文档设置" keyEquivalent="u" controlKey="true"/>
					<menuitem type="separator"/>
					<menuitem label="关闭" cmd="close" keyEquivalent="w" controlKey="true"/>
					<menuitem label="退出" cmd="exit" keyEquivalent="q" controlKey="true"/>
				</menuitem>
				<menuitem label="编辑" lv='0'>
					<Item label="撤销" keyEquivalent="z" controlKey="true"/>
					<Item label="重做" keyEquivalent="y" controlKey="true"/>
				</menuitem>										
				<menuitem label="资源">
					<menuitem label="打开临时目录"/>
					<Item label="替换资源"/>
					<Item label="导入MME"/>
					<Item label="导入MME配置"/>
				</menuitem>										
				<menuitem label="输出" lv='0'>
					<Item label="预览" cmd="preview" keyEquivalent="&#xD;enter" controlKey="true"/>
					<Item label="预览当前动作" cmd="preview" keyEquivalent="&#xD;enter" controlKey="true" shiftKey="true"/>
					<Item label="导出" cmd="export"  keyEquivalent="s" controlKey="true" altKey="true"/>
					<Item label="导出为" cmd="export"  keyEquivalent="s" shiftKey="true" controlKey="true" altKey="true"/>
				</menuitem>
			</root>;
		
		public function MotionEditor()
		{
			super();
			fileControl = new FileControl();
		}
		
		public function init(mainApp:MMEEditor):void
		{
			Global.mainApp = mainApp;
			
			mainApp.addEventListener(InvokeEvent.INVOKE,onInvoke);
			mainApp.addEventListener(Event.CLOSE,onClose);
			mainApp.addEventListener(Event.CLOSING,onClosing)
			
			var menu:FlexNativeMenu = new FlexNativeMenu();
			menu.dataProvider = menuXML;
			menu.showRoot = false;
			menu.labelField = "@label";
			menu.keyEquivalentField = "@keyEquivalent";
			menu.addEventListener(FlexNativeMenuEvent.ITEM_CLICK,onMenuClick);
			menu.addEventListener(FlexNativeMenuEvent.MENU_SHOW,onMenuShow);
			
			mainApp.menu = menu;
		}
		
		protected function onClosing(event:Event):void
		{
			fileControl.closing(event);
		}
		
		protected function onClose(event:Event):void
		{
			fileControl.close();
			for each(var win:NativeWindow in Global.mainApp.nativeApplication.openedWindows)
			{
				win.close();
			}
		}
		
		protected function onInvoke(event:InvokeEvent):void
		{
			if(event.arguments.length > 0)
			{
				var file:File = new File(event.arguments[0]);
				if(file.exists && !file.isDirectory)
				{
					fileControl.openSystemFile(file);
				}
			}
		}
		
		private function onMenuShow(e:FlexNativeMenuEvent):void
		{
//			for each(var nmi:NativeMenuItem in Global.mainApp.menu.nativeMenu.items)
//			{
//				for each(var snmi:NativeMenuItem in nmi.submenu.items)
//				{
//					snmi.enabled = !ProgressWindow.getInstance().isShowing();
//				}
//			}
		}
		
		private function onMenuClick(e:FlexNativeMenuEvent):void
		{
			if(hasPopupWindow())
			{
				return;
			}
			switch(e.label)
			{
				case "新建普通":
					fileControl.create();
					break;
				case "新建人物":
					fileControl.createRole();
					break;
				case "新建特效":
					fileControl.createEffect();
					break;
				///////////////////////////////////////
				case "打开":
					fileControl.open();
					break;
				case "关闭":
					fileControl.close();
					break;
				case "保存":
					fileControl.save();
					break;
				case "另存为":
					fileControl.saveAs();
					break;
				case "文档设置":
					if(fileControl.getCurrentEditor())
					{
						DocumentWindow.show(fileControl.getCurrentFile(),fileControl.getCurrentEditor().getResource(),fileControl.getCurrentEditor());
					}
					break;
				case "退出":
					break;
				////////////编辑//////////////////////
				case "撤销":
					CommandManager.getInstance().undoCommand();
					break;
				case "重做":
					CommandManager.getInstance().redoCommand();
					break;
				///////////资源//////////////
				case "打开临时目录":
					fileControl.openTempDirectory();
					break;
				case "替换资源":
					if(fileControl.getCurrentEditor())
					{
						var rrw:ReplaceResourcesWindow = new ReplaceResourcesWindow();
						rrw.setMmeFile(fileControl.getCurrentEditor().getResource());
						PopUpManager.addPopUp(rrw,Global.mainApp,true);
						PopUpManager.centerPopUp(rrw);
//						PopUpManager.centerPopUp(PopUpManager.createPopUp(Global.mainApp,ReplaceResourcesWindow,true));
					}
					break;
				case "导入MME":
					if(fileControl.getCurrentEditor())
					{
						var iaw:ImportActionWindow = new ImportActionWindow();
						iaw.setCurrMmeFile(fileControl.getCurrentEditor().getResource());
						PopUpManager.addPopUp(iaw,Global.mainApp,true);
						PopUpManager.centerPopUp(iaw);
					}
					break;
				case "导入MME配置":
					if(fileControl.getCurrentEditor())
					{
						var iabcw:ImportActionByConfigWindow = new ImportActionByConfigWindow();
						iabcw.setCurrMmeFile(fileControl.getCurrentEditor().getResource());
						PopUpManager.addPopUp(iabcw,Global.mainApp,true);
						PopUpManager.centerPopUp(iabcw);
					}
					break;
				///////////////输出///////////////////////
				case "预览":
				case "预览当前动作":
//					new PreviewNativeWidnow().show(new File("C:/Users/fixchen/Desktop/新建文件夹/ninja10010.swf"),"攻击");
//					break;
					
					if(Global.previewWindow==null)
					{
						Global.previewWindow = new PreviewNativeWidnow();
						Global.previewWindow.addEventListener(Event.CLOSE,onClosePreviewNativeWindow);
					}
					
					if(fileControl.getCurrentEditor())
					{
						var currActionName:String = fileControl.getCurrentEditor().getCurrActionName();
						var outFile:File = File.createTempFile();
						new ExportControl(outFile,fileControl.getCurrentEditor(),false,true,(e.label=="预览当前动作"?currActionName:null),function():void{
							Global.previewWindow.setData(
								outFile,
								currActionName,
								fileControl.getCurrentFile(),
								fileControl.getCurrentEditor().getResource().data.external,
								e.label=="预览当前动作"
							);
						});
						Global.previewWindow.setStyle("backgroundColor",fileControl.getCurrentEditor().backgroundColor);
					}else
					{
						Global.previewWindow.setData(null,null,null,null);
					}
					Global.previewWindow.open();
					Global.previewWindow.orderToFront();
					
					break;
				case "导出":
					if(fileControl.getCurrentEditor())
					{
						outFile = fileControl.getCurrentFile();
						if(outFile)
						{
							outFile = new File(outFile.nativePath.replace(".mme",".swf"));
						}
						new ExportControl(outFile,fileControl.getCurrentEditor(),true,true,null,null);
					}
					break;
				case "导出为":
					if(fileControl.getCurrentEditor())
					{
						new ExportControl(null,fileControl.getCurrentEditor(),true,true,null,null);
					}
					break;				
			}
		}
		
		protected function onClosePreviewNativeWindow(event:Event):void
		{
			Global.previewWindow.removeEventListener(Event.CLOSE,onClosePreviewNativeWindow);
			Global.previewWindow = null;
			System.gc();
		}
		
		protected function hasPopupWindow():Boolean
		{
			return ISystemManager(Global.mainApp.root).numModalWindows>0;
			
//			if(sysmanager.numModalWindows>0)
//			{
//				return true;
//			}
//			if(sysmanager.popUpChildren.numChildren>0)
//			{
//				return true;
//			}
//			
//			var i:int = sysmanager.numChildren;
//			while(i--)
//			{
//				var o:DisplayObject = sysmanager.getChildAt(i)
//				if(o is Alert)
//				{
//					return true;
//				}
//				if(o is TitleWindow)
//				{
//					return true;
//				}
//			}
//			return false;
		}
		
	}
}