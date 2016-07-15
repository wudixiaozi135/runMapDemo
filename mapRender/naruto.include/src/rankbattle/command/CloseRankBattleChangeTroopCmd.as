package rankbattle.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class CloseRankBattleChangeTroopCmd extends NarutoCommand
	{
		public function CloseRankBattleChangeTroopCmd(commandLoadingType:int=2)
		{
			super(commandLoadingType);
		}
		override public function getPluginName():String {
			return PluginDef.RANKBATTLE;
		}
	}
}