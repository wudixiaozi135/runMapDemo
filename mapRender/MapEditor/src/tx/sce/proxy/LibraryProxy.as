package tx.sce.proxy
{
	import tx.sce.command.Command;
	import tx.sce.tools.Global;
	import tx.sce.updateMsg.UpdateMsg;
	import tx.sce.view.InputWindow;
	import tx.sce.view.LibraryView;
	
	import flash.desktop.ClipboardFormats;
	import flash.desktop.NativeDragManager;
	import flash.display.Bitmap;
	import flash.display.NativeMenu;
	import flash.display.NativeMenuItem;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.FileListEvent;
	import flash.events.MouseEvent;
	import flash.events.NativeDragEvent;
	import flash.filesystem.File;
	import flash.net.FileFilter;
	
	import mx.collections.XMLListCollection;
	import mx.controls.Alert;
	import mx.controls.FlexNativeMenu;
	import mx.controls.treeClasses.TreeItemRenderer;
	import mx.core.DragSource;
	import mx.core.UIComponent;
	import mx.events.DragEvent;
	import mx.events.FlexEvent;
	import mx.events.ListEvent;
	import mx.managers.DragManager;
	
	import spark.components.WindowedApplication;

	public class LibraryProxy extends Proxy
	{
		private var libraryView:LibraryView;
		private var currentLayer:String;
		private var oldSourceXml:XML;  //用于保存拖拽变换时改变前的xml；
		
		public function LibraryProxy(winapp:MapEditor)
		{
			app = winapp;
		}
		
				
		private function onMenuSelected(event:Event):void
		{
			var item:NativeMenuItem = event.target as NativeMenuItem;
			switch(item.label)
			{
				case "导入":
					addFile();
					break;
				
				case "删除":
					deleteItems();
					break;
				
				case "新建文件夹":
					newFolder();
					break;
				
				case "重命名文件夹":
					renameFolder();
					break;
				
				case "背景层":
					addToScene(this, libraryView.tree.selectedItems,"BackGround");
					break;
				
				case "中间层":
					addToScene(this, libraryView.tree.selectedItems,"MiddleGround");
					break;
				
				case "前景层":
					addToScene(this, libraryView.tree.selectedItems,"FrontGround");
					break;
				
				case "NPC层":
					addToScene(this, libraryView.tree.selectedItems,"NPCLayer");
					break;
			}
		}
				
		override protected function handleMsg(msg:UpdateMsg):void
		{
			switch (msg.type)
			{
				case (UpdateMsg.SHOW_NEW_LIBRARY_VIEW):					
					if(!libraryView)
					{
						libraryView = new LibraryView();
						libraryView.addEventListener(FlexEvent.CREATION_COMPLETE,onLibAdded);
						app.rightBox.addChildAt(libraryView,0);
					}
					else
					{
						libraryView.visible = true;
					}
					break;
				
				case UpdateMsg.SET_TREE_SOURCE:
					setTreeSource(msg.msgData["libXml"]);
					break;
				
				case UpdateMsg.SET_PREVIEW_PIC:
					libraryView.prevImg.source = msg.msgData.bitmap;
					break;
				
				case UpdateMsg.SELECTED_LAYER:
					this.currentLayer = msg.msgData.layerName;
					break;
				
				case UpdateMsg.CLOSE_VIEW:
					if (libraryView)
					{
						libraryView.prevImg.source = null;
						libraryView.tree.dataProvider = null;
						libraryView.visible = false;
					}
					break;
			}
		}
		
		private function onLibAdded(event:FlexEvent):void
		{
			var menu:NativeMenu;
			
			libraryView.removeEventListener(FlexEvent.ADD,onLibAdded);
			libraryView.tree.addEventListener(MouseEvent.MOUSE_DOWN,setSelectedItem);
			libraryView.tree.addEventListener(MouseEvent.RIGHT_MOUSE_DOWN,setSelectedItem);
			libraryView.tree.addEventListener(DragEvent.DRAG_COMPLETE,onDragComplete);
			libraryView.tree.addEventListener(DragEvent.DRAG_DROP,onDragDrop);
			libraryView.tree.addEventListener(NativeDragEvent.NATIVE_DRAG_ENTER,treeNativeDragHandler);
			libraryView.tree.addEventListener(NativeDragEvent.NATIVE_DRAG_DROP,treeNativeDragHandler);
			libraryView.tree.addEventListener(NativeDragEvent.NATIVE_DRAG_EXIT,treeNativeDragHandler);
			libraryView.tree.addEventListener(ListEvent.ITEM_DOUBLE_CLICK,onItemDoubleClick);
			libraryView.tree.doubleClickEnabled = true;
			libraryView.tree.allowMultipleSelection = true;
			libraryView.tree.dragEnabled = true;
			libraryView.tree.dropEnabled = true;
			
			var menuXML:XML = <root>
							  	<menuitem label="导入" name="导入" enabled="true" />
								<menuitem label="添加到" name="添加到" enabled="false">
									<Item label="背景层" name="背景层"/>
									<Item label="中间层" name="中间层"/>
									<Item label="前景层" name="前景层"/>
									<Item label="NPC层" name="NPC层"/>
								</menuitem>
								<menuitem label="删除" name="删除" enabled="false" />
								<menuitem label="新建文件夹" name="新建文件夹" enabled="true" />
								<menuitem label="重命名文件夹" name="重命名文件夹" enabled="true" />
							</root>;
			
			var fnativeMenu:FlexNativeMenu = new FlexNativeMenu();
			fnativeMenu.dataProvider = menuXML;
			fnativeMenu.labelField = "@label";
			fnativeMenu.showRoot = false;
			libraryView.tree.contextMenu = fnativeMenu.nativeMenu;
			libraryView.tree.contextMenu.addEventListener(Event.SELECT,onMenuSelected);
			libraryView.tree.contextMenu.addEventListener(Event.DISPLAYING,onDisplayMenu);
			
		}
				
		protected function setSelectedItem(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			if (!(event.target.parent is TreeItemRenderer))
			{
				libraryView.tree.selectedItem = null;
			}
			else
			{
				libraryView.tree.selectedIndex =  event.target.parent.listData.rowIndex + libraryView.tree.verticalScrollPosition;
				updateSelectedPic();
			}
		}
		
		private function setTreeSource(xml:XML):void
		{
			var xmllc:XMLListCollection = new XMLListCollection(xml.item);
			libraryView.tree.dataProvider = xmllc;
			libraryView.tree.labelField = "@name";
		}
		
		private function onDisplayMenu(event:Event):void
		{
			if (!libraryView.tree.contextMenu.getItemAt(0).name)  //如果还没有命名
				Global.setNativeMenuItemName(libraryView.tree.contextMenu);
			libraryView.tree.contextMenu.getItemByName("删除").enabled = canDeleteImage();
			libraryView.tree.contextMenu.getItemByName("重命名文件夹").enabled =  isBranch();
			libraryView.tree.contextMenu.getItemByName("添加到").enabled =  isFile();
		}
		
		private function canDeleteImage():Boolean
		{
			return libraryView.tree.selectedItems && libraryView.tree.selectedItems.length>0;
		}
		
		private function isBranch():Boolean
		{
			return libraryView.tree.selectedItem && String(libraryView.tree.selectedItem.@isBranch) == "true";
		}
		
		private function isFile():Boolean
		{
			return libraryView.tree.selectedItem && String(libraryView.tree.selectedItem.@isBranch) == "false";
		}
		
		protected function addFile():void
		{
			var file:File = new File();
			file.addEventListener(FileListEvent.SELECT_MULTIPLE,onSelectMultiple);
			file.browseForOpenMultiple("请选择图片",[new FileFilter("素材文件（*.jpg;*.png;*.swf）", "*.jpg;*.png;*.swf")]);
		}
		
		protected function onSelectMultiple(event:FileListEvent):void
		{
			if(event)
			{
				event.currentTarget.removeEventListener(FileListEvent.SELECT_MULTIPLE,onSelectMultiple);
			}
			var cmd:Command = new Command(Command.ADD_FILES_TO_LIBRARY);
			cmd.commandData={targetId:getSelectedItemParentId(), files:event.files};
			dispatchCommand(cmd);
		}
		
		private function newFolder():void
		{
			var dv:String = "新建文件夹";
			while(true)
			{
				if(existedFolder(dv))
				{
					var i:int = int(dv.substr(5));
					dv = "新建文件夹"+(i+1);
				}else
				{
					break;
				}
			}
			InputWindow.show("增加文件夹",dv,app,function(iw:InputWindow):void{
				if(existedFolder(iw.value))
				{
					Alert.show(iw.value + " 已存在","增加文件夹失败!");
				}else
				{
					var cmd:Command = new Command(Command.NEW_FOLDER);
					cmd.commandData = {targetId:getSelectedItemParentId(), name:iw.value};
					dispatchCommand(cmd);
				}
			},null);
		}
		
		private function existedFolder(name1:String):Boolean
		{
			var itemParent:XML = getSelectedItemParent();
			if (itemParent ==  null)
			{
				for each(var item:XML in libraryView.tree.dataProvider as XMLListCollection)
				{
					var name:String = item.@name;
					if(name==name1)
					{
						return true;
					}
				}
				return false;
			}
			else
			{
				var xmllist:XMLList = itemParent.item.(@name==name1);
				return xmllist.length()!=0;
			}
			
		}
		
		private function getSelectedItemParent():XML
		{
			var itemParent:XML = libraryView.tree.selectedItem as XML;
			if(itemParent && String(itemParent.@isBranch)!="true")
			{
				itemParent = libraryView.tree.selectedItem.parent();
			}
			return itemParent;
		}
		
		private function getSelectedItemParentId():int
		{
			var itemParent:XML = libraryView.tree.selectedItem as XML;
			if (!itemParent) return -1;
			if ( String(itemParent.@isBranch)!="true" )
			{
				itemParent = libraryView.tree.selectedItem.parent();
			}
			return itemParent.@id;
		}
		
		private function updateSelectedPic():void
		{
			var cmd:Command = new Command(Command.PREVIEW_PIC,null,false);
			cmd.commandData = {target:libraryView.tree.selectedItem as XML};
			dispatchCommand(cmd);
		}
		
		private function deleteItems():void
		{
			var itemArray:Array = libraryView.tree.selectedItems;
			var cmd:Command = new Command(Command.DEL_FILES_OR_FOLDERS);
			cmd.commandData = {items:itemArray};
			dispatchCommand(cmd);
		}
		
		private function renameFolder():void
		{
			var dv:String = libraryView.tree.selectedItem.@name;
			InputWindow.show("重命名文件夹",dv,app,function(iw:InputWindow):void{
				if(existedFolder(iw.value))
				{
					Alert.show(iw.value + " 已存在","重命名文件夹失败!");
				}else
				{
					var cmd:Command = new Command(Command.RENAME_FOLDER);
					cmd.commandData = {targetId:getSelectedItemParentId(), name:iw.value};
					dispatchCommand(cmd);
				}
			},null);
		}
				
		public static function addToScene(dispatcher:Proxy, picArr:Array, layerName:String, posX:int = 0, posY:int = 0):void
		{
			if (layerName == "GridLayer") 
			{
				Alert.show("不能把图片添加到网格层！","错误");
				return;
			}
			for each (var pic:XML in picArr)
			{
				if (Global.getExtension(pic.@name) != "swf" && layerName == "NPCLayer")
				{
					Alert.show(pic.@name+"是图片资源，请将其添加到前景、中景或背景层！","错误");
					return;
				}
				if (Global.getExtension(pic.@name) == "swf" && layerName != "NPCLayer")
				{
					Alert.show(pic.@name+"是NPC资源，请将其添加到NPC层！","错误");
					return;
				}
			}
			//目前只能添加一张图片
			//pic = picArr[0];
			var cmd:Command = new Command(Command.ADD_PIC_TO_SCENE);
			var arr:Array = new Array();
			for each (pic in picArr)
			{
				arr.push({picName:pic.@name, x:posX, y:posY, layerName:layerName});
			}
			cmd.commandData = {picArr:arr, layerName:layerName};
			dispatcher.dispatchCommand(cmd);
		}
		
		private function onDragComplete(evt:DragEvent):void
		{
			if(evt.action == DragManager.MOVE && evt.relatedObject != libraryView.tree)
			{
				evt.preventDefault();
			}
			/*if(evt.action == DragManager.COPY && evt.relatedObject == libraryView.tree)
			{
				//evt.preventDefault();
			}*/
			if (evt.relatedObject == libraryView.tree)
			{
				var newSourceXml:XML = new XML(((libraryView.tree.dataProvider as XMLListCollection).source[0].parent() as XML).toXMLString());
				if (newSourceXml.toXMLString() != oldSourceXml.toXMLString())
				{
					var cmd:Command = new Command(Command.CHANGE_LIBRARY_ITEM_ORDER);
					cmd.commandData = {oldXml:oldSourceXml, newXml:newSourceXml};
					dispatchCommand(cmd);
				}
			}
		}
		
		private function onDragDrop(evt:DragEvent):void
		{
			if (evt.dragInitiator == libraryView.tree)
			{
				if (evt.action == DragManager.COPY) evt.action = DragManager.MOVE;
				oldSourceXml = new XML(((libraryView.tree.dataProvider as XMLListCollection).source[0].parent() as XML).toXMLString());
			}
		}
		
		protected function treeNativeDragHandler(event:NativeDragEvent):void
		{
			switch(event.type)
			{
				case NativeDragEvent.NATIVE_DRAG_ENTER:
					if(event.relatedObject == null)
					{
						libraryView.tree.dragEnabled = false;
						libraryView.tree.dropEnabled = false;
						libraryView.tree.dragMoveEnabled = false;
						
						var arr:Array = event.clipboard.getData(ClipboardFormats.FILE_LIST_FORMAT) as Array;
						for each(var f:File in arr)
						{
							if(f.extension == "jpg" || f.extension == "png")
							{
								NativeDragManager.acceptDragDrop(libraryView.tree);
								break;
							}
						}
					}
					break;
				case NativeDragEvent.NATIVE_DRAG_DROP:
					if(event.target == libraryView.tree && event.relatedObject == null)
					{
						
						arr = event.clipboard.getData(ClipboardFormats.FILE_LIST_FORMAT) as Array;
						var files:Array = [];
						for each(f in arr)
						{
							if(f.extension == "jpg" || f.extension == "png")
							{
								files.push(f);
							}
						}
						if(files.length>0)
						{
							var cmd:Command = new Command(Command.ADD_FILES_TO_LIBRARY);
							cmd.commandData={targetId:getSelectedItemParentId(), files:files};
							dispatchCommand(cmd);
						}
						libraryView.tree.dragEnabled = true;
						libraryView.tree.dropEnabled = true;
						libraryView.tree.dragMoveEnabled = true;
					}
					break;
				case NativeDragEvent.NATIVE_DRAG_EXIT:
					if(event.target == libraryView.tree && event.relatedObject == null)
					{
						libraryView.tree.dragEnabled = true;
						libraryView.tree.dropEnabled = true;
						libraryView.tree.dragMoveEnabled = true;
					}
					break;	
			}
		}
		
		private function onItemDoubleClick(evt:ListEvent):void
		{
			var cmd:Command = new Command(Command.EDIT_LIBRARY_ITEM,null,false);
			cmd.commandData= {xml:libraryView.tree.selectedItem};
			dispatchCommand(cmd);
		}
		
	}
}