package com.tencent.morefun.naruto.plugin.motion.data
{
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;

	public class LogicEffectResEffectInfo
	{
		public var effect:int;
		public var startEffectId:int;
		public var continueEffectId:int;
		public var endEffectId:int;
		public var startEffectInfo:EffectInfo;
		public var continueEffectInfo:EffectInfo;
		public var endEffectInfo:EffectInfo;
		public var lastEndTime:int;
		
		public function clone():LogicEffectResEffectInfo
		{
			var logicEffectResEffectInfo:LogicEffectResEffectInfo;
			
			logicEffectResEffectInfo = new LogicEffectResEffectInfo();
			logicEffectResEffectInfo.effect = effect;
			logicEffectResEffectInfo.startEffectId = startEffectId;
			logicEffectResEffectInfo.continueEffectId = continueEffectId;
			logicEffectResEffectInfo.endEffectId = endEffectId;
			logicEffectResEffectInfo.startEffectInfo = startEffectInfo.clone();
			logicEffectResEffectInfo.continueEffectInfo = continueEffectInfo.clone();
			logicEffectResEffectInfo.endEffectInfo = endEffectInfo.clone();
			
			return logicEffectResEffectInfo;
		}
	}
}