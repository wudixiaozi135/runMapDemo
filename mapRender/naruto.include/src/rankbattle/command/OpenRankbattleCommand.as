package rankbattle.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenRankbattleCommand extends NarutoCommand
	{
		
		public var needOpenShop:Boolean;
		public var guildID:int;
		/**
		 * 
		 * @param	needOpenShop
		 * @param	guildID   44级新手引导传1 ，55级新手引导传2，
		 */
		public function OpenRankbattleCommand(needOpenShop:Boolean=false,guildID:int=0)
		{
			super();

            this.needOpenShop = needOpenShop;
			this.guildID = guildID;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.RANKBATTLE;
		}
	}
}
