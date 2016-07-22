package tx.sce.event
{
	import tx.sce.command.Command;
	
	import flash.events.Event;
	
	public class CommandEvent extends Event
	{
		public static const NORMAL_COMMAND:String = "command";
		
		public var undo:Boolean;
		public var cmd:Command;
		
		public function CommandEvent(cd:Command, ud:Boolean=false)
		{
			super(CommandEvent.NORMAL_COMMAND);
			cmd = cd;
			undo = ud;
		}
		
		override public function toString():String
		{
			return formatToString("CommandEvent", "type", "bubbles", "cancelable", "eventPhase", "undo", "cmd");
		}
		
		override public function clone():Event
		{
			var tmpEvt:CommandEvent = new CommandEvent(this.cmd, this.undo);
			return tmpEvt;
		}
	}
}