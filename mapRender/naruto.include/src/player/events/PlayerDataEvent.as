package player.events
{
	import flash.events.Event;

	public class PlayerDataEvent extends Event
	{
		public static const POSITION_UPDATE:String = "positionUpdate";
		public static const PROPERTY_UPDATE:String = "propertyUpdate";
		public static const MULTI_PROPERTY_UPDATE:String = "multiPropertyUpdate";
		public static const TITLE_UPDATE:String = "titleUpdate"; // 称号变更时派发
        public static const DESTROY:String = "destroy";
		
		public var property:String;
//		public var oldValue:*;
//		public var newValue:*;
		
		public var multiProperties:Array;
//		public var multiOldValues:Array;
//		public var multiNewValues:Array;
		
		public function PlayerDataEvent(type:String,property:String="")
		{
			super(type);
			
			this.property = property;
		}
	}
}