package worldBoss.model.data 
{
	
	
	/**
	 * 排行榜玩家信息
	 * @author larryhou
	 * @createTime 2014/5/16 16:38
	 */
	public class PlayerRankInfo 
	{
		/**
		 * 玩家名
		 */
		public var name:String;
		
		/**
		 * 伤害
		 */
		public var damage:uint;
		
		/**
		 * 排行榜顺序
		 */
		public var order:uint;
		
		/**
		 * 世界BOSS点券奖励
		 */
		public var coupon:uint;
		
		/**
		 * 世界BOSS勾玉奖励
		 */
		public var gems:Vector.<RewardItemInfo>;
	}

}