package com.tencent.morefun.naruto.plugin.motion.player.event
{
	import com.tencent.morefun.naruto.plugin.motion.data.CommonActionInfo;
	import flash.events.Event;

	public class BasePlayerEvent extends Event
	{
		public static const PLAY_END:String = "playEnd";
		public static const PLAY_COMPLETE:String = "playComplete";
		public static const SPECIAL_SKILL:String = "specialSkill";
		
		public var actionInfo:CommonActionInfo;
		public var specialPos:int;
		public var skillIndex:int;
		public var skillId:int;
		public function BasePlayerEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

			actionInfo = null;
		}
	}
}