package worldBoss.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	/**
	 * 打开活动面板
	 */
	public class GoIntoWorldBossMapCommand extends NarutoCommand
	{
		public function GoIntoWorldBossMapCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.WORLD_BOSS;
		}
	}
}
