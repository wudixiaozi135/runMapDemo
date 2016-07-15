package com.tencent.morefun.naruto.plugin.motion.player.action.event
{
	import flash.events.Event;

	public class ActionEvent extends Event
	{
		public static const BEGIN:String = "begin";
		public static const END:String = "end";
		
		public function ActionEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}