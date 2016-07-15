package com.tencent.morefun.naruto.plugin.motion.manager.ninja.data
{

	public class AttackResultDef
	{
		//攻击行为参照 SkillTypeDef
		
		//躲闪
		public static const MISS:int = 1001;//躲避
		
		//召唤
		public static const CALL_UP:int = 2001;//被召唤
		public static const CALL_UP_FAIL:int = 2002;//被召唤失败
		
		//普通受击
		public static const BE_COMMOND_ATTACK1:int = 3001;//普通受击1
		public static const BE_COMMOND_ATTACK2:int = 3002;//普通受击2
		
		public static const BE_COMMOND_ATTACK6:int = 3006;//普通受击|浮空
		public static const BE_COMMOND_ATTACK7:int = 3007;//普通受击|浮空|倒地
		public static const BE_COMMOND_ATTACK8:int = 3008;//普通受击|浮空|倒地|站起来
		public static const BE_COMMOND_ATTACK9:int = 3009;//普通受击|大浮空
		public static const BE_COMMOND_ATTACK10:int = 3010;//普通受击|大浮空|大浮空倒地
		public static const BE_COMMOND_ATTACK11:int = 3011;//普通受击|大浮空|大浮空倒地|站起来
		public static const BE_COMMOND_ATTACK12:int = 3014;//普通受击|倒地
		public static const BE_COMMOND_ATTACK13:int = 3015;//普通受击|倒地|站起来
		public static const BE_COMMOND_ATTACK14:int = 3012;//普通受击|击退
		public static const BE_COMMOND_ATTACK15:int = 3013;//普通受击|击退|普通
		
		//浮空受击
		public static const BE_AIR_ATTACK1:int = 4001;//浮空受击|浮空
		public static const BE_AIR_ATTACK2:int = 4002;//浮空受击|浮空倒地
		public static const BE_AIR_ATTACK3:int = 4003;//浮空受击|浮空倒地|站起来
		
		//大浮空受击
		public static const BE_BIGAIR_ATTACK1:int = 5001;//大浮空受击
		public static const BE_BIGAIR_ATTACK2:int = 5002;//大浮空受击|大浮空倒地
		public static const BE_BIGAIR_ATTACK3:int = 5003;//大浮空受击|大浮空倒地|站起来
		
		//倒地受击
		public static const BE_LAND_ATTACK1:int = 6001;//倒地受击
		public static const BE_LAND_ATTACK2:int = 6002;//倒地受击|站起来
		
		//击退受击
		public static const BE_FALLBACK_ATTACK1:int = 7001;//击退受击
		public static const BE_FALLBACK_ATTACK2:int = 7002;//击退受击|击退受击复原
		

		

	
															
		public function autoSetNull():void
		{

		}
	}
}