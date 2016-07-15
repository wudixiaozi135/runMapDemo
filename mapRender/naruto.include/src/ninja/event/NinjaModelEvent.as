package ninja.event 
{
	import flash.events.Event;
	import ninja.model.data.FormationInfo;
	import ninja.model.data.NinjaInfo;

	/**
	 * 忍者数据模型事件
	 * @author larryhou
	 * @createTime 2013/12/16 11:37
	 */
	public class NinjaModelEvent extends Event 
	{
		/**
		 * 背包忍者发生变更时派发
		 */
		public static const PACKAGE_CHANGE:String = "packageChange";
		
		/**
		 * 阵法信息变更
		 */
		public static const FORMATION_CHANGE:String = "formationChange";
		
		/**
		 * 仓库忍者列表变更
		 */
		public static const STORAGE_CHANGE:String = "storageChange";
		
		/**
		 * 扩展字段: 仓库类型或者阵法类型
		 */
		public var id:uint;
		
		/**
		 * 变更对应的阵法
		 */
		public var formation:FormationInfo;
		
		/**
		 * 变更忍者列表
		 */
		public var ninjas:Vector.<NinjaInfo>;
		
		/**
		 * 构造函数
		 * create a [NinjaModelEvent] object
		 * @param data 用户自定义数据
		 */
		public function NinjaModelEvent(type:String, bubbles:Boolean = false) 
		{
			super(type, bubbles, false);
		}

		/**
		 * 克隆事件
		 */
		public override function clone():Event 
		{
			return new NinjaModelEvent(type, bubbles);
		}

		/**
		 * 格式化文本输出
		 */
		public override function toString():String 
		{
			return formatToString("NinjaModelEvent", "type", "bubbles", "cancelable", "eventPhase");
		}
	}

}