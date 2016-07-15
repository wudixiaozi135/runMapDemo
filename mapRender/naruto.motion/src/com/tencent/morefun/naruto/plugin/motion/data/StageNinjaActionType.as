package com.tencent.morefun.naruto.plugin.motion.data
{

	public class StageNinjaActionType
	{
		public static const EXIT_JUMP:int = 1;//后跳退场
		public static const EXIT_SMOKE:int = 2;
		public static const EXIT_VANISH:int = 3;//消失退场
		public static const EXIT_FALL:int = 4;
		public static const EXIT_DELAY:int = 5;
		public static const ENTER_NORMAL:int = 0;
		public static const ENTER_VANISH:int = 6;//变身登场
		
		public static const DEAD_SMOKE:int = 100;
	
															
		public function autoSetNull():void
		{

		}
	}
}