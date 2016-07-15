package com.tencent.morefun.naruto.plugin.motion.player.data
{
	import com.tencent.morefun.naruto.plugin.motion.data.ActivityHero;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;

	public class BaseActionData
	{
		public var activityNinja:Ninja;
		public var activityHero:ActivityHero;
		public var skillInfo:SkillInfo;
		public var showNinjaList:Array = [];
		public var hideNinjaList:Array = [];
		public var trunBackList:Array = [];
		public var passiveNinjas:Array = [];
		public var puppetPosList:Array = [];
		public var cahootPosList:Array = [];
		public var isOver:Boolean;
		public var curHitCount:int;
		public var maxHitCount:int;
		public var damageCount:int;
		public var maxDamageCount:int;
		public var curHitEffectIndex:int;
		public var curSkillEffectIndex:int;
		public var curEndSkillEffectIndex:int;
		public var curFullScreenEffectIndex:int;
		public var curEndFullScreenEffectIndex:int;
		public var isDodge:Boolean;
		public var isCombo:Boolean;
		public var comboIndex:int;
		public var isBeatBack:Boolean;
		public var roundId:int;
		public var actionId:int;
		public var isAttackSelf:Boolean;
		public var nextSkillId:int;
	
															
		public function autoSetNull():void
		{

			activityNinja = null;
			activityHero = null;
			skillInfo = null;
			showNinjaList = null;
			hideNinjaList = null;
			trunBackList = null;
			passiveNinjas = null;
			puppetPosList = null;
			cahootPosList = null;
		}
	}
}