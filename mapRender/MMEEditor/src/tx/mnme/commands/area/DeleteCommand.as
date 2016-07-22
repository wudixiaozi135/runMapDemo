package tx.mnme.commands.area
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.BaseElementData;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActiveArea;
	
	
	use namespace cmd_internal;
	public class DeleteCommand extends BaseAreaCommand
	{
		private var data:BaseElementData;
		
		public function DeleteCommand(area:ActiveArea, layerIndex:int,data:BaseElementData)
		{
			this.data = data;
			super(area, layerIndex);
		}
		
		override cmd_internal function execDo():void
		{
			area.doDelete(layerIndex);
		}
		
		override cmd_internal function execUndo():void
		{
			area.undoDelete(data,layerIndex);
		}
		
		override public function destroy():void
		{
			data = null;
			super.destroy();
		}
	}
}