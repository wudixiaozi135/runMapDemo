package dungeon.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class OpenTeamDungeonPanelCommand extends Command
	{
		public function OpenTeamDungeonPanelCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.DUNGEON;
		}
	}
}