package worldBoss.command 
{
	import base.NarutoCommand;
	import def.PluginDef;
	/**
	 * 查询基础信息
	 * @author Devin Lee
	 */
	public class GetWorldBossStatusCommand  extends NarutoCommand
	{
		
		public function GetWorldBossStatusCommand() 
		{
			
		}
		
		override public function getPluginName():String
		{
			return PluginDef.WORLD_BOSS;
		}
	}

}