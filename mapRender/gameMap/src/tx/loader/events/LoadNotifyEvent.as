package tx.loader.events 
{
	import flash.events.Event;

	/**
	 * 加载器全局通知
	 * @author larryhou
	 * @createTime 2014/10/11 17:08
	 */
	public class LoadNotifyEvent extends Event 
	{
		/**
		 * 懒加载全部完成
		 */
		public static const LAZY_TASK_COMPLETE:String = "lazyTaskComplete";
		
		/**
		 * 高优先级资源加载完成时派发
		 */
		public static const MAIN_TASK_COMPLETE:String = "mainTaskComplete";
		
		/**
		 * 所有加载完成时派发
		 */
		public static const ALL_TASK_COMPLETE:String = "allTaskComplete";
		
		/**
		 * 低优先级开始加载
		 */
		public static const LAZY_TASK_START:String = "lazyTaskStart";
		
		/**
		 * 高优先级开始加载
		 */
		public static const MAIN_TASK_START:String = "mainTaskStart";
		
		/**
		 * 事件携带数据
		 */
		public var data:*;
		
		/**
		 * 构造函数
		 * create a [LoadNotifyEvent] object
		 * @param data 用户自定义数据
		 */
		public function LoadNotifyEvent(type:String, data:* = null, bubbles:Boolean = false) 
		{
			this.data = data;
			super(type, bubbles, false);
			
		}

		/**
		 * 克隆事件
		 */
		public override function clone():Event 
		{
			return new LoadNotifyEvent(type, data, bubbles);
		}

		/**
		 * 格式化文本输出
		 */
		public override function toString():String 
		{
			return formatToString("LoadNotifyEvent", "type", "data", "bubbles", "cancelable", "eventPhase");
		}
	}

}