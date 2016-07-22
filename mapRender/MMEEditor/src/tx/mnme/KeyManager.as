package tx.mnme
{
	import flash.display.Stage;
	import flash.events.KeyboardEvent;

	public class KeyManager
	{
		public static var controlKey:Boolean;
		public static var shiftKey:Boolean;
		public static var altKey:Boolean;
		
		private static var _stage:Stage;
		
		public static function setStage(stage:Stage):void
		{
			_stage = stage;
			stage.addEventListener(KeyboardEvent.KEY_DOWN,onKey);
			stage.addEventListener(KeyboardEvent.KEY_UP,onKey);
		}
		
		public static function dispose():void
		{
			_stage.removeEventListener(KeyboardEvent.KEY_DOWN,onKey);
			_stage.removeEventListener(KeyboardEvent.KEY_UP,onKey);
			_stage = null;
		}
		
		protected static function onKey(event:KeyboardEvent):void
		{
			controlKey = event.controlKey;
			shiftKey = event.shiftKey;
			altKey = event.altKey;
		}
	}
}