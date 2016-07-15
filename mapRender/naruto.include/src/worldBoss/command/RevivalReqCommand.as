package worldBoss.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	/**
	 * 打开活动面板
	 */
	public class RevivalReqCommand extends NarutoCommand
	{
		public function RevivalReqCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.WORLD_BOSS;
		}
	}
}
