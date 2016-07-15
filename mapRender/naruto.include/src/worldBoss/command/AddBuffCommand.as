package worldBoss.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	/**
	 * 打开活动面板
	 */
	public class AddBuffCommand extends NarutoCommand
	{
		public var type:int;
		/**
		 * 
		 * @param	type  1//暗部声援buff ;  2//火影声援buff
		 */
		public function AddBuffCommand(type:int)
		{
			this.type = type;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.WORLD_BOSS;
		}
	}
}
