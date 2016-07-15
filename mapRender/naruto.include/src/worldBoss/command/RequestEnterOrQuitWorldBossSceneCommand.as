package worldBoss.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;

	/**
	 * 请求进入或者退出世界BOSS场景
	 */
	public class RequestEnterOrQuitWorldBossSceneCommand extends NarutoCommand
	{
		public var type:int;
		
		public function RequestEnterOrQuitWorldBossSceneCommand(type:int)
		{
			super();
			this.type = type;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.WORLD_BOSS;
		}
	}
}