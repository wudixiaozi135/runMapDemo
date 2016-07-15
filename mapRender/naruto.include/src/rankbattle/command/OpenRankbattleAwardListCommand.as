package rankbattle.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenRankbattleAwardListCommand extends NarutoCommand
	{
		
		override public function getPluginName():String
		{
			return PluginDef.RANKBATTLE;
		}
	}
}
