package ninja.model.data 
{
	/**
	 * 忍者觉醒信息
	 * @author larryhou
	 * @createTime 2013/9/24 11:07
	 */
	public class NinjaAwakenInfo 
	{
		/**
		 * 所需主角或忍者等级
		 */
		public var need_level:uint;
		
		/**
		 * 忍者觉醒上限
		 */
		public var max_awake_level:uint;
		
		/**
		 * 所需物品的信息，NinjaAwakenItemInfo
		 */
		public var itemInfoList:Vector.<NinjaAwakenItemInfo>;
		
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
		
		/**
		 * 全属性加成
		 */
		public var allAttributeBuff:uint;
	}

}