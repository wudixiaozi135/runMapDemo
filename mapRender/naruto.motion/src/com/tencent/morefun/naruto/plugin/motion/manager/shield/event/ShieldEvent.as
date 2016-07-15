package com.tencent.morefun.naruto.plugin.motion.manager.shield.event
{
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldInfo;
	import flash.events.Event;

	public class ShieldEvent extends Event
	{
		public static const SHIELD_ADD:String = "shield_add";
		public static const SHIELD_REMOVE:String = "shield_remove";
		public static const SHIELD_CLOSING:String = "shield_closing";
		
		public var shieldInfo:ShieldInfo;
		public function ShieldEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

			shieldInfo = null;
		}
	}
}