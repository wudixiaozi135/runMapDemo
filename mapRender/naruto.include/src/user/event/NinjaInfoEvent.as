package user.event
{
	import flash.events.Event;
	
	public class NinjaInfoEvent extends Event
	{
		public static const CHANGED:String = "changed";
		public static const ALL_CHANGED:String = "allChanged";
		
		public var key:int;
		public var newValue:int;
		public var oldValue:int;
		public function NinjaInfoEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}