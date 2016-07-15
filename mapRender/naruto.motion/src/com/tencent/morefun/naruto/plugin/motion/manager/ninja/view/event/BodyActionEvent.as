package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.event
{
	import flash.events.Event;

	public class BodyActionEvent extends Event
	{
		public static const ACTION_END:String = "actionEnd";
		
		public function BodyActionEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}