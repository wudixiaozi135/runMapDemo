package com.tencent.morefun.naruto.plugin.motion.data
{
	
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	
	public class OnlyDefenceEffectActionInfo extends BaseActionInfo
	{
		public var activiteHero:ActivityHero; //进攻英雄info
		public var afterActionList:Array = [];//归位忍者列表
		
		public function OnlyDefenceEffectActionInfo()
		{
			actionType = ActionTypeDef.ONLY_DEFENCE_EFFECT;
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
			arr = arr.concat(activiteHero.cahootPos);
			
			return arr;
		}
		
		override public function update():void
		{
			
		}
		
		
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}
			
			activiteHero = null;
			afterActionList = null;
		}
	}
}


