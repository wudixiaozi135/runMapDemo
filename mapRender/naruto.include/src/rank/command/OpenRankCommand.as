package rank.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenRankCommand extends NarutoCommand
	{
		public static const RANK_TYPE_COMBAT_POWER:int = 1;
		public static const RANK_TYPE_ROLE_LEVEL:int = 2;
		public static const RANK_TYPE_RANK_BATTLE:int = 3;
		public static const RANK_TYPE_RECEIVE_FLOWER:int = 4;
		public static const RANK_TYPE_PVP:int = 5;
		
		/**OpenRankCommand常量*/
		public var rankType:int;
		/**0是总榜，1-5是分职业*/
		public var categoryType:int;
		
		public function OpenRankCommand(rankType:int=1,categoryType:int=0)
		{
			this.rankType = rankType;
			this.categoryType = categoryType;
			
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.RANK;
		}
	}
}
