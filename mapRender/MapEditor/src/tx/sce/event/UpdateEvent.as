package tx.sce.event
{
	import tx.sce.updateMsg.UpdateMsg;
	
	import flash.events.Event;
	
	public class UpdateEvent extends Event
	{
		public static const UPDATA_NORMAL:String = "update_normal";
		public var msg:UpdateMsg;
		
		public function UpdateEvent(message:UpdateMsg)
		{
			super(UpdateEvent.UPDATA_NORMAL);
			msg = message;
		}
		
		override public function toString():String
		{
			return formatToString("UpdateEvent", "type", "bubbles", "cancelable", "eventPhase", "msg");
		}
		
		override public function clone():Event
		{
			var tmpEvt:UpdateEvent = new UpdateEvent(this.msg);
			return tmpEvt;
		}
	}
}