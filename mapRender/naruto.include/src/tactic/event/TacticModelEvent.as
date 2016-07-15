package tactic.event 
{
	import flash.events.Event;
	import tactic.model.TacticUniqueModel;

	/**
	 * 战法数据模型事件
	 * @author larryhou
	 * @createTime 2015/4/23 15:17
	 */
	public class TacticModelEvent extends Event 
	{
		/**
		 * 战法数据发生变更时派发
		 */
		public static const CHANGE:String = "change";
		
		/**
		 * 数据模型类型
		 * @see serverProto.inc.NinjaSourceType
		 */
		public var sourceType:uint;
		
		/**
		 * 数据模型
		 */
		public var model:TacticUniqueModel;
		
		/**
		 * 事件携带数据
		 */
		public var data:*;

		/**
		 * 构造函数
		 * create a [TacticModelEvent] object
		 * @param data 用户自定义数据
		 */
		public function TacticModelEvent(type:String, sourceType:uint, data:* = null, bubbles:Boolean = false) 
		{
			this.sourceType = sourceType; 
			this.data = data;
			
			super(type, bubbles, false);
		}
		
		/**
		 * 克隆事件
		 */
		public override function clone():Event 
		{
			return new TacticModelEvent(type, sourceType, data, bubbles);
		}

		/**
		 * 格式化文本输出
		 */
		public override function toString():String 
		{
			return formatToString("TacticModelEvent", "type", "sourceType", "data");
		}
	}

}