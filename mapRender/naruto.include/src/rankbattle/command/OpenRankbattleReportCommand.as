package rankbattle.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenRankbattleReportCommand extends NarutoCommand
	{
		
		override public function getPluginName():String
		{
			return PluginDef.RANKBATTLE;
		}
	}
}
