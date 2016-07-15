package com.tencent.morefun.naruto.plugin.motion.event 
{
	import flash.events.Event;

	public class MotionEvent extends Event 
	{
		static public const ACTION_COMPLETE:String = "actionComplete";
		static public const ROUND_END:String = "roundEnd";
		
		public var actionInfo:Object;
		public function MotionEvent(type:String) 
		{ 
			
			super(type);
		} 
		
	
															
		public function autoSetNull():void
		{

			actionInfo = null;
		}
	}
	
}