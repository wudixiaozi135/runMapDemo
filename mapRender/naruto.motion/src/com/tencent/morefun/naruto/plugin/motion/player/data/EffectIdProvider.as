package com.tencent.morefun.naruto.plugin.motion.player.data
{

	public class EffectIdProvider
	{
		private static var id:Number = 0;
		public static function getId():Number
		{
			return id += 1;
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}