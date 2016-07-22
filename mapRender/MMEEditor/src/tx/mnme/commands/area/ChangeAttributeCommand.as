package tx.mnme.commands.area
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.BaseElementData;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActiveArea;
	
	use namespace cmd_internal;
	
	public class ChangeAttributeCommand extends BaseAreaCommand
	{
		private var oldData:BaseElementData;
		private var data:BaseElementData;
		
		public function ChangeAttributeCommand(area:ActiveArea, layerIndex:int,oldData:BaseElementData,data:BaseElementData)
		{
			this.oldData = oldData;
			this.data = data;
			
			super(area, layerIndex);
		}
		
		override cmd_internal function execDo():void
		{
			area.doChangeSelectedItemAttribute(layerIndex,data);
		}
		
		override cmd_internal function execUndo():void
		{
			area.undoChangeSelectedItemAttribute(layerIndex,oldData);
		}
		
		override public function destroy():void
		{
			oldData = null;
			data = null;
			super.destroy();
		}
		
	}
}