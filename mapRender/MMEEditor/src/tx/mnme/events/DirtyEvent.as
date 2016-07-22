package tx.mnme.events
{
	import flash.events.Event;
	
	public class DirtyEvent extends Event
	{
		public static const DIRTY:String = "dirty";
		
		public var dirty:Boolean;
		public function DirtyEvent(type:String, dirty:Boolean)
		{
			this.dirty = dirty;
			super(type);
		}
	}
}