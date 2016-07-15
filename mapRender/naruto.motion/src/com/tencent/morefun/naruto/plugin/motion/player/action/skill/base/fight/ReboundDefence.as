package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight
{
	import com.tencent.morefun.naruto.plugin.motion.data.SkillHitPointInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import flash.geom.Point;

	public class ReboundDefence extends BaseBattleAction
	{
		private var reboundHitPointInfo:SkillHitPointInfo;
		private var playingEffectList:Array = [];
		
		public function ReboundDefence(hitPointInfo:SkillHitPointInfo)
		{
			super();
			
			this.reboundHitPointInfo = hitPointInfo;
		}
		
		override protected function onBegin():void
		{
			activityNinja.endAction();
			
			activityNinja.playRoleActions(reboundHitPointInfo.majorDefenceActionList, false);
			playHitEffect();
			//			activityNinja.updateBuffHp(activityNinja.getBuffChangedHp(activityHero.buffInfos));
			EventCenter.addEventHandler(activityNinja, RenderEvent.ROLE_END, onActionEnd, true);
			
//			activityNinja.updateHp(activityHero.hpChangedInfo, false, curHitCount, maxHitCount);
		}
		
		public function playHitEffect():void
		{
			var hitEffect:EffectInfo;
			var effectInfoPoint:Point;
			
			hitEffect = reboundHitPointInfo.majorHitEffect;
			
			if(hitEffect == null 
				|| hitEffect.domain == null)
			{
				return ;
			}
			
			hitEffect = hitEffect.clone();
			playingEffectList.push(hitEffect);
			
			EventCenter.addEventHandler(activityNinja, RenderEvent.EFFECT_END, onEffectEnd);
			EventCenter.addEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.EFFECT_END, onEffectEnd);
			switch(hitEffect.target)
			{
				case EffectDef.TARGET_DEFENCE:
					activityNinja.addEffect(hitEffect);
					activityNinja.playEffect(hitEffect);
					break;
				case EffectDef.TARGET_SCENE_DEFENCE:
					effectInfoPoint = activityNinja.getEffectInfoPoint(hitEffect);
					
					FightManagerCenter.sceneMgr.addEffect(hitEffect, activityNinja.isRealLeft);
					FightManagerCenter.sceneMgr.playEffect(hitEffect, activityNinja.x + effectInfoPoint.x, activityNinja.y + effectInfoPoint.y);
					break;
			}
		}
		
		private function onEffectEnd(target:Object, args:Array):void
		{
			var effectInfoObj:Object;
			var effectInfo:EffectInfo;
			var ninja:Ninja;
			
			effectInfoObj = args[0];
			if(effectInfoObj == null)
			{
				return ;
			}
			
			effectInfo = effectInfoObj.effectInfo;
			if(playingEffectList.indexOf(effectInfo) != -1)
			{
				switch(effectInfo.target)
				{
					case EffectDef.TARGET_DEFENCE:
						activityNinja.removeEffect(effectInfo);
						break;
					case EffectDef.TARGET_SCENE_DEFENCE:
						FightManagerCenter.sceneMgr.removeEffect(effectInfo);
						break;
				}
			}
		}
		
		private function onActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.ROLE_END, onActionEnd);
			
			activityNinja.idle();
			this.end();
		}
		
		override protected function onDestroy():void
		{
			super.onDestroy();
			
			EventCenter.removeEventHandler(activityNinja, RenderEvent.EFFECT_END, onEffectEnd);
			EventCenter.removeEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.EFFECT_END, onEffectEnd);
			
			EventCenter.removeEventHandler(activityNinja, RenderEvent.ROLE_END, onActionEnd);
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			reboundHitPointInfo = null;
			playingEffectList = null;
		}
	}
}