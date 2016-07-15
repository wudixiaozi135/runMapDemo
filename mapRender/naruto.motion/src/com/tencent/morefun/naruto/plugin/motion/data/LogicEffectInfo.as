package com.tencent.morefun.naruto.plugin.motion.data
{

	public class LogicEffectInfo
	{
		public var id:int;
		public var buffId:int;
		public var skillId:int;
		public var cfg:LogicEffectInfoCfg;
	
															
		public function autoSetNull():void
		{

			cfg = null;
		}
	}
}