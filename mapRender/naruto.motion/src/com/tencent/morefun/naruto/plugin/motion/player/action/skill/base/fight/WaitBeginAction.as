package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight
{

	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.MoveToDestAction;
	import flash.geom.Point;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class WaitBeginAction extends BaseBattleAction
	{
		public function WaitBeginAction()
		{
			super();
		}
		
		private var waitFrame:int;
		override protected function onBegin():void
		{
			var destPoint:Point;
			var activtiyPos:Point;
			var activtiyFrameNum:int;
			var passiveFrameNum:int;
			var beforeSkillRemainFrame:int;
			
			if(skillInfo.hasAction == false)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4381_0") + skillInfo.id + I18n.lang("as_motion_1451031573_4381_1"));
			}
			
			beforeSkillRemainFrame = 0;//activityNinja.remainActionFrame
			waitFrame = skillInfo.comboWaitFrame;
			
			if(skillInfo.type != SkillDef.TYPE_COMBO)
			{
				FightManagerCenter.delayCallBack(onWaitComplete, waitFrame);
				return ;
			}
			
			this.passiveHero = this.passiveHeros[0];
			
			destPoint = getDestPoint(activityHero.pos);
			if(activityNinja.x != destPoint.x || activityNinja.y != destPoint.y)
			{
				activtiyFrameNum += activityNinja.getActionsFrameNum([NinjaMotionDef.run1_1]) + 6 + activityNinja.getActionsFrameNum([NinjaMotionDef.run1_3]);
			}
			
			passiveHero = activityHero.passiveHeros[0];
			activtiyFrameNum += getHitPointIndex(activityNinja);
			if(skillInfo.sceneMaskAlpha != 0)
			{
				activtiyFrameNum += 7;
			}
			
			if(skillInfo.type == SkillDef.TYPE_COMBO)
			{
				passiveFrameNum = passiveNinja.remainActionFrame + beforeSkillRemainFrame;
				waitFrame = passiveFrameNum - activtiyFrameNum;
				waitFrame = Math.max(0, waitFrame);
			}
			else
			{
				passiveFrameNum = passiveNinja.remainActionFrame + beforeSkillRemainFrame;
				waitFrame = passiveFrameNum;
				waitFrame = Math.max(0, waitFrame);
			}
			
			FightManagerCenter.delayCallBack(onWaitComplete, waitFrame);
		}
		
		private function getHitPointIndex(ninja:Ninja):int
		{
			var frameIndexArr:Array;
			var hitPointIndex:int;
			
			frameIndexArr = ninja.getRoleFrameEventIndex(skillInfo.attackAction, RenderEvent.HIT_POINT, 100);
			if(frameIndexArr.length != 0)
			{
				hitPointIndex = frameIndexArr[frameIndexArr.length - 1];
				return hitPointIndex;
			}
			
			return hitPointIndex;
		}
		
		private function onWaitComplete():void
		{			
			activityNinja.endAction();
			this.end();
		}
		
		private function getDestPoint(activityPos:int):Point
		{
			var moveToDestAction:MoveToDestAction;
			
			moveToDestAction = new MoveToDestAction();
			moveToDestAction.data = data;
			return moveToDestAction.getDestPoint(activityPos);
		}
		
		override protected function onDestroy():void
		{
			super.onDestroy();
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

		}
	}
}