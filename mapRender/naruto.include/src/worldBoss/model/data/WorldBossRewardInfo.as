package worldBoss.model.data 
{
	/**
	 * 世界BOSS奖励信息
	 * @author larryhou
	 * @createTime 2014/5/16 16:57
	 */
	public class WorldBossRewardInfo 
	{
		/**
		 * 世界BOSS/id
		 */
		public var id:uint;
		
		/**
		 * 世界BOSS名字
		 */
		public var name:String;
		
		/**
		 * 是否被击杀
		 */
		public var killed:Boolean;
		
		/**
		 * 世界BOSS血量
		 */
		public var hp:uint;
		
		/**
		 * 经验奖励
		 */
		public var exp:uint;
		
		/**
		 * 经验倍率
		 */
		public var expRate:uint;
		
		/**
		 * 铜币奖励
		 */
		public var copper:uint;
		
		/**
		 * 铜币倍率
		 */
		public var copperRate:uint;
		
		/**
		 * 点券奖励
		 */
		public var coupon:uint;
		
		/**
		 * 勾玉奖励
		 */
		public var gems:Vector.<RewardItemInfo>;
		
		/**
		 * 自己的排行信息
		 */
		public var rank:PlayerRankInfo;
		
		/**
		 * BOSS击杀者
		 */
		public var killer:PlayerRankInfo;
		
		/**
		 * BOSS气绝者
		 */
		public var fainter:PlayerRankInfo;
		
		/**
		 * 排行榜玩家
		 */
		public var ranklist:Vector.<PlayerRankInfo>;
	}

}