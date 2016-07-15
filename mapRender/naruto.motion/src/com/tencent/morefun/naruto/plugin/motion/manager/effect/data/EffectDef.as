package com.tencent.morefun.naruto.plugin.motion.manager.effect.data
{

	public class EffectDef
	{
		public static const TYPE_NONE:int = -1;
		public static const TYPE_MOVIE_CLIP:int = 0;
		public static const TYPE_FILTERS:int = 1;
		public static const TYPE_MOVIE_CLIP_N_FILTERS:int = 2;
		
		public static const TARGET_ATTACK:int = 0;//攻击方特效（加在自己身上）   生效字段：蓄力特效 技能特效
		public static const TARGET_DEFENCE:int = 1;//受击方特效 （加在自己身上）  生效字段：击中特效 受击特效
		public static const TARGET_SCENE_ATTACK:int = 3;//攻击方特效（加在场景上）   生效字段：蓄力特效 技能特效
		public static const TARGET_SCENE_DEFENCE:int = 4;//受击方特效 （加在场景上）  生效字段：击中特效 受击特效
		public static const TARGET_FULL_SCREEN:int = 5;//全屏特效   仅配在全屏特效中生效
		public static const TARGET_FULL_SCREEN_ATTACK:int = 6;//全屏特效（攻击方） 仅配在全屏特效中生效
		public static const TARGET_FULL_SCREEN_DEFENCE:int = 7;//全屏特效（受击方） 仅配在全屏特效中生效
		public static const TARGET_FULL_SCREEN_TEAM:int = 8;//全屏特效（受击方） 仅配在全屏特效中生效
		public static const VERTICAL_FULL_SCREEN_DEFENCE:int = 9;//全屏特效（受击方所在纵列） 仅配在全屏特效中生效
		public static const VERTICAL_FULL_SCREEN_TEAM:int = 10;//全屏特效（受击方所在小队） 仅配在全屏特效中生效
		public static const HORIZONTAL_FULL_SCREEN_DEFENCE:int = 11;//全屏特效（受击方所在横列） 仅配在全屏特效中生效
	
															
		public function autoSetNull():void
		{

		}
	}
}