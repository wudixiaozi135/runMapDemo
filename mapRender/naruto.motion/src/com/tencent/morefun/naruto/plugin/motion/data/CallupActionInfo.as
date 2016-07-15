package com.tencent.morefun.naruto.plugin.motion.data
{
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;

	public class CallupActionInfo extends BaseActionInfo
	{
		public var activiteHero:ActivityHero; //施放召唤术的忍者
		public var ninjaInfos:Array = [];//召唤出来的忍者
		
		public function CallupActionInfo()
		{
			actionType = ActionTypeDef.CALLUP;
		}
		
		override public function isHoldAction():Boolean
		{
			var skillInfo:SkillInfo;
			
			skillInfo = FightManagerCenter.skillMgr.getSkillInfo(activiteHero.skillId);
			return skillInfo.hold;
		}
		
		override public function getMotionPos():Array
		{
			var arr:Array = [];
			arr.push(activiteHero.pos);
			for each(var passiveHero:PassiveHero in activiteHero.passiveHeros)
			{
				arr.push(passiveHero.pos);
			}
			for each(var ninjaInfo:NinjaInfo in ninjaInfos)
			{
				arr.push(ninjaInfo.pos);
			}
			
			return arr;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			activiteHero = null;
			ninjaInfos = null;
		}
	}
}