package RSModel.event 
{
	import flash.events.EventDispatcher;
	
	/**
	 * 默认忍者背包数据变更时派发
	 */
	[Event(name = "defaultNinjaPackageChange", type = "RSModel.event.RSModelEvent")]	
	
	/**
	 * 默认忍者仓库数据变更时派发
	 */
	[Event(name = "defaultNinjaStorageChange", type = "RSModel.event.RSModelEvent")]	
	
	/**
	 * 通用忍者仓库数据变更时派发
	 */
	[Event(name = "ninjaStorageChange", type = "RSModel.event.RSModelEvent")]
	
	/**
	 * 通用忍者背包数据变更时派发
	 */
	[Event(name = "ninjaPackageChange", type = "RSModel.event.RSModelEvent")]
	
	/**
	 * 默认阵法数据发生变化时派发
	 */
	[Event(name = "defaultFormationChange", type = "RSModel.event.RSModelEvent")]
	
	/**
	 * 通用阵法数据发生变化时派发
	 */
	[Event(name = "formationChange", type = "RSModel.event.RSModelEvent")]
	
	
	/**
	 * 事件派发中心
	 * @author larryhou
	 * @createTime 2014/7/28 11:57
	 */	
	public class RSModelEventDispatcher extends EventDispatcher
	{
		
		/**
		 * 构造函数
		 * create a [RSModelEventDispatcher] object
		 */
		public function RSModelEventDispatcher()
		{
			super(null);
		}
	}
}