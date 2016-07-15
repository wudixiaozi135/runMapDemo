package growUpStronger.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class CloseGrowUpStrongerCommand extends NarutoCommand
	{
		public function CloseGrowUpStrongerCommand(commandLoadingType:int=2)
		{
			super(commandLoadingType);
		}
		override public function getPluginName():String
		{
			return PluginDef.GROWUPSTRONGER;
		}
	}
}