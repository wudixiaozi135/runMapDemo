package dungeon.model.data 
{
	import bag.data.ItemData;
	
	/**
	 * 扫荡奖励信息
	 * @author larryhou
	 * @createTime 2014/6/26 10:30
	 */
	public class UniversalWipeoutIncome 
	{
		/**
		 * 扫荡奖励所在顺序
		 */
		public var order:uint;
		
		/**
		 * 铜币奖励
		 */
		public var copper:uint;
		
		/**
		 * VIP铜币加成
		 */
		public var copperBuff:uint;
		
		/**
		 * 主角经验奖励
		 */
		public var exp:uint;
		
		/**
		 * VIP经验加成
		 */
		public var expBuff:uint;
		
		/**
		 * 忍者经验奖励
		 */
		public var ninjaExp:uint;
		
		/**
		 * VIP忍者经验加成
		 */
		public var ninjaExpBuff:uint;
		
		/**
		 * 物品奖励列表
		 */
		public var items:Vector.<ItemData>;
		
		/**
		 * 当前扫荡是否完成
		 */
		public var complete:Boolean;
		
		/**
		 * 是否为末尾追加项目
		 */
		public var suffix:Boolean;
		
		/**
		 * 扫荡奖励来源
		 */
		public var from:uint;
		
		/**
		 * 动画播放标记
		 */
		public var animateFlag:int;
		
		/**
		 * 构造函数
		 * create a [UniversalWipeOutIncome] object
		 */
		public function UniversalWipeoutIncome(from:uint) 
		{
			this.from = from;
			items = new Vector.<ItemData>();
			animateFlag = -1;
		}
	}

}