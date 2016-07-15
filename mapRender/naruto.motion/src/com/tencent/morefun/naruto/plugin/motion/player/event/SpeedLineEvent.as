package com.tencent.morefun.naruto.plugin.motion.player.event
{
	import flash.events.Event;

	public class SpeedLineEvent extends Event
	{
		public static const PLAY_SPEED_LINE:String = "playSpeedLine";
		
		public var frameEvent:String;
		public function SpeedLineEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

			frameEvent = null;
		}
	}
}