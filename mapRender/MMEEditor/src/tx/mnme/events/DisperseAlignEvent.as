package tx.mnme.events
{
	import flash.events.Event;
	
	public class DisperseAlignEvent extends Event
	{
		public static const GET_BEGIN_END_FRAME:String = "getBeginEndFrame";
		public static const DISPERSE_ALIGN:String = "disperseAlign";
		
		public var beginFrame:int;
		public var endFrame:int;
		public var x:Boolean;
		public var y:Boolean;
		
		public function DisperseAlignEvent(type:String)
		{
			super(type);
		}
	}
}