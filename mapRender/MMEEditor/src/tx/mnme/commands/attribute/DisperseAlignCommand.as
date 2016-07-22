package tx.mnme.commands.attribute
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.BaseElementData;
	import tx.mnme.commands.BaseCommand;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.events.DisperseAlignEvent;
	import tx.mnme.views.Editor;

	use namespace cmd_internal;
	public class DisperseAlignCommand extends BaseCommand
	{
		protected var editor:Editor;
		protected var layerIndex:int;
		protected var event:DisperseAlignEvent;
		protected var oldElementDatas:Vector.<BaseElementData>;
		protected var newElementDatas:Vector.<BaseElementData>;
		
		public function DisperseAlignCommand(editor:Editor,layerIndex:int,event:DisperseAlignEvent,oldElementDatas:Vector.<BaseElementData>,newElementDatas:Vector.<BaseElementData>)
		{
			this.editor = editor;
			this.layerIndex = layerIndex;
			this.event = event;
			this.oldElementDatas = oldElementDatas;
			this.newElementDatas = newElementDatas;
			super();
		}
		
		override cmd_internal function execDo():void
		{
			editor.doDisperseAlgin(layerIndex,event,newElementDatas);
		}
		
		override cmd_internal function execUndo():void
		{
			editor.doDisperseAlgin(layerIndex,event,oldElementDatas);
		}
		
		override public function destroy():void
		{
			this.editor = null;
			this.event = null;
			this.newElementDatas = null;
			this.oldElementDatas = null;
		}
	}
}