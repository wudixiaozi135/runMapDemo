package RSModel.event 
{
	import flash.events.Event;

	/**
	 * 运行时数据共享插件事件定义中心
	 * @author larryhou
	 * @createTime 2014/7/24 19:30
	 */
	public class RSModelEvent extends Event 
	{		
		/**
		 * 默认忍者背包数据变更时派发
		 * @usage data是一个Vector.<NinjaInfo>对象，包含了所有背包忍者
		 */
		public static const DEFAULT_NINJA_PACKAGE_CHANGE:String = "defaultNinjaPackageChange";
		
		/**
		 * 默认忍者仓库数据变更时派发
		 * @usage data是一个Vector.<NinjaInfo>对象，包含了所有仓库忍者
		 */
		public static const DEFAULT_NINJA_STORAGE_CHANGE:String = "defaultNinjaStorageChange";
		
		/**
		 * 默认阵法数据发生变化时派发
		 * @usage data是FormationInfo对象
		 */
		public static const DEFAULT_FORMATION_CHANGE:String = "defaultFormationChange";
		
		/**
		 * 通用忍者背包数据变更时派发
		 * @usage id是 @see serverProto.ninjaSystem.NinjaSourceType 枚举，用来判断是哪个忍者背包
		 * @usage data是一个Vector.<NinjaInfo>对象，包含了对应背包的所有忍者
		 */
		public static const NINJA_PACKAGE_CHANGE:String = "ninjaPackageChange";
		
		/**
		 * 通用忍者仓库数据变更时派发
		 * @usage id是 @see serverProto.ninjaSystem.NinjaSourceType 枚举，用来判断是哪个忍者仓库
		 * @usage data是一个Vector.<NinjaInfo>对象，包含了对应仓库的所有忍者
		 */
		public static const NINJA_STORAGE_CHANGE:String = "ninjaStorageChange";
		
		/**
		 * 通用阵法数据发生变化时派发
		 * @usage id是 @see serverProto.inc.NinjaSourceType 枚举，用来判断是哪个阵法
		 * @usage data是FormationInfo对象
		 */
		public static const FORMATION_CHANGE:String = "formationChange";
		
		/**
		 * 扩展字段
		 */
		public var id:uint;
		
		/**
		 * 事件携带数据
		 */
		public var data:*;

		/**
		 * 构造函数
		 * create a [RSModelEvent] object
		 * @param data 用户自定义数据
		 */
		public function RSModelEvent(type:String, data:* = null, bubbles:Boolean = false)
		{
			this.data = data;
			super(type, bubbles, false);
		}

		/**
		 * 克隆事件
		 */
		public override function clone():Event 
		{
			return new RSModelEvent(type, data, bubbles);
		}

		/**
		 * 格式化文本输出
		 */
		public override function toString():String 
		{
			return formatToString("RSModelEvent", "type", "data", "bubbles", "cancelable", "eventPhase");
		}
	}

}