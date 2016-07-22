package tx.mnme.commands.area
{
	import tx.mnme.Global;
	import tx.mnme.commands.BaseCommand;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActiveArea;
	import tx.mnme.views.panels.activearea.BaseItem;

	use namespace cmd_internal;
	
	public class SelectItemCommand extends BaseAreaCommand
	{
		protected var prevLayerIndex:int = -1;
		
		public function SelectItemCommand(area:ActiveArea,layerIndex:int,prevLayerIndex:int)
		{
			this.prevLayerIndex = prevLayerIndex;
			super(area,layerIndex);
		}
		
		override cmd_internal function execDo():void
		{
			area.selectItemByLayerIndex(layerIndex);
		}
		
		override cmd_internal function execUndo():void
		{
			area.selectItemByLayerIndex(prevLayerIndex);
		}
		
	}
}