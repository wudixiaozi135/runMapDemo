package worldBoss.command
{
	import base.NarutoCommand;
	import def.PluginDef;
	import worldBoss.model.data.WorldBossRewardInfo;
	
	/**
	 * 打开活动面板
	 */
	public class ShowBossRewardCommand extends NarutoCommand
	{
		/**
		 * 世界BOSS结算数据
		 */
		public var data:WorldBossRewardInfo;
		
		public function ShowBossRewardCommand(data:WorldBossRewardInfo)
		{
			this.data = data;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.WORLD_BOSS;
		}
	}
}
