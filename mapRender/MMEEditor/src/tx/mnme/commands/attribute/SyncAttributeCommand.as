package tx.mnme.commands.attribute
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.ElementData;
	import tx.mnme.commands.BaseCommand;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.events.AttributeEvent;
	import tx.mnme.views.Editor;
	
	use namespace cmd_internal;
	public class SyncAttributeCommand extends BaseCommand
	{
		protected var editor:Editor;
		protected var layerIndex:int;
		protected var event:AttributeEvent;
		protected var oldElementDatas:Vector.<ElementData>;
		
		public function SyncAttributeCommand(editor:Editor,layerIndex:int,event:AttributeEvent,oldElementDatas:Vector.<ElementData>)
		{
			this.editor = editor;
			this.layerIndex = layerIndex;
			this.event = event;
			this.oldElementDatas = oldElementDatas;
			
			super();
		}
		
		override cmd_internal function execDo():void
		{
			editor.doSync(layerIndex,event);
		}
		
		override cmd_internal function execUndo():void
		{
			editor.undoSync(layerIndex,event,oldElementDatas);
		}
		
		override public function destroy():void
		{
			this.editor = null;
			this.event = null;
			this.oldElementDatas = null;
		}
	}
}