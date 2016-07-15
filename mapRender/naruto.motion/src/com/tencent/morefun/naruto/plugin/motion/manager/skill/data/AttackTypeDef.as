package com.tencent.morefun.naruto.plugin.motion.manager.skill.data
{

	public class AttackTypeDef
	{
		//受攻行为参照 AttackResultDef
		
		public static const COMMOND_ATTACK:int = 01001; //普通攻击1 对应 普通受攻击1
		
		public static const ATTACK1:int = 01002	 //普通攻击1 对应 普通受攻击1
		public static const ATTACK2:int = 01003; //普通攻击1 对应 普通受攻击1
		public static const ATTACK3:int = 01004; //普通攻击1 对应 普通受攻击1
		public static const ATTACK4:int = 01005; //普通攻击1 对应 普通受攻击1
		public static const ATTACK5:int = 01006; //普通攻击1 对应 普通受攻击1
		

		public static const SKILL_ATTACK1:int = 02001;
		public static const SKILL_ATTACK2:int = 02002;
		public static const SKILL_ATTACK3:int = 02003;
		public static const SKILL_ATTACK4:int = 02004;
		
		public static const SPECIAL_ATTACK1:int = 04001;
		public static const SPECIAL_ATTACK2:int = 04002;
		public static const SPECIAL_ATTACK3:int = 04003;
		
		public static const AIR_ATTACK:int = 04001; //浮空攻击 对应  浮空受击
		public static const BIGAIR_ATTACK:int = 05001; //倒地攻击 对应 倒地受击
		public static const LAND_ATTACK:int = 06001; //魔法攻击 对应 所有受攻击
		public static const SPECIAL_SKILL:int = 07001; //觉醒技攻击 对应 所有受攻击
		
		public static const CALL_UP:int = 08001;//召唤技能 对应 被召唤
		public static const CALL_UP_FAIL:int = 09001;//召唤失败 对应 被召唤失败
	
															
		public function autoSetNull():void
		{

		}
	}
}