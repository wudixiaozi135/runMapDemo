package com.tx.loader.events
{
	import flash.events.Event;

	/**
	 * 加载事件类
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class LoadEvent extends Event
	{
		/** 文件加载出错 */
		public static const ERROR:String = "error";

		/** 开始加载文件 */
		public static const START:String = "start";

		/** 服务器响应超时 */
		public static const TIME_OUT:String = "timeOut";

		/** 加载进度事件 */
		public static const PROGRESS:String = "progress";

		/** 中断进程 */
		public static const ABORT:String = "abort";

		/** 单个文件加载完成 */
		public static const COMPLETE:String = "complete";

		/** 加载进程结束时派发 */
		public static const FINISH:String = "finish";

		/** 队列加载完成时派发 */
		public static const QUEUE_COMPLETE:String = "queueComplete";

		/**
		 * 构造函数
		 * create a [LoadEvent] object
		 * @param type
		 * @param url
		 * @param data        用户自定义数据
		 * @param bubbles
		 *
		 */
		public function LoadEvent(type:String, url:String, data:* = null, bubbles:Boolean = false)
		{
			this.url = url;
			this.data = data;
			super(type, bubbles, false);
		}

		/** 当前加载文件链接 */
		public var url:String;

		/** 事件携带数据 */
		public var data:*;

		/**
		 * 克隆事件
		 * @return 事件Event
		 *
		 */
		override public function clone():Event
		{
			return new LoadEvent(type, url, data, bubbles);
		}

		/**
		 * 格式化文本输出
		 * @return String
		 *
		 */
		override public function toString():String
		{
			return formatToString("LoadEvent", "type", "url", "data", "bubbles", "cancelable", "eventPhase");
		}
	}
}