package dungeon.data
{
	import cfgData.dataStruct.DungeonInfoCFG;

	public class DungeonInfo
	{
		public var id:int;
		public var type:int;    //DungeonType中的类型
		public var needPower:int;   //副本所需要的体力
		public var openLevel:int;  //副本开启等级
		public var bestEvaluate:int;  //最好评价
		
		// 精英副本专用字段
		public var passCount:int;  // 刷新周期通关次数
		public var passUpperCount:uint; // 通过最大次数
		public var recommended:Boolean; // 是否推荐玩家挑战
		public var resetPassCountPrice:int; // 重置通关次数价格：元宝、点券
		public var resetCount:uint;	// 已重置次数
		public var resetCountUpper:uint;	// 最大重置次数
		
		// 特殊副本专用
		public var unlocked:Boolean;			// 是否开启
		public var daysUnlock:Vector.<uint>;	// 开放日0~6表示周日到周六
		public var cdtime:uint;					// 冷却时间(相对值)：秒
		public var levelsUnlock:Vector.<uint>;	// 简单、普通、困难模式开放等级
		
		// 扩展字段
		//*************************************************
		/**
		 * 副本配置信息
		 */
		public var cfg:DungeonInfoCFG;
		
		/**
		 * 是否显示引导指示器
		 */
		public var showGuideIndicator:Boolean;
		
		/**
		 * 高亮选中态是否展示
		 */
		public var highlight:Boolean;
		
		/**
		 * 下一个副本信息
		 */
		public var next:DungeonInfo;
		
		/**
		 * 上一个副本信息
		 */
		public var prev:DungeonInfo;
		
		public function DungeonInfo()
		{
			
		}
	}
}