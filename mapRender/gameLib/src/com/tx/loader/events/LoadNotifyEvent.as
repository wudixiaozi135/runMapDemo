package com.tx.loader.events
{
	import flash.events.Event;

	/**
	 * 加载器全局通知
	 * @author    Leowu
	 * @version 2016/7/18
	 */
	public class LoadNotifyEvent extends Event
	{
		/** 懒加载全部完成 */
		public static const LAZY_TASK_COMPLETE:String = "lazyTaskComplete";

		/** 高优先级资源加载完成时派发 */
		public static const MAIN_TASK_COMPLETE:String = "mainTaskComplete";

		/** 所有加载完成时派发 */
		public static const ALL_TASK_COMPLETE:String = "allTaskComplete";

		/** 低优先级开始加载 */
		public static const LAZY_TASK_START:String = "lazyTaskStart";

		/** 高优先级开始加载 */
		public static const MAIN_TASK_START:String = "mainTaskStart";

		/**
		 * 构造函数
		 * create a [LoadNotifyEvent] object
		 * @param type
		 * @param data        用户自定义数据
		 * @param bubbles
		 *
		 */
		public function LoadNotifyEvent(type:String, data:* = null, bubbles:Boolean = false)
		{
			this.data = data;
			super(type, bubbles, false);
		}

		/** 事件携带数据 */
		public var data:*;

		/**
		 * 克隆事件
		 * @return 事件Event
		 *
		 */
		override public function clone():Event
		{
			return new LoadNotifyEvent(type, data, bubbles);
		}

		/**
		 * 格式化文本输出
		 * @return String
		 *
		 */
		override public function toString():String
		{
			return formatToString("LoadNotifyEvent", "type", "data", "bubbles", "cancelable", "eventPhase");
		}
	}
}