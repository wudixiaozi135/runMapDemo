package com.tencent.morefun.naruto.plugin.motion.player.event
{
	import com.tencent.morefun.naruto.plugin.motion.manager.frame.event.FrameEvent;
	import flash.events.Event;

	public class SkipRenderEvent extends Event
	{
		public static const SKIP_RENDER:String = "skipRender";
		
		public var frameEvent:String;;
		public function SkipRenderEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}