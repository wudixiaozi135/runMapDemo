package dungeon.event 
{
	import flash.events.Event;

	/**
	 * 扫荡事件
	 * @author larryhou
	 * @createTime 2014/6/24 16:24
	 */
	public class UniversalWipeoutEvent extends Event 
	{
		/**
		 * 初始化信息
		 */
		public static const INIT:String = "init";
		
		/**
		 * 扫荡开始
		 */
		public static const START:String = "start";
		
		/**
		 * 中止扫荡
		 */
		public static const CANCEL:String = "cancel";
		
		/**
		 * 扫荡完成时派发
		 */
		public static const COMPLETE:String = "complete";
		
		/**
		 * 扫荡进度通知
		 */
		public static const NOTIFY:String = "notify";
		
		/**
		 * 倒计时变更事件
		 */
		public static const CLOCK_TICK:String = "clockTick";
		
		/**
		 * 倒计时完成事件
		 */
		public static const CLOCK_COMPLETE:String = "clockComplete";
		
		/**
		 * 扫荡奖励变化时派发
		 */
		public static const INCOME_CHANGE:String = "incomeChange";
		
		/**
		 * 扫荡信息变更时派发
		 */
		public static const WIPE_OUT_CHANGE:String = "wipeOutChange";
		
		/**
		 * 事件携带数据
		 */
		public var data:*;

		/**
		 * 构造函数
		 * create a [UniversalWipeOutEvent] object
		 * @param data 用户自定义数据
		 */
		public function UniversalWipeoutEvent(type:String, data:* = null, bubbles:Boolean = false) 
		{
			this.data = data;
			super(type, bubbles, false);
			
		}

		/**
		 * 克隆事件
		 */
		public override function clone():Event 
		{
			return new UniversalWipeoutEvent(type, data, bubbles);
		}

		/**
		 * 格式化文本输出
		 */
		public override function toString():String 
		{
			return formatToString("UniversalWipeOutEvent", "type", "data", "bubbles", "cancelable", "eventPhase");
		}
	}

}