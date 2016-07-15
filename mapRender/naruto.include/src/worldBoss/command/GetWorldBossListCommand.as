package worldBoss.command 
{
	import base.NarutoCommand;
	import def.PluginDef;
	/**
	 * ...
	 * @author Devin Lee
	 */
	public class GetWorldBossListCommand  extends NarutoCommand
	{
		public function GetWorldBossListCommand()
		{
			
		}
		
		override public function getPluginName():String
		{
			return PluginDef.WORLD_BOSS;
		}
	}

}