package com.tencent.morefun.naruto.plugin.motion.player.event
{
	import flash.events.Event;

	public class ShakeEvent extends Event
	{
		public static const PLAY_SHAKE:String = "playShake";
		
		public var frameEvent:String;
		public function ShakeEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

			frameEvent = null;
		}
	}
}