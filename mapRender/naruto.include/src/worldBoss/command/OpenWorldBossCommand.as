package worldBoss.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	/**
	 * 打开活动面板
	 */
	public class OpenWorldBossCommand extends NarutoCommand
	{
		public function OpenWorldBossCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.WORLD_BOSS;
		}
	}
}
