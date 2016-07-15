package com.tencent.morefun.naruto.plugin.motion.data
{

	public class ActivityHero
	{
		public var pos:int;//忍者站的网格编号
		public var skillId:int;//所使用的攻击技能
		public var useSpecialSkill:Boolean;
		public var useSpecialSkillIndex:int;
		public var useSkillIdList:Array = [];
		public var attchInfos:Array = [];//受击,攻击方,比如扣了多少血,加了多少查克拉
		public var buffInfos:Array = [];//本次变化的BUFF列表 参考BUFFINFO类
		public var buffEffectInfos:Array = [];//BUFF 效果 --反弹 和 免疫
		public var shieldInfos:Array = [];//护盾
		public var passiveHeros:Array = [];//受击忍者列表
		public var hitPointIndex:int;//当前是第几下击打 播放器内容赋值
		public var totalAttackTimes:int;//这个值暂时没用到
		public var kathaChangedNotifyList:Array = [];
		public var kathaChangedList:Array = [];
		public var orghp:int;//这个外部可以不关系 播放器内容用来扣血计算的临时变量
		public var cahootPos:Array = [];  //分身数组，元素是NinjaInfo
		public var afterActions:Array = [];//回去的忍者数组 播放器内部赋值
		public var hitNum:int;//连击数 当前值
		public var enchantment:int = -1;
		public var skillStatusChangedList:Array = [];
		public var hold:Boolean = true;//false = 傀儡攻击
		public var realPassiveBeHit:Boolean = true;
		public var puppetPos:int = -1;
		public var cancelSkillList:Array = [];
		public var isDead:Boolean;
		public var hpChangedInfo:HpChangedInfo;
		public var attributeChangedInfo:AttributeChangedInfo;
		public var otherHpChangedInfoList:Array = [];
		public var otherAttributeChangedInfoList:Array = [];
		public var skillIdle:Boolean;
		public var hasSkillIdle:Boolean;
		public var isRevert:Boolean;//是否目标反转
		
		public function ActivityHero()
		{
			
		}
	
															
		public function autoSetNull():void
		{

			useSkillIdList = null;
			attchInfos = null;
			buffInfos = null;
			buffEffectInfos = null;
			shieldInfos = null;
			passiveHeros = null;
			kathaChangedNotifyList = null;
			kathaChangedList = null;
			cahootPos = null;
			afterActions = null;
			skillStatusChangedList = null;
			cancelSkillList = null;
			hpChangedInfo = null;
			attributeChangedInfo = null;
			otherHpChangedInfoList = null;
			otherAttributeChangedInfoList = null;
		}
	}
}