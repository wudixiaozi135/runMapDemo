package rumorPlot.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenRumorPlotCommand extends NarutoCommand
	{
		/**
		 * 后台返回码
		 */
		public var errorCode:int;
		public function OpenRumorPlotCommand(commandLoadingType:int=2)
		{
			super(commandLoadingType);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.RUMORPLOT;
		}
	}
}
