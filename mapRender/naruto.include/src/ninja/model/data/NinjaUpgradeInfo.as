package ninja.model.data 
{
	/**
	 * 忍者强化升级信息
	 * @author larryhou
	 * @createTime 2013/9/24 11:08
	 */
	public class NinjaUpgradeInfo 
	{
		/**
		 * 最大强化等级
		 */
		public var levelMax:uint;
		
		/**
		 * 所需卡牌id
		 */
		public var card:uint;
		
		/**
		 * 所需卡牌数量
		 */
		public var needNum:uint;
		
		/**
		 * 已有卡牌数量
		 */
		public var hasNum:uint;
		
		/**
		 * 生命加值
		 */
		public var lifeBuff:uint;
		
		/**
		 * 攻击加值
		 */
		public var attackBuff:uint;
		
		/**
		 * 防御加值
		 */
		public var defenseBuff:uint;
		
		/**
		 * 忍术加值
		 */
		public var ninjutsuBuff:uint;
		
		/**
		 * 抗性加值
		 */
		public var resistanceBuff:uint;
		
		/**
		 * 生命潜力加值
		 */
		public var lifeGrowthBuff:uint;
		
		/**
		 * 攻击潜力加值
		 */
		public var attackGrowthBuff:uint;
		
		/**
		 * 防御潜力加值
		 */
		public var defenceGrowthBuff:uint;
		
		/**
		 * 忍术潜力加值
		 */
		public var ninjutsuGrowthBuff:uint;
		
		/**
		 * 抗性潜力加值
		 */
		public var resistanceGrowthBuff:uint;		
		
	}

}