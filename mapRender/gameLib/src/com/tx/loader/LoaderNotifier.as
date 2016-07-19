package com.tx.loader
{
	import flash.events.EventDispatcher;

	/**
	 * 所有加载完成时派发
	 */
	[Event(name="allTaskComplete", type="Common.loader.events.LoadNotifyEvent")]

	/**
	 * 低优先级资源加载全部完成时派发
	 */
	[Event(name="lazyTaskComplete", type="Common.loader.events.LoadNotifyEvent")]

	/**
	 * 高优先级资源加载全部完成时派发
	 */
	[Event(name="mainTaskComplete", type="Common.loader.events.LoadNotifyEvent")]

	/**
	 * 高优先级资源加载全部完成时派发
	 */
	[Event(name="lazyTaskStart", type="Common.loader.events.LoadNotifyEvent")]

	/**
	 * 高优先级资源开始加载
	 */
	[Event(name="mainTaskStart", type="Common.loader.events.LoadNotifyEvent")]

	/**
	 * 全局事件中心
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class LoaderNotifier extends EventDispatcher
	{
		/**
		 * 构造函数
		 * create a [LoaderNotifier] object
		 */
		public function LoaderNotifier()
		{
			super();
		}
	}

}