package com.tencent.morefun.naruto.plugin.motion.manager.skill.event
{
	import flash.events.Event;

	public class SkillEvent extends Event
	{
		public static const RES_REQUEST:String = "resRequest";
		
		public var url:String;
		public function SkillEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

			url = null;
		}
	}
}