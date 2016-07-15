package player.commands
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class BasePlayerCommand extends NarutoCommand
	{
		public function BasePlayerCommand(commandLoadingType:int = 2)
		{
			super(commandLoadingType);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.PLAYER;
		}
	}
}