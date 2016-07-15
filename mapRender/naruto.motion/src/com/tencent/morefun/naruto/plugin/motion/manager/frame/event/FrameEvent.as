package com.tencent.morefun.naruto.plugin.motion.manager.frame.event
{
	import flash.events.Event;

	public class FrameEvent extends Event
	{
		public static const SHOW_FRAME_COMPLETE:String = "showFrameComplete";
		
		public var index:int;
		public var frameInfoId:int;
		public var direction:String;
		public function FrameEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

			direction = null;
		}
	}
}