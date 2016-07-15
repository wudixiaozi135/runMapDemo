package com.tencent.morefun.naruto.plugin.motion.data
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;

	public class ComboActionInfo extends BaseActionInfo
	{
		public var activiteHeros:Array = []; //进攻英雄info
		public var afterActionList:Array = [];//归位忍者列表
		
		public function ComboActionInfo()
		{
			actionType = ActionTypeDef.COMBO;
		}
		
		override public function isHoldAction():Boolean
		{
			var skillInfo:SkillInfo;
			
			for each(var activityHero:ActivityHero in activiteHeros)
			{
				skillInfo = FightManagerCenter.skillMgr.getSkillInfo(activityHero.skillId);
				if(skillInfo.hold)
				{
					return true;
				}
			}
			
			return false;
		}
		
		override public function getMotionPos():Array
		{
			var arr:Array = [];
			for each(var activtiyHero:ActivityHero in activiteHeros)
			{
				arr.push(activtiyHero.pos);
				for each(var passiveHero:PassiveHero in activtiyHero.passiveHeros)
				{
					arr.push(passiveHero.pos);
				}
				
				arr = arr.concat(activtiyHero.cahootPos);
			}
			
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

			activiteHeros = null;
			afterActionList = null;
		}
	}
}