package com.tencent.morefun.naruto.plugin.motion.manager.skill.data
{

	public class SkillDef
	{
		public static const HIT_TYPE_TIME:int = 0;
		public static const HIT_TYPE_EVENT:int = 1;
		public static const HIT_TYPE_EFFECT:int = 2;
		
		public static const DEFENCE_TYPE_NORMAL:int = 0;
		public static const DEFENCE_TYPE_BEACK_BACK:int = 1;
		public static const DEFENCE_TYPE_AIR:int = 2;
		public static const DEFENCE_TYPE_LAND:int = 3;
		public static const DEFENCE_TYPE_IDLE:int = 4;
		
		public static const TYPE_COMMON:int = 0;//普通攻击
		public static const TYPE_SKILL:int = 1;//普通技能攻击
		public static const TYPE_COMBO:int = 1;//追击技
		public static const TYPE_SPECIAL:int = 2;//奥义
		public static const TYPE_PASSIVE:int = 3;//被动
		public static const TYPE_MISS:int = 9;//躲闪
		public static const TYPE_REBOUND:int = 8;//反震
		public static const TYPE_ONLY_DEFENCE_EFFECT:int = 10;
		
		public static const OPEN_TYPE_NONE:int = 0;
		public static const OPEN_TYPE_OPEN:int = 1;
		public static const OEPN_TYPE_CLOSE:int = 2;
	
															
		public function autoSetNull():void
		{

		}
	}
}