package tx.sce.proxy
{
	import tx.sce.command.Command;
	import tx.sce.tools.Global;
	import tx.sce.updateMsg.UpdateMsg;
	import tx.sce.view.LayersView;
	import tx.sce.view.MyMxTreeItemRenderer;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.controls.treeClasses.TreeItemRenderer;
	import mx.core.ClassFactory;
	import mx.core.mx_internal;
	import mx.events.DragEvent;
	import mx.events.FlexEvent;
	import mx.events.ListEvent;
	
	import spark.components.CheckBox;
	import spark.components.WindowedApplication;
	import spark.events.IndexChangeEvent;

	public class LayersProxy extends Proxy
	{
		private var layersView:LayersView;
		
		public function LayersProxy(winapp:MapEditor)
		{
			app = winapp;
			layersView = new LayersView();
			layersView.visible = false;
			app.rightBox.addChildAt(layersView,app.rightBox.numChildren);
			var render:ClassFactory = new ClassFactory(MyMxTreeItemRenderer);
			layersView.layers.itemRenderer = render;
			layersView.layers.dragEnabled = true;
			layersView.layers.dropEnabled = true;
			
			layersView.layers.addEventListener(DragEvent.DRAG_START,onDragStart);
			layersView.layers.addEventListener(DragEvent.DRAG_DROP,onDragDrop);
		}
		
		override protected function handleMsg(msg:UpdateMsg):void
		{
			switch (msg.type)
			{
				case UpdateMsg.SHOW_NEW_LAYERS_VIEW:
					setLayerInfos(msg.msgData.xml);
					layersView.visible = true;
					break;
				
				case UpdateMsg.CLOSE_VIEW:
					layersView.visible = false;
					//其他清除内容的操作
					break;
			}
		}
		
		private function setLayerInfos(infoArr:XML):void
		{			
			layersView.layers.dataProvider = infoArr;
			layersView.layers.labelField = "@label";
			layersView.layers.showRoot = false;
			layersView.layers.addEventListener(ListEvent.CHANGE,onListChange);
			layersView.layers.addEventListener(FlexEvent.VALUE_COMMIT,onCommit);
			layersView.layers.addEventListener(MouseEvent.CLICK,onCheckBox);
			function onCommit(evt:FlexEvent):void
			{
				layersView.layers.removeEventListener(FlexEvent.VALUE_COMMIT,onCommit);
				layersView.layers.selectedIndex = 0;        //如果不是在valueCommit事件发生之后改变这个index值，那么selectedItem的值不会跟着变，我也不知道为什么
				onListChange(null);
			}
		}
			
		protected function onListChange(event:ListEvent):void
		{
			var cmd:Command;
			cmd = new Command(Command.SELECT_LAYER,null,false);
			if (layersView.layers.selectedItem == null) return;
			if (layersView.layers.selectedItem.parent().parent())
			{
				//selectedItem is pic
				cmd.commandData = {layerName:layersView.layers.selectedItem.parent().@name, index:layersView.layers.selectedItem.childIndex()};
			}
			else
			{
				cmd.commandData = {layerName:layersView.layers.selectedItem.@name, index:-1};
			}
			dispatchCommand(cmd);
		}
		
		private function onCheckBox(evt:MouseEvent):void
		{
			var cmd:Command = new Command(Command.SET_SCENE_ITEM_CONFIG,null,false);
			if (!(evt.target is CheckBox)) return;
			if (!(evt.target.parent.parent.data.parent().parent())) //target.parent是hbox，再parent是itemrenderer，data是xml，如果data没有两层parent，说明是layer，不是pic
			{
				//trace("layer");
				cmd.commandData = {layerName:evt.target.parent.parent.data.@name, index:-1, checkBoxId:evt.target.id, value:evt.target.selected}
			}
			else
			{
				//trace("pic");
				cmd.commandData = {layerName:evt.target.parent.parent.data.parent().@name, index:evt.target.parent.parent.data.childIndex(), checkBoxId:evt.target.id, value:evt.target.selected}
			}
			dispatchCommand(cmd);
		}
		
		private function onDragStart(evt:DragEvent):void
		{
			if (String(layersView.layers.selectedItem.@isBranch) == "true")
				evt.preventDefault();
		}
		
		private function onDragDrop(evt:DragEvent):void
		{
			evt.preventDefault();
			layersView.layers.hideDropFeedback(evt);
			
			if (layersView.layers.mx_internal::_dropData.parent != null)
			{			
				var cmd:Command = new Command(Command.DRAG_DROP_LAYER_ITEM);
				var item:XML = layersView.layers.selectedItem as XML;
				var newParent:XML = layersView.layers.mx_internal::_dropData.parent;
				
				if (newParent.@name == "GridLayer") 
				{
					Alert.show("不能把图片添加到网格层！","错误");
					return;
				}

				if (Global.getExtension(item.@name) != "swf" && newParent.@name == "NPCLayer")
				{
					Alert.show(item.@name+"是图片资源，请将其添加到前景、中景或背景层！","错误");
					return;
				}
				if (Global.getExtension(item.@name) == "swf" && newParent.@name != "NPCLayer")
				{
					Alert.show(item.@name+"是NPC资源，请将其添加到NPC层！","错误");
					return;
				}

				
				cmd.commandData = {oldLayerName:item.parent().@name, oldIndex:item.childIndex(), newLayerName:newParent.@name, newIndex:layersView.layers.mx_internal::_dropData.index};
				if (cmd.commandData.oldLayerName == cmd.commandData.newLayerName)
				{
					if ((cmd.commandData.newIndex == cmd.commandData.oldIndex) || (cmd.commandData.newIndex == cmd.commandData.oldIndex+1)) return;
					if (cmd.commandData.newIndex > cmd.commandData.oldIndex) cmd.commandData.newIndex--;
				}
				
				dispatchCommand(cmd);
				
			}
		}
	}
}