package crew.event 
{
	import crew.data.NinjaPropsInfo;
	import flash.events.Event;

	/**
	 * 忍具数据模型
	 * @author larryhou
	 * @createTime 2014/4/16 11:43
	 */
	public class NinjaPropsModelEvent extends Event 
	{
		/**
		 * 道具变更时派发
		 */
		public static const PROPS_CHANGE:String = "propsChagne";
		
		/**
		 * 背包道具变更时派发
		 */
		public static const BAG_PROPS_CHANGE:String = "bagPropsChange";
		
		/**
		 * 已装备忍具变更时派发
		 */
		public static const USING_PROPS_CHANGE:String = "usingPropsChange";
		
		/**
		 * 事件对应忍具列表
		 */
		public var props:Vector.<NinjaPropsInfo>;
		
		/**
		 * 发生变更的忍具列表
		 */
		public var changes:Vector.<NinjaPropsInfo>;
		
		/**
		 * 附加数据
		 */
		public var extra:*;

		/**
		 * 构造函数
		 * create a [NinjaPropsModelEvent] object
		 * @param data 用户自定义数据
		 */
		public function NinjaPropsModelEvent(type:String, props:Vector.<NinjaPropsInfo> = null, bubbles:Boolean = false)
		{
			this.props = props;
			super(type, bubbles, false);
		}

		/**
		 * 克隆事件
		 */
		public override function clone():Event 
		{
			return new NinjaPropsModelEvent(type, props, bubbles);
		}

		/**
		 * 格式化文本输出
		 */
		public override function toString():String 
		{
			return formatToString("NinjaPropsEvent", "type", "props", "bubbles", "cancelable", "eventPhase");
		}
	}

}