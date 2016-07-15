package com.tencent.morefun.naruto.plugin.motion.event
{
	import flash.events.Event;

	public class ActionDataEvent extends Event
	{
		public static const PLAY:String = "play";
		public static const END:String = "end";
		
		public function ActionDataEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}