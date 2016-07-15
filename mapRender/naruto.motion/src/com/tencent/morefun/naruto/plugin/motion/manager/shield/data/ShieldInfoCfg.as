package com.tencent.morefun.naruto.plugin.motion.manager.shield.data
{
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;

	public class ShieldInfoCfg
	{
		public var id:int;
		public var endAction:String;
		public var endEffectId:int;
		public var endEffect:EffectInfo;
		
		public function set data(value:XML):void
		{
			id = value.@id;
			endAction = value.@endAction;
			endEffectId = value.@endEffectId;
		}
	
															
		public function autoSetNull():void
		{

			endAction = null;
			endEffect = null;
		}
	}
}