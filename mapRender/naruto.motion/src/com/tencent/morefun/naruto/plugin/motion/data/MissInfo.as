package com.tencent.morefun.naruto.plugin.motion.data
{
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;

	public class MissInfo
	{
		public var type:int;
		public var action:String;
		public var effectId:int;
		public var rebound:String;
		
		public var effectInfo:EffectInfo;
		
		public function set data(data:XML):void
		{
			type = data.@type;
			action = data.@action;
			effectId = data.@effect;
			rebound = data.@rebound;
		}
	
															
		public function autoSetNull():void
		{

			action = null;
			rebound = null;
			effectInfo = null;
		}
	}
}