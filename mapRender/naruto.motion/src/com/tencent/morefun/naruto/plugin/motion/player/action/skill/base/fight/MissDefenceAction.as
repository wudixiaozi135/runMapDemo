package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight
{

	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import flash.geom.Point;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class MissDefenceAction extends BaseBattleAction
	{
		private var missSkillInfo:SkillInfo;
		private var missEffectInfo:EffectInfo;
		
		private var _reboundHandler:Function;
		
		public function MissDefenceAction(passiveHero:PassiveHero, defenceActionIndex:int)
		{
			super();
			
			this.passiveHero = passiveHero;
			this.passiveNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
			this.defenceActionIndex = defenceActionIndex;
		}
		
		public function set reboundHandler(value:Function):void
		{
			_reboundHandler = value;
		}
		
		override protected function onBegin():void
		{
			passiveNinja.endAction();
			
			missSkillInfo = FightManagerCenter.skillMgr.getSkillInfo(passiveNinja.cfg.cfgInfo.miss);
			EventCenter.addEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt, true);
			EventCenter.addEventHandler(passiveNinja, RenderEvent.EFFECT_END, onEffectEnd, true);
			if(hitPointInfo.ignoreDamage == false)
			{
				passiveNinja.updateMoney(passiveHero.hpChangedInfo, maxDamageCount, curDamageCount)
				passiveNinja.updateHp(passiveHero.hpChangedInfo, passiveHero.isCritical, maxDamageCount, curDamageCount)
			}
			passiveNinja.hideUI();
			
			if(missSkillInfo.type == SkillDef.TYPE_MISS)
			{
				EventCenter.addEventHandler(passiveNinja, RenderEvent.EFFECT_END, onMissEffectEnd, true);
				
				passiveNinja.body.visible = false;
				playSkillEffect();
			}
			else
			{
				playAction();
				playSkillEffect();
			}
			
			
		}
		
		private function onMissEffectEnd(args:Array):void
		{
			var effectInfoObj:Object;
			var effectInfo:EffectInfo;
			
			effectInfoObj = args[0];
			if(effectInfoObj == null)
			{
				return ;
			}
			
			effectInfo = effectInfoObj.effectInfo;
			
			if(missEffectInfo == effectInfo)
			{
				removeEffect(missEffectInfo);
				passiveNinja.body.visible = true;
				playAction();
			}
		}
		
		private function playAction():void
		{
			if(passiveNinja.resComplete)
			{
				resCheck();
				passiveNinja.playRoleAction(missSkillInfo.attackAction, false);
			}
			else
			{
				onActionEnd();
			}
			
			if(missSkillInfo.type == SkillDef.TYPE_REBOUND)
			{
				_reboundHandler(missSkillInfo.hitPointInfoList[0]);
			}
			
			EventCenter.addEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd, true);
		}
		
		private function resCheck():void
		{
			//			var skillEffectEventNum:int;
			//			var fullScreenEventNum:int;
			
			//			skillEffectEventNum = passiveNinja.getRoleFrameEventIndex(missSkillInfo.attackAction, RenderEvent.PLAY_SKILL_EFFECT, 100).length;
			//			fullScreenEventNum = passiveNinja.getRoleFrameEventIndex(missSkillInfo.attackAction, RenderEvent.PLAY_FULL_SCREEN_EFFECT, 100).length;
			
			//			if(skillEffectEventNum != missSkillInfo.skillEffectIdList.length)
			//			{
			//				throw new Error("忍者:[" + passiveNinja.cfg.refId + "]" + passiveNinja.cfg.name + " 技能:[" + missSkillInfo.refId +"]" + missSkillInfo.name + " 资源技能特效播放次数与配置不一致");
			//			}
			
			//			if(fullScreenEventNum != missSkillInfo.fullScreenEffectIdList.length)
			//			{
			//				throw new Error("忍者:[" + passiveNinja.cfg.refId + "]" + passiveNinja.cfg.name + " 技能:[" + missSkillInfo.refId +"]" + missSkillInfo.name + " 资源全屏特效播放次数与配置不一致");
			//			}
		}
		
		private function playSkillEffect():void
		{
			var effectInfoPoint:Point;
			
			missEffectInfo = missSkillInfo.skillEffectList[0];
			if(missEffectInfo == null)
			{
				if(missSkillInfo.type == SkillDef.TYPE_MISS)
				{
					throw new Error(I18n.lang("as_motion_1451031573_4374_0") + passiveNinja.cfg.cfgInfo.refId + "]" + passiveNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4374_1") + missSkillInfo.refId +"]" + missSkillInfo.name + I18n.lang("as_motion_1451031573_4374_2"));
				}
				
				return ;
			}
			
			if(missEffectInfo.domain == null)
			{
				EventCenter.executeHandler(passiveNinja, RenderEvent.EFFECT_END, [{effectInfo:missEffectInfo}]);
				return ;
			}
			
			missEffectInfo = missEffectInfo.clone();
			if(missEffectInfo.target != EffectDef.TARGET_ATTACK && 
				missEffectInfo.target != EffectDef.TARGET_SCENE_ATTACK)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4375_0") + missEffectInfo.id + I18n.lang("as_motion_1451031573_4375_1"));
			}
			
			switch(missEffectInfo.target)
			{
				case EffectDef.TARGET_ATTACK:
					passiveNinja.addEffect(missEffectInfo);
					passiveNinja.playEffect(missEffectInfo);
					break;
				case EffectDef.TARGET_SCENE_ATTACK:
					effectInfoPoint = passiveNinja.getEffectInfoPoint(missEffectInfo);
					
					FightManagerCenter.sceneMgr.addEffect(missEffectInfo, passiveNinja.isRealLeft);
					FightManagerCenter.sceneMgr.playEffect(missEffectInfo, passiveNinja.x + effectInfoPoint.x, passiveNinja.y + effectInfoPoint.y);
					break;
			}
		}
		
		private function playfullScreenEffect():void
		{
			var verticalPos:int;
			var verticalPosition:Point;
			var fullScreenEffect:EffectInfo;
			
			fullScreenEffect = missSkillInfo.fullScreenEffectList[curHitCount];
			
			if(fullScreenEffect == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4376"));
				return ;
			}
			
			if(fullScreenEffect.domain == null)
			{
				return ;
			}
			
			fullScreenEffect = fullScreenEffect.clone();
			switch(fullScreenEffect.target)
			{
				case EffectDef.TARGET_FULL_SCREEN:
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect);
					break;
				
				case EffectDef.TARGET_FULL_SCREEN_ATTACK:
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, activityNinja.isRealLeft, 665);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect);
					break;
				
				case EffectDef.TARGET_FULL_SCREEN_DEFENCE:
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, !activityNinja.isRealLeft, 665);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect);
					break;
				
				case EffectDef.VERTICAL_FULL_SCREEN_DEFENCE:
					verticalPos = SceneConfig.getVerticalPos(activityHero.pos);
					verticalPosition = SceneConfig.getPositionInfo(verticalPos);
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, activityNinja.isRealLeft, 0);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect, verticalPosition.x, verticalPosition.y);
					break;
				
				case EffectDef.TARGET_FULL_SCREEN_TEAM:
					verticalPos = SceneConfig.getTeamPos(activityHero.pos);
					verticalPosition = SceneConfig.getPositionInfo(verticalPos);
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, activityNinja.isRealLeft, 0);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect, verticalPosition.x, verticalPosition.y);
					break;
				
				case EffectDef.HORIZONTAL_FULL_SCREEN_DEFENCE:
					verticalPos = SceneConfig.getHorizontalPos(activityHero.pos);
					verticalPosition = SceneConfig.getPositionInfo(verticalPos);
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, activityNinja.isRealLeft, 0);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect, verticalPosition.x, verticalPosition.y);
					break;
				
				case EffectDef.VERTICAL_FULL_SCREEN_TEAM:
					verticalPos = SceneConfig.getTeamVerticalPos(activityHero.pos);
					verticalPosition = SceneConfig.getPositionInfo(verticalPos);
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, activityNinja.isRealLeft, 0);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect, verticalPosition.x, verticalPosition.y);
					break;
			}
		}
		
		private function onEffectEnd(args:Array):void
		{
			var effectInfo:EffectInfo;
			var effectInfoObj:Object;
			
			effectInfoObj = args[0];
			if(effectInfoObj == null)
			{
				return ;
			}
			
			effectInfo = effectInfoObj.effectInfo;
			if(effectInfo == missEffectInfo)
			{
				removeEffect(effectInfo);
			}
		}
		
		private function playMissAction(args:Array):void
		{
			var effectInfo:EffectInfo;
			
			passiveNinja.body.visible = true;
			effectInfo = args[0].effectInfo;
			
			if(effectInfo == missEffectInfo)
			{
				playAction();
			}
		}
		
		private function removeEffect(effectInfo:EffectInfo):void
		{
			switch(effectInfo.target)
			{
				case EffectDef.TARGET_ATTACK:
					passiveNinja.removeEffect(effectInfo);
					break;
				case EffectDef.TARGET_SCENE_ATTACK:
					FightManagerCenter.sceneMgr.removeEffect(effectInfo);
					break;
				case EffectDef.TARGET_FULL_SCREEN:
					FightManagerCenter.sceneMgr.removeFaceEffect(effectInfo);
					break;
			}
		}
		
		private function onActionEnd():void
		{
			passiveNinja.showUI();
			passiveNinja.idle();
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.EFFECT_END, onMissEffectEnd);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt);
			
			if(passiveHero.isDead)
			{
				passiveNinja.dead();
			}
			
			end();
		}
		
		private function onActionInterrupt():void
		{
			passiveNinja.showUI();
			passiveNinja.body.visible = true;
			passiveNinja.idle();
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.EFFECT_END, onMissEffectEnd);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt);
			
			if(passiveHero.isDead)
			{
				passiveNinja.dead();
			}
			
			end();
		}
		
		override protected function onDestroy():void
		{
			super.onDestroy();
			
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.EFFECT_END, onMissEffectEnd);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt);
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			missSkillInfo = null;
			missEffectInfo = null;
			_reboundHandler = null;
		}
	}
}