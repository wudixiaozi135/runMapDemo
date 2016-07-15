package com.tencent.morefun.naruto.plugin.motion.player.event
{
	import flash.events.Event;

	public class FlashScreenEvent extends Event
	{
		public static const PLAY_FLASH_SCREEN:String = "playFlashScreen";
		
		public var frameEvent:String;
		public function FlashScreenEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

			frameEvent = null;
		}
	}
}