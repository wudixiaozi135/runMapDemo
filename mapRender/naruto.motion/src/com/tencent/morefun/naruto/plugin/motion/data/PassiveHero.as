package com.tencent.morefun.naruto.plugin.motion.data
{
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SubSkillInfo;

	public class PassiveHero
	{
		public var pos:int;//忍者所站网格编号
		public var orghp:int;//这个外部可以不关系 播放器内容用来扣血计算的临时变量
		public var isCritical:Boolean;//是否爆击
		public var behitStatus:int;//击打初始状态
		public var behitEffect:int;//击打效果
		public var behitResult:int;//击打结果 
		public var subBeHitEffect:int;//击打子效果
		public var isDodge:Boolean;//是否闪避
		public var dodgeId:int;//闪避ID
		public var time:int;//随机时间值
		public var kathaTeam:int;//第几小队
		public var kathaValue:int;//查克拉值
		public var subSkillInfo:SubSkillInfo;//播放器内部使用
		public var isMajor:Boolean = true;
		public var isDead:Boolean;
		public var hpChangedInfo:HpChangedInfo;
		public var attributeChangedInfo:AttributeChangedInfo;
		public var defenceMotionIndex:int;
		public var ninjaId:int;
		public var isbati:Boolean;
		public var skillIdle:Boolean;
		public var hasSkillIdle:Boolean;
	
															
		public function autoSetNull():void
		{

			hpChangedInfo = null;
			attributeChangedInfo = null;
		}
	}
}