package com.tencent.morefun.naruto.plugin.motion.manager.ninja.event
{
	import flash.events.Event;

	public class NinjaEvent extends Event
	{
		public static const RES_REQUEST:String = "resRequest";
		
		public var urlList:Array;
		public function NinjaEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

			urlList = null;
		}
	}
}