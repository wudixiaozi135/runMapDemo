package com.tencent.morefun.naruto.plugin.motion.manager.buff.event
{
	import com.tencent.morefun.naruto.plugin.motion.data.BuffEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffInfoCfg;
	import flash.events.Event;
	import flash.geom.Point;

	public class BuffEvent extends Event
	{
		public static const BUFF_ADD:String = "buff_add";
		public static const BUFF_REMOVE:String = "buff_remove";
		public static const BUFF_CLOSING:String = "buff_closing";
		public static const BUFF_EFFECT:String = "buffEffect";
		
		public var buffInfo:BuffInfo;
		public var buffEffectInfo:BuffEffectInfo;
		
		public function BuffEvent(type:String)
		{
			super(type);
		}
	
															
		public function autoSetNull():void
		{

			buffInfo = null;
			buffEffectInfo = null;
		}
	}
}