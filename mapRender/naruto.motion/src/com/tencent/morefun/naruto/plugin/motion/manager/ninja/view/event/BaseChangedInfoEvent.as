package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.event
{
	import flash.events.Event;
	
	public class BaseChangedInfoEvent extends Event
	{
		public static const START_BASE_CHANGED:String = "startBaseChanged";
		public static const END_BASE_CHANGED:String = "endBaseChanged";
		
		public function BaseChangedInfoEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}