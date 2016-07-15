package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight
{

	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.data.SkillHitPointInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import flash.geom.Point;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class PlayHitEffectAction extends BaseBattleAction
	{
		private var playingEffectList:Array = [];
		
		public function PlayHitEffectAction(passiveHero:PassiveHero)
		{
			super();
			
			this.passiveHero = passiveHero;
			passiveNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
		}
		
		override protected function onBegin():void
		{
			this.end();
			
			playHitEffect();
		}
		
		public function playHitEffect():void
		{
			var hitEffect:EffectInfo;
			var effectInfoPoint:Point;
			var hitEffectHitPoint:SkillHitPointInfo;
			
			hitEffectHitPoint = skillInfo.hitPointInfoList[curHitEffectIndex];
			
			if(hitEffectHitPoint == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4378_0") + activityNinja.cfg.cfgInfo.refId + "]" + activityNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4378_1") + skillInfo.refId +"]" + skillInfo.name + I18n.lang("as_motion_1451031573_4378_2") + curHitEffectIndex + "]" + skillInfo.id + I18n.lang("as_motion_1451031573_4378_3"));
			}
			
			if(passiveHero.isMajor)
			{
				hitEffect = hitEffectHitPoint.majorHitEffect;
			}
			else
			{
				hitEffect = hitEffectHitPoint.minorHitEffect;
			}
			
			if(hitEffect == null 
				|| hitEffect.domain == null)
			{
				return ;
			}
			
			hitEffect = hitEffect.clone();
			passiveNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
			
			playingEffectList.push(hitEffect);
			
			if(hitEffect.target != EffectDef.TARGET_DEFENCE && 
				hitEffect.target != EffectDef.TARGET_SCENE_DEFENCE)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4379_0") + activityNinja.cfg.cfgInfo.refId + "]" + activityNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4379_1") + skillInfo.refId +"]" + skillInfo.name + I18n.lang("as_motion_1451031573_4379_2") + curHitEffectIndex + "]" + hitEffect.id + I18n.lang("as_motion_1451031573_4379_3"));
			}
			
			EventCenter.addEventHandler(passiveNinja, RenderEvent.EFFECT_END, onEffectEnd);
			EventCenter.addEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.EFFECT_END, onEffectEnd);
			
			switch(hitEffect.target)
			{
				case EffectDef.TARGET_DEFENCE:
					passiveNinja.addEffect(hitEffect, isRevert);
					passiveNinja.playEffect(hitEffect);
					break;
				case EffectDef.TARGET_SCENE_DEFENCE:
					effectInfoPoint = activityNinja.getEffectInfoPoint(hitEffect);
					FightManagerCenter.sceneMgr.addEffect(hitEffect, isRevert);
					FightManagerCenter.sceneMgr.playEffect(hitEffect, passiveNinja.x + effectInfoPoint.x, passiveNinja.y + effectInfoPoint.y);
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
						this.passiveNinja.removeEffect(effectInfo);
						break;
					case EffectDef.TARGET_SCENE_DEFENCE:
						FightManagerCenter.sceneMgr.removeEffect(effectInfo);
						break;
				}
				
				EventCenter.removeEventHandler(passiveNinja, RenderEvent.EFFECT_END, onEffectEnd);
				EventCenter.removeEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.EFFECT_END, onEffectEnd);
			}
		}
		
		override protected function onDestroy():void
		{
			super.onDestroy();
			
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.EFFECT_END, onEffectEnd);
			EventCenter.removeEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.EFFECT_END, onEffectEnd);
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			playingEffectList = null;
		}
	}
}