package com.tencent.morefun.naruto.plugin.motion.data
{

	public class SkillStatuInfo
	{
		public var pos:int;
		public var skillIndex:uint = 0; //忍者奥义技的技能位
		public var skillId:uint = 0; //技能id
		public var canUseSkill:uint = 0; //这个技能不能用
		public var skillProhibitType:Array = []; //这个技能不能用的原因
		public var cdRound:uint = 0; //如果是技能未冷却,剩余的冷却回合
	
															
		public function autoSetNull():void
		{

			skillProhibitType = null;
		}
	}
}