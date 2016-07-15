package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight
{
	
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.plugin.motion.data.AttributeChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.BeHitEffectDef;
	import com.tencent.morefun.naruto.plugin.motion.data.HpChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.KathaChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.data.SkillHitPointInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.notice.CancelSkillNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.HpChangedNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.KathaChangedNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.SlowRenderNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.StartVideoNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.UIHitNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.UpdateSkillStatusNotice;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.motion.player.data.SkillActionCallBackTypeDef;
	
	import flash.geom.Point;
	
    import com.tencent.morefun.naruto.i18n.I18n;
	public class EventAttackAction extends BaseBattleAction
	{
		private static var debugInfoList:Array = [];
		
		private var _updateDefenceCallBack:Function;
		private var _hitCallBack:Function;
		private var _playHitEffect:Function;
		private var _playNinjaHitEffect:Function;
		private var _totalHitTime:int;
		
		private var playingEffects:Array = [];
		
		private var actionEnd:Boolean;
		private var hitNum:int;
		private var orginHitNum:int;
		
		private var curDebugInfo:DebugInfo;
		
		public function EventAttackAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			var screenEffect:EffectInfo;
			
			hitNum = activityHero.hitNum;
			orginHitNum = hitNum;
			
			setRemainFrame(activityNinja, skillInfo);
			_totalHitTime = activityNinja.getRoleFrameEventIndex(skillInfo.attackAction, RenderEvent.HIT, 100).length;
			
			EventCenter.addEventHandler(activityNinja, RenderEvent.HIT, onHitEvent, true);
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_SKILL_EFFECT, onPlaySkillEffect, true);
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_HIT_EFFECT, onPlayHitEffect, true);
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_FULL_SCREEN_EFFECT, onPlayfullScreenEffect, true);
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_VIDEO, onPlayVideo, true);
			
			EventCenter.addEventHandler(activityNinja, RenderEvent.HIT, onHitEvent, true);
			EventCenter.addEventHandler(activityNinja, RenderEvent.EFFECT_END, onEffectEnd, true);
			
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_HIT_EFFECT, onPlayHitEffect, true);
			EventCenter.addEventHandler(activityNinja, RenderEvent.ROLE_END, onActionEnd, true);
			EventCenter.addEventHandler(activityNinja, RenderEvent.ACTION_INTERRUPT, onActionIntterupt, true);
			EventCenter.addEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.EFFECT_END, onEffectEnd, true);
			EventCenter.addEventHandler(FightManagerCenter.sceneMgr.faceEffect, RenderEvent.EFFECT_END, onEffectEnd, true);
			
			if(activityNinja.resComplete)
			{
				resEventCheck();
				activityNinja.playRoleAction(skillInfo.attackAction, false);
			}
			else
			{
				//默认资源的情况下
				
				FightManagerCenter.buffMgr.executeBuff(activityHero.buffInfos, 2);
				FightManagerCenter.buffMgr.executeEffect(activityHero.buffEffectInfos, 2);
				FightManagerCenter.shieldMgr.execute(activityHero.shieldInfos, 2);
				EventCenter.executeHandler(data, SkillActionCallBackTypeDef.PLAY_NEXT_SKILL);
				
				curDamageCount = 0;
				curHitCount = 0;
				maxHitCount = 1;
				playingEffects = [];
				updateImmediately();
				onActionEnd();
			}
			
			//			if(getDebugInfo(activityHero.pos, skillInfo.id) != null)
			//			{
			//				throw new Error("debug");
			//			}
			//			
			//			curDebugInfo = new DebugInfo();
			//			curDebugInfo.pos = activityHero.pos;
			//			curDebugInfo.skillId = skillInfo.id;
			
			//			addDebugInfo(curDebugInfo);
			
			logger.output("EventAttackAction", "Start", "pos", activityHero.pos, "skillId", skillInfo.id, "index", index);
		}
		
		private function resEventCheck():void
		{
			var hitEventNum:int;
			var hitEffectEventNum:int;
			var skillEffectEventNum:int;
			var fullScreenEventNum:int;
			var hitEffectCfgNum:int;
			
			for each(var hitPointInfo:SkillHitPointInfo in skillInfo.hitPointInfoList)
			{
				if(hitPointInfo.majorHitEffectId != 0 || hitPointInfo.minorHitEffectId != 0)
				{
					hitEffectCfgNum += 1;
				}
			}
			
			hitEventNum = activityNinja.getRoleFrameEventIndex(skillInfo.attackAction, RenderEvent.HIT, 100).length;
			hitEffectEventNum = activityNinja.getRoleFrameEventIndex(skillInfo.attackAction, RenderEvent.PLAY_HIT_EFFECT, 100).length;
			skillEffectEventNum = activityNinja.getRoleFrameEventIndex(skillInfo.attackAction, RenderEvent.PLAY_SKILL_EFFECT, 100).length;
			fullScreenEventNum = activityNinja.getRoleFrameEventIndex(skillInfo.attackAction, RenderEvent.PLAY_FULL_SCREEN_EFFECT, 100).length;
			
			if(hitEventNum == 0)
			{
				FightManagerCenter.buffMgr.executeBuff(activityHero.buffInfos, 2);
				FightManagerCenter.buffMgr.executeEffect(activityHero.buffEffectInfos, 2);
				FightManagerCenter.shieldMgr.execute(activityHero.shieldInfos, 2);
			}
			
			if(hitEventNum == 0 && skillInfo.playDefenceAction == true)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4356_0") + activityNinja.cfg.cfgInfo.id + I18n.lang("as_motion_1451031573_4356_1") + activityNinja.cfg.cfgInfo.refId + "]" + activityNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4356_2") + skillInfo.refId +"]" + skillInfo.name + I18n.lang("as_motion_1451031573_4356_3") + skillInfo.attackAction + I18n.lang("as_motion_1451031573_4356_4"));
			}
			
			if(hitEffectEventNum != hitEffectCfgNum)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4357_0") + activityNinja.cfg.cfgInfo.id + I18n.lang("as_motion_1451031573_4357_1") + activityNinja.cfg.cfgInfo.refId + "]" + activityNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4357_2") + skillInfo.refId +"]" + skillInfo.name + I18n.lang("as_motion_1451031573_4357_3"));
			}
			
			if(skillEffectEventNum != skillInfo.skillEffectIdList.length)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4358_0") + activityNinja.cfg.cfgInfo.id + I18n.lang("as_motion_1451031573_4358_1") + activityNinja.cfg.cfgInfo.refId + "]" + activityNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4358_2") + skillInfo.refId +"]" + skillInfo.name + I18n.lang("as_motion_1451031573_4358_3"));
			}
			
			if(fullScreenEventNum != skillInfo.fullScreenEffectIdList.length)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4359_0") + activityNinja.cfg.cfgInfo.id + I18n.lang("as_motion_1451031573_4359_1") + activityNinja.cfg.cfgInfo.refId + "]" + activityNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4359_2") + skillInfo.refId +"]" + skillInfo.name + I18n.lang("as_motion_1451031573_4359_3"));
			}
		}
		
		override protected function onParentActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.HIT, onHitEvent);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SKILL_EFFECT, onPlaySkillEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_HIT_EFFECT, onPlayHitEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_FULL_SCREEN_EFFECT, onPlayfullScreenEffect);
			
			EventCenter.removeEventHandler(activityNinja, RenderEvent.HIT, onHitEvent);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.EFFECT_END, onEffectEnd);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_HIT_EFFECT, onPlayHitEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.ACTION_INTERRUPT, onActionIntterupt);
			EventCenter.removeEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.EFFECT_END, onEffectEnd);
			EventCenter.removeEventHandler(FightManagerCenter.sceneMgr.faceEffect, RenderEvent.EFFECT_END, onEffectEnd);
		}
		
		private function setRemainFrame(activtiyNinja:Ninja, skillInfo:SkillInfo):void
		{
			var actionFrame:int;
			var remainFrame:int;
			
			actionFrame = activtiyNinja.getRoleFrameNum(skillInfo.attackAction);
			activtiyNinja.remainActionFrame = actionFrame;
		}
		
		private function onPlayHitEffect():void
		{
			for each(var passiveHero:PassiveHero in passiveHeros)
			{
				if(passiveHero.isDodge == false)
				{
					if(isBeatBack)//击退的情况 非最后一下仅主受击者扣血
					{
						if(passiveHero.behitEffect != BeHitEffectDef.BEATBACK_EFFECT)
						{
							_playHitEffect(passiveHero);
						}
					}
					else
					{
						_playHitEffect(passiveHero);
					}
					
					_playNinjaHitEffect(passiveHero);
				}
			}
			
			curHitEffectIndex += 1;
		}
		
		private function onPlayfullScreenEffect():void
		{
			var mirror:Boolean;
			var verticalPos:int;
			var verticalPosition:Point;
			var fullScreenEffect:EffectInfo;
			var firstPassiveNinja:Ninja;
			var firstPassiveHero:PassiveHero;
			
			//			if(passiveHeros.length == 0)
			//			{
			//				throw new Error("passiveHero len invaild");
			//			}
			
			firstPassiveHero = passiveHeros[0];
			fullScreenEffect = skillInfo.fullScreenEffectList[curFullScreenEffectIndex];
			if(fullScreenEffect.domain == null)
			{
				return ;
			}
			
			if(fullScreenEffect.target != EffectDef.TARGET_FULL_SCREEN && 
				fullScreenEffect.target != EffectDef.TARGET_FULL_SCREEN_ATTACK &&
				fullScreenEffect.target != EffectDef.TARGET_FULL_SCREEN_DEFENCE &&
				fullScreenEffect.target != EffectDef.VERTICAL_FULL_SCREEN_DEFENCE &&
				fullScreenEffect.target != EffectDef.TARGET_FULL_SCREEN_TEAM &&
				fullScreenEffect.target != EffectDef.HORIZONTAL_FULL_SCREEN_DEFENCE &&
				fullScreenEffect.target != EffectDef.VERTICAL_FULL_SCREEN_TEAM)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4361_0") + skillInfo.id + I18n.lang("as_motion_1451031573_4361_1") + fullScreenEffect.id + I18n.lang("as_motion_1451031573_4361_2"));
			}
			
			fullScreenEffect = fullScreenEffect.clone();
			playingEffects.push(fullScreenEffect);
			switch(fullScreenEffect.target)
			{
				case EffectDef.TARGET_FULL_SCREEN:
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, false);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect);
					break;
				
				case EffectDef.TARGET_FULL_SCREEN_ATTACK:
					mirror = !activityNinja.isRealLeft;
					if(isRevert){mirror = !mirror;}
					
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, mirror, 665);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect);
					break;
				
				case EffectDef.TARGET_FULL_SCREEN_DEFENCE:
					mirror = activityNinja.isRealLeft;
					if(isRevert){mirror = !mirror;}
					
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, mirror, 665);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect);
					break;
				
				case EffectDef.VERTICAL_FULL_SCREEN_DEFENCE:
					mirror = !activityNinja.isRealLeft;
					if(isRevert){mirror = !mirror;}
					
					verticalPos = SceneConfig.getVerticalPos(firstPassiveHero.pos);
					verticalPosition = SceneConfig.getPositionInfo(verticalPos);
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, mirror, 0);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect, verticalPosition.x, verticalPosition.y);
					break;
				
				case EffectDef.TARGET_FULL_SCREEN_TEAM:
					mirror = !activityNinja.isRealLeft;
					if(isRevert){mirror = !mirror;}
					verticalPos = SceneConfig.getTeamPos(firstPassiveHero.pos);
					verticalPosition = SceneConfig.getPositionInfo(verticalPos);
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, mirror, 0);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect, verticalPosition.x, verticalPosition.y);
					break;
				
				case EffectDef.HORIZONTAL_FULL_SCREEN_DEFENCE:
					mirror = !activityNinja.isRealLeft;
					if(isRevert){mirror = !mirror;}
					verticalPos = SceneConfig.getHorizontalPos(firstPassiveHero.pos);
					verticalPosition = SceneConfig.getPositionInfo(verticalPos);
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, mirror, 0);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect, verticalPosition.x, verticalPosition.y);
					break;
				
				case EffectDef.VERTICAL_FULL_SCREEN_TEAM:
					mirror = !activityNinja.isRealLeft;
					if(isRevert){mirror = !mirror;}
					verticalPos = SceneConfig.getTeamVerticalPos(firstPassiveHero.pos);
					verticalPosition = SceneConfig.getPositionInfo(verticalPos);
					FightManagerCenter.sceneMgr.addFaceEffect(fullScreenEffect, mirror, 0);
					FightManagerCenter.sceneMgr.playFaceEffect(fullScreenEffect, verticalPosition.x, verticalPosition.y);
					break;
			}
			
			curFullScreenEffectIndex += 1;
		}
		
		private function onPlayVideo():void
		{
			new StartVideoNotice(skillInfo.videoUrl).send();
		}
		
		private function onPlaySkillEffect():void
		{
			var mirror:Boolean;
			var skillEffectInfo:EffectInfo;
			var effectInfoPoint:Point;
			
			skillEffectInfo = skillInfo.skillEffectList[curSkillEffectIndex];
			if(skillEffectInfo == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4362_0") + skillInfo.id + I18n.lang("as_motion_1451031573_4362_1") + curSkillEffectIndex + I18n.lang("as_motion_1451031573_4362_2"));
				return ;
			}
			
			if(skillEffectInfo.domain == null)
			{
				return ;
			}
			
			skillEffectInfo = skillEffectInfo.clone();
			playingEffects.push(skillEffectInfo);
			
			if(skillEffectInfo.target != EffectDef.TARGET_ATTACK && 
				skillEffectInfo.target != EffectDef.TARGET_SCENE_ATTACK)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4363_0") + skillInfo.id + I18n.lang("as_motion_1451031573_4363_1") + skillEffectInfo.id + I18n.lang("as_motion_1451031573_4363_2"));
			}
			
			switch(skillEffectInfo.target)
			{
				case EffectDef.TARGET_ATTACK:
					activityNinja.addEffect(skillEffectInfo);
					activityNinja.playEffect(skillEffectInfo);
					break;
				case EffectDef.TARGET_SCENE_ATTACK:
					mirror = !activityNinja.isRealLeft;
					if(isRevert){mirror = !mirror;}
					
					effectInfoPoint = activityNinja.getEffectInfoPoint(skillEffectInfo);
					FightManagerCenter.sceneMgr.addEffect(skillEffectInfo, mirror);
					FightManagerCenter.sceneMgr.playEffect(skillEffectInfo, activityNinja.x + effectInfoPoint.x, activityNinja.y + effectInfoPoint.y);
					break;
			}
			
			curSkillEffectIndex += 1;
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
			
			if(playingEffects.indexOf(effectInfo) != -1)
			{
				playingEffects.splice(playingEffects.indexOf(effectInfo), 1);
				removeEffect(effectInfo);
				endCheck();
			}
		}
		
		private function removeEffect(effectInfo:EffectInfo):void
		{
			switch(effectInfo.target)
			{
				case EffectDef.TARGET_ATTACK:
					activityNinja.removeEffect(effectInfo);
					curEndSkillEffectIndex += 1;
					break;
				case EffectDef.TARGET_SCENE_ATTACK:
					FightManagerCenter.sceneMgr.removeEffect(effectInfo);
					curEndSkillEffectIndex += 1;
					break;
				case EffectDef.TARGET_FULL_SCREEN:
					FightManagerCenter.sceneMgr.removeFaceEffect(effectInfo);
					curEndFullScreenEffectIndex += 1;
					break;
			}
		}
		
		private function onActionEnd():void
		{
			activityNinja.remainActionFrame = 0;
			
			if(activityNinja.isRealLeft)
			{
				activityNinja.x += skillInfo.afterAttackOffsetPoint.x;
				activityNinja.y += skillInfo.afterAttackOffsetPoint.y;
			}
			else
			{
				activityNinja.x -= skillInfo.afterAttackOffsetPoint.x;
				activityNinja.y -= skillInfo.afterAttackOffsetPoint.y;
			}
			
			EventCenter.removeEventHandler(activityNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SKILL_EFFECT, onPlaySkillEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_HIT_EFFECT, onPlayHitEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_FULL_SCREEN_EFFECT, onPlayfullScreenEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_VIDEO, onPlayVideo);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.HIT, onHitEvent);
			
			if(needHideShadow)
			{
				activityNinja.showShadow();
			}
			
			actionEnd = true;
			if(activityNinja.data.hp != 0)
			{
				activityNinja.idle();
				endCheck();
			}
			else
			{
				activityNinja.dead(endCheck, null, false);
			}
		}
		
		private function onActionIntterupt():void
		{
			activityNinja.remainActionFrame = 0;
			
			//			if(activityNinja.isRealLeft)
			//			{
			//				activityNinja.x += skillInfo.afterAttackOffsetPoint.x;
			//				activityNinja.y += skillInfo.afterAttackOffsetPoint.y;
			//			}
			//			else
			//			{
			//				activityNinja.x -= skillInfo.afterAttackOffsetPoint.x;
			//				activityNinja.y -= skillInfo.afterAttackOffsetPoint.y;
			//			}
			actionEnd = true;
			EventCenter.removeEventHandler(activityNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SKILL_EFFECT, onPlaySkillEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_HIT_EFFECT, onPlayHitEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_FULL_SCREEN_EFFECT, onPlayfullScreenEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_VIDEO, onPlayVideo);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.HIT, onHitEvent);
			
			
			endCheck();
		}
		
		private function endCheck():void
		{
			var isEnd:Boolean;
			
			isEnd = actionEnd && playingEffects.length == 0;
			
			if(isEnd)
			{
				logger.output("EventAttackAction", "End", "pos", activityHero.pos, "skillId", skillInfo.id, "index", index);
				
				//				removeDebugInfo(curDebugInfo);
				//补一下逻辑
				if(curHitCount != maxHitCount)
				{
					EventCenter.executeHandler(data, SkillActionCallBackTypeDef.PLAY_NEXT_SKILL);
					
					if(isOver == true)
					{
						new SlowRenderNotice().send();
					}
					
					if(activityHero.skillStatusChangedList.length != 0)
					{
						new UpdateSkillStatusNotice(activityHero.skillStatusChangedList).send();
					}
					
					updateOtherHp();
					updateOhterAttribute();
				}
				
				activityNinja.remainActionFrame = 0;
				end();
			}
		}
		
		public function set updateDefence(value:Function):void
		{
			_updateDefenceCallBack = value;
		}
		
		public function set hitCallBack(value:Function):void
		{
			_hitCallBack = value;
		}
		
		public function set playHitEffect(value:Function):void
		{
			_playHitEffect = value;
		}
		
		public function set playNinjaHitEffect(value:Function):void
		{
			_playNinjaHitEffect = value;
		}
		
		private function onHitEvent():void
		{
			var passiveNinja:Ninja;
			var skillHitNum:int;
			var skillStatus:Array;
			var ninja:Ninja;
			var passiveHero:PassiveHero;
			var katalChangedInfo:KathaChangedInfo;
			var updateActiviy:Boolean;
			
			updateActiviy = true;
			curHitCount += 1;
			if(hitPointInfo.ignoreDamage == false){curDamageCount += 1;}
			if(curHitCount == maxHitCount)
			{
				FightManagerCenter.buffMgr.executeBuff(activityHero.buffInfos, 2);
				FightManagerCenter.buffMgr.executeEffect(activityHero.buffEffectInfos, 2);
				FightManagerCenter.shieldMgr.execute(activityHero.shieldInfos, 2);
				
				if(skillInfo.playDefenceAction == false)
				{
					for each(passiveHero in passiveHeros)
					{
						if(passiveHero.pos == activityHero.pos)
						{
							updateActiviy = false;
						}
						
						passiveNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
						if(hitPointInfo.ignoreDamage == false)
						{
							passiveNinja.updateMoney(passiveHero.hpChangedInfo, 1, 1);
							passiveNinja.updateHp(passiveHero.hpChangedInfo, passiveHero.isCritical, 1, 1);
						}
					}
				}
			}
			
			skillHitNum = skillInfo.hitPointNumRefList[activityHero.hitPointIndex];
			for each(passiveHero in passiveHeros)
			{
				if(passiveHero.isDodge == false)
				{
					if(isBeatBack)
					{
						if(passiveHero.behitEffect != BeHitEffectDef.BEATBACK_EFFECT)
						{
							activityHero.hitNum += skillHitNum;
							new UIHitNotice(passiveHero.pos, activityHero.hitNum, skillHitNum).send();
						}
					}
					else
					{
						activityHero.hitNum += skillHitNum;
						new UIHitNotice(passiveHero.pos, activityHero.hitNum, skillHitNum).send();
					}
				}
				else
				{
					new UIHitNotice(passiveHero.pos, -1, -1).send();
				}
				
				//放弃自己的受击表现
				if(passiveHero.pos != activityHero.pos)
				{
					if(isBeatBack)//击退的情况 非最后一下仅主受击者扣血
					{
						switch(passiveHero.behitEffect)
						{
							case BeHitEffectDef.BEATBACK_EFFECT://被撞
								//								if(curHitCount != maxHitCount)
								//								{
								//									passiveNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
								//									passiveNinja.updateHp(passiveHero.hpChangedInfo, passiveHero.isCritical, maxHitCount, curHitCount);
								//								}
								break;
							case BeHitEffectDef.BEATBACK://被击飞
								_hitCallBack(passiveHero);
								break;
							default ://其他人
								_hitCallBack(passiveHero);
								break;
						}
					}
					else
					{
						_hitCallBack(passiveHero);
					}
				}
			}
			
			if(updateActiviy)
			{
				settingActivitHpChanged(curHitCount, maxHitCount);
			}
			if(isLastHit)
			{
				for each(katalChangedInfo in activityHero.kathaChangedNotifyList)
				{
					new KathaChangedNotice(-1, katalChangedInfo.teamId, katalChangedInfo.value).send();
				}
				
				for each(katalChangedInfo in activityHero.kathaChangedList)
				{
					ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(katalChangedInfo.pos);
					ninja.updateMp(katalChangedInfo);
				}
				
				if(curHitCount == maxHitCount)
				{
					EventCenter.executeHandler(data, SkillActionCallBackTypeDef.PLAY_NEXT_SKILL);
					
					if(isOver == true)
					{
						new SlowRenderNotice().send();
					}
					
					if(activityHero.skillStatusChangedList.length != 0)
					{
						new UpdateSkillStatusNotice(activityHero.skillStatusChangedList).send();
					}
					
					updateOtherHp();
					updateOhterAttribute();
				}
				
				noticeSkillCancel(activityHero.cancelSkillList);
			}
			
			activityHero.hitPointIndex += 1;
		}
		
		private function updateImmediately():void
		{
			var passiveNinja:Ninja;
			var skillHitNum:int;
			var skillStatus:Array;
			
			curHitCount += 1;
			activityHero.hitPointIndex += 1;
			skillHitNum = skillInfo.hitPointNumRefList[activityHero.hitPointIndex];
			for each(var passiveHero:PassiveHero in passiveHeros)
			{
				if(passiveHero.isDodge == false)
				{
					activityHero.hitNum += skillHitNum;
					new UIHitNotice(passiveHero.pos, activityHero.hitNum, skillHitNum).send();
				}
				else
				{
					new UIHitNotice(passiveHero.pos, -1, -1).send();
				}
				
				_updateDefenceCallBack(passiveHero);
			}
			
			settingActivitHpChanged(maxHitCount, maxHitCount);
			if(isLastHit)
			{
				for each(var katalChangedInfo:KathaChangedInfo in activityHero.kathaChangedNotifyList)
				{
					new KathaChangedNotice(-1, katalChangedInfo.teamId, katalChangedInfo.value).send();
				}
				
				if(curHitCount == maxHitCount)
				{
					FightManagerCenter.buffMgr.executeBuff(activityHero.buffInfos, 2);
					FightManagerCenter.buffMgr.executeEffect(activityHero.buffEffectInfos, 2);
					FightManagerCenter.shieldMgr.execute(activityHero.shieldInfos, 2);
					EventCenter.executeHandler(data, SkillActionCallBackTypeDef.PLAY_NEXT_SKILL);
					
					if(isOver == true)
					{
						new SlowRenderNotice().send();
					}
					
					if(activityHero.skillStatusChangedList.length != 0)
					{
						new UpdateSkillStatusNotice(activityHero.skillStatusChangedList).send();
					}
					
					updateOtherHp();
					updateOhterAttribute();
				}
				
				noticeSkillCancel(activityHero.cancelSkillList);
			}
		}
		
		private function noticeSkillCancel(cancelSkillList:Array):void
		{
			if(cancelSkillList.length != 0)
			{
				new CancelSkillNotice(cancelSkillList).send();
			}
		}
		private function settingActivitHpChanged(curHitCount:int, maxHitCount:int):void
		{
			var num:int;
			var ramian:int;
			
			if(hitPointInfo != null && hitPointInfo.ignoreDamage == false)
			{
				activityNinja.updateMoney(activityHero.hpChangedInfo, maxDamageCount, curDamageCount);
				activityNinja.updateHp(activityHero.hpChangedInfo, false, maxDamageCount, curDamageCount);
			}
			if(activityNinja.cfg.cfgInfo.noticeUI == true)
			{
				new HpChangedNotice(num, activityNinja.data.pos, activityNinja.data.teamId).send();
			}
		}
		
		private function updateOtherHp():void
		{
			var ninja:Ninja;
			
			for each(var hpChangedInfo:HpChangedInfo in activityHero.otherHpChangedInfoList)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(hpChangedInfo.pos);
				ninja.updateHp(hpChangedInfo, false, 1, 1);
				
				if(ninja.data.hp == 0)
				{
					ninja.dead();
				}
			}
		}
		
		private function updateOhterAttribute():void
		{
			var ninja:Ninja;
			var attributeChangedInfo:AttributeChangedInfo;
			
			if(activityHero.attributeChangedInfo)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(activityHero.attributeChangedInfo.pos);
				ninja.updateAttribute(activityHero.attributeChangedInfo);
			}
			
			for each(attributeChangedInfo in activityHero.otherAttributeChangedInfoList)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(attributeChangedInfo.pos);
				ninja.updateAttribute(attributeChangedInfo);
			}
		}
		
		
		private function addDebugInfo(debugInfo:DebugInfo):void
		{
			debugInfoList.push(debugInfo);
		}
		
		private function removeDebugInfo(debugInfo:DebugInfo):void
		{
			debugInfoList.splice(debugInfoList.indexOf(debugInfo), 1);
		}
		
		private function getDebugInfo(pos:int, skillId:int):DebugInfo
		{
			for each(var debugInfo:DebugInfo in debugInfoList)
			{
				if(debugInfo.pos == pos && debugInfo.skillId == skillId)
				{
					return debugInfo;
				}
			}
			
			return null;
		}
		
		override protected function onDestroy():void
		{
			super.onDestroy();
			
			EventCenter.removeEventHandler(activityNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SKILL_EFFECT, onPlaySkillEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_HIT_EFFECT, onPlayHitEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_FULL_SCREEN_EFFECT, onPlayfullScreenEffect);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_VIDEO, onPlayVideo);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.HIT, onHitEvent);
		}
		
		
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}
			
			debugInfoList = null;
			_updateDefenceCallBack = null;
			_hitCallBack = null;
			_playHitEffect = null;
			playingEffects = null;
			curDebugInfo = null;
		}
	}
}

class DebugInfo
{
	public var pos:int;
	public var skillId:int;
	
	public function DebugInfo()
	{
		
	}
	
	
	public function autoSetNull():void
	{
		
	}
}