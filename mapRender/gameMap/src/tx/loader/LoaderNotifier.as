package tx.loader 
{
	import flash.events.EventDispatcher;
	
	/**
	 * 所有加载完成时派发
	 */
	[Event(name = "allTaskComplete", type = "tx.loader.events.LoadNotifyEvent")]
	
	/**
	 * 低优先级资源加载全部完成时派发
	 */
	[Event(name = "lazyTaskComplete", type = "tx.loader.events.LoadNotifyEvent")]
	
	/**
	 * 高优先级资源加载全部完成时派发
	 */
	[Event(name = "mainTaskComplete", type = "tx.loader.events.LoadNotifyEvent")]
	
	/**
	 * 低优先级资源开始加载
	 */
	[Event(name = "lazyTaskStart", type = "tx.loader.events.LoadNotifyEvent")]
	
	/**
	 * 高优先级资源开始加载
	 */
	[Event(name = "mainTaskStart", type = "tx.loader.events.LoadNotifyEvent")]
	
	/**
	 * 全局事件中心
	 * @author larryhou
	 * @createTime 2014/10/11 17:06
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