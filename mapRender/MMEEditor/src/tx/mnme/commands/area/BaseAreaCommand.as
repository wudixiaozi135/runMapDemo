package tx.mnme.commands.area
{
	import tx.mnme.commands.BaseCommand;
	import tx.mnme.views.panels.ActiveArea;
	
	public class BaseAreaCommand extends BaseCommand
	{
		protected var area:ActiveArea;
		protected var layerIndex:int = -1;
		
		public function BaseAreaCommand(area:ActiveArea,layerIndex:int)
		{
			super();
			this.area = area;
			this.layerIndex = layerIndex;
		}
		
		
		override public function destroy():void
		{
			area = null;
		}
	}
}