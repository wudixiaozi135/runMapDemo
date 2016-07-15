package dungeon.event 
{
	import flash.events.Event;

	/**
	 * 副本事件类
	 * @author larryhou
	 * @createTime 2014/3/21 13:32
	 */
	public class DungeonEvent extends Event 
	{
		/**
		 * 普通变更事件
		 */
		public static const CHANGE:String = "change";
		
		/**
		 * 剩余次数变更时派发
		 */
		public static const REMAIN_NUM_CHANGE:String = "remainNumChange";
		
		/**
		 * 当前副本变更时派发
		 */
		public static const CURRENT_DUNGEON_CHANGE:String = "currentDungeonChange";
		
		/**
		 * 精英副本数据发生变更时派发
		 */
		public static const ELITE_DUNGEON_CHANGE:String = "eliteDungeonChange";
		
		/**
		 * 剧情副本数据变更时派发
		 */
		public static const PLOT_DUNGEON_CHANGE:String = "plotDungeonChange";
		
		/**
		 * 丰饶之间日常副本数据变更时派发
		 */
		public static const FOISON_DUNGEON_CHANGE:String = "foisonDungeonChange";
		
		/**
		 * 藏宝之间日常副本数据变更时派发
		 */
		public static const TREASURE_DUNGEON_CHANGE:String = "treasureDungeonChange";
		
		/**
		 * 预告副本数据发生变更时派发
		 */
		public static const FORCAST_DUNGEON_CHANGE:String = "forcastDungeonChange";
		
		/**
		 * 选择章节时派发
		 */
		public static const SELECT_CHAPTER:String = "selectChapter";
		
		/**
		 * 扫荡进度事件
		 */
		public static const WIPE_OUT_CHANGE:String = "wipeOutChange";
		
		/**
		 * 扫荡奖励变更时派发
		 */
		public static const WIPE_OUT_INCOME_CHANGE:String = "wipeOutIncomeChange";
		
		/**
		 * 挑战次数变更时派发
		 */
		public static const PASS_COUNT_CHANGE:String = "passCountChange";
		
		/**
		 * 事件携带数据
		 */
		public var data:*;

		/**
		 * 构造函数
		 * create a [DungeonEvent] object
		 * @param data 用户自定义数据
		 */
		public function DungeonEvent(type:String, data:* = null, bubbles:Boolean = false) 
		{
			this.data = data;
			super(type, bubbles, false);
			
		}

		/**
		 * 克隆事件
		 */
		public override function clone():Event 
		{
			return new DungeonEvent(type, data, bubbles);
		}

		/**
		 * 格式化文本输出
		 */
		public override function toString():String 
		{
			return formatToString("DungeonEvent", "type", "data", "bubbles", "cancelable", "eventPhase");
		}
	}

}