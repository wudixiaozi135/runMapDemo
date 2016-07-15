package com.tencent.morefun.naruto.plugin.motion.data
{

	public class BeHitEffectDef
	{
		public static const BEATBACK:int = 5;
		public static const BEATBACK_EFFECT:int = 8;
		public static const MISS:int = 7;
		public static const MISSSTR:String = "002";
		public static const BEATBACKSTR:String = "001";
				
		public function BeHitEffectDef()
		{
			
		}
		
		public static function isMissBeHitEffect(beHitEffect:int):Boolean
		{
			if(beHitEffect == MISS)
			{
				return true;
			}
			
			return false;
		}
		
		public static function isBeatBackEffect(beHitEffect:int):Boolean
		{
			if(beHitEffect == BEATBACK)
			{
				return true;
			}
			
			return false;
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}