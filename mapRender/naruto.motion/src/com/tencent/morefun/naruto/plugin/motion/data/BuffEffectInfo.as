package com.tencent.morefun.naruto.plugin.motion.data
{

	public class BuffEffectInfo
	{
		public static const EFFCT_IMMUNITY:int = 1;//免疫
		public static const EFFCT_TRANSFORM:int = 2;//反弹
		public static const EFFCT_DISPEL:int = 3;//驱散
		
		public var pos:int;
		public var close:int;
		public var effect:int;
		
		public function BuffEffectInfo()
		{
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}