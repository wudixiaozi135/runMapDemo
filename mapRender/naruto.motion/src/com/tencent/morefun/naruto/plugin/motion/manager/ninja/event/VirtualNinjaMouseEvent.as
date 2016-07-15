package com.tencent.morefun.naruto.plugin.motion.manager.ninja.event
{
	import flash.events.Event;

	public class VirtualNinjaMouseEvent extends Event
	{
		public static const MOUSE_ROLL_OVER:String = "mouseRollOver";
		public static const MOUSE_ROLL_OUT:String = "mouseRollOut";
		public static const MOUSE_SELECTED:String = "mouseSelected";
		public static const MOUSE_UNSELECTED:String = "mouseUnSelected";
		
		public function VirtualNinjaMouseEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}