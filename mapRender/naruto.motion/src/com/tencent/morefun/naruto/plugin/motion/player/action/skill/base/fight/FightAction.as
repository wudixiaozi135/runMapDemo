package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight
{

	import com.tencent.morefun.naruto.plugin.motion.data.BeHitEffectDef;
	import com.tencent.morefun.naruto.plugin.motion.data.DefenceAttribute;
	import com.tencent.morefun.naruto.plugin.motion.data.MissInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveEffectDef;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.data.SkillHitPointInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class FightAction extends BaseBattleAction
	{
		private var attackAction:AttackAction;
		
		public function FightAction(data:Object)
		{
			super();
			
			this.data = data;
			
			loadMissRes();
			loadSkillRes();
		}
		
		override protected function onBegin():void
		{
			if(needHideShadow)
			{
				activityNinja.hideShadow();
			}
			setingHitPointNum();
			calculateRemainFrame();
			setBeatbackEffectHeros(getBeatBackHeros());
			
			attackAction = new AttackAction(data, doDefence, doUpdateDefenceHp);
			addSubAction(attackAction, 0);
		}
		
		private function loadSkillRes():void
		{
			FightManagerCenter.skillMgr.getSkillInfo(skillInfo.id);
		}
		
		private function loadMissRes():void
		{
			var missSkillInfo:SkillInfo;
			var missInfo:MissInfo;
			var passiveNinja:Ninja;
			
			if(activityNinja.cfg.resCfgInfo.ignoreDepth)
			{
				FightManagerCenter.sceneMgr.setTopItem(activityNinja.data.pos);
			}
			
			for each(var passiveHero:PassiveHero in passiveHeros)
			{
				passiveNinja =  FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
				if(passiveNinja.cfg.resCfgInfo.ignoreDepth)
				{
					FightManagerCenter.sceneMgr.setBottemItem(passiveNinja.data.pos);
				}
				if(passiveHero.isDodge)
				{
					try
					{
						missSkillInfo = FightManagerCenter.skillMgr.getSkillInfo(passiveNinja.cfg.cfgInfo.miss);
					}
					catch(e:Error)
					{
						throw new Error(I18n.lang("as_motion_1451031573_4368_0") + passiveNinja.cfg.cfgInfo.refId + "]" + passiveNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4368_1"));
					}
					
					if(missSkillInfo && missSkillInfo.hasAction == false)
					{
						throw new Error(I18n.lang("as_motion_1451031573_4369_0") + passiveNinja.cfg.cfgInfo.miss + I18n.lang("as_motion_1451031573_4369_1"));
					}
				}
			}
		}
		
		private function doUpdateDefenceHp(passiveHero:PassiveHero):void
		{
			var ninja:Ninja;
			//todo....考虑反震
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
			ninja.updateHp(passiveHero.hpChangedInfo, passiveHero.isCritical, 1, 1);
			
			if(ninja.data.hp <= 0)
			{
				ninja.dead();
			}
		}
		
		private function doDefence(passiveHero:PassiveHero):void
		{
			var ninja:Ninja;
			var defenceAction:BaseBattleAction;
			
			if(skillInfo.playDefenceAction == false)
			{
				return ;
			}
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
			if(passiveHero.isDodge)
			{
				defenceAction = new MissDefenceAction(passiveHero, 0);
				(defenceAction as MissDefenceAction).reboundHandler = doReboundHandler;
				addSubAction(defenceAction, 0);
				return ;
			}
			if(ninja.getShiled() && ninja.getShiled().hp == 0)
			{
				defenceAction = new ShieldDefenceAction(passiveHero, 0);
				addSubAction(defenceAction, 0);
				return ;
			}
			
			if(PassiveEffectDef.hasBatiEffect(ninja.getLogicEffectList()))
			{
				defenceAction = new BatiDefenceAction(passiveHero, 0);
				addSubAction(defenceAction, 0);
				return ;
			}
			
			playNextDefenceAction(passiveHero, 0);
		}
		
		private function doReboundHandler(hitPointInfo:SkillHitPointInfo):void
		{
//			var reboundAction:BaseBattleAction;
//			
//			reboundAction = new ReboundDefence(hitPointInfo);
//			addSubAction(reboundAction, 0);
//			
			attackAction.doReboundHandler(hitPointInfo);
		}
		
		private function playNextDefenceAction(passiveHero:PassiveHero, defenceActionIndex:int):void
		{
			if(isFixDefence(passiveHero, defenceActionIndex))
			{
				playFixDefenceAction(passiveHero, defenceActionIndex);
			}
			else
			{
				playDefenceAction(passiveHero, defenceActionIndex);
			}
		}
		
		private function isFixDefence(passiveHero:PassiveHero, defenceActionIndex:int):Boolean
		{
			var maxDefenceActionIndex:int;
			
			if(hitPointInfo == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4370_0") + skillInfo.refId +"]" + skillInfo.name + I18n.lang("as_motion_1451031573_4370_1") + maxHitCount);
			}
			
			if(passiveHero.isMajor)
			{
				maxDefenceActionIndex = hitPointInfo.majorDefenceAttributeList.length - 1;
				
				return defenceActionIndex > maxDefenceActionIndex && curHitCount == maxHitCount;
			}
			else
			{
				maxDefenceActionIndex = hitPointInfo.minorDefenceAttributeList.length - 1;
				
				return defenceActionIndex > maxDefenceActionIndex && curHitCount == maxHitCount;
			}
		}
		
		private function playFixDefenceAction(passiveHero:PassiveHero, defenceActionIndex:int):void
		{
			var skillInfo:SkillInfo;
			var defenceAttribute:DefenceAttribute;
			var needToPlayFixDefence:Boolean;
			
			if(passiveHero.isMajor)
			{
				defenceAttribute = hitPointInfo.majorDefenceAttributeList[hitPointInfo.majorDefenceAttributeList.length - 1];
			}
			else
			{
				defenceAttribute = hitPointInfo.minorDefenceAttributeList[hitPointInfo.minorDefenceAttributeList.length - 1];
			}
			
			if(nextSkillId != 0)
			{
				skillInfo = FightManagerCenter.skillMgr.getSkillInfo(nextSkillId);
				if(skillInfo.beHitState1 == 4)
				{
					needToPlayFixDefence = true;
				}
			}
			
			if(passiveHero.behitResult == 1)
			{
				needToPlayFixDefence = true;
			}
			
			if(needToPlayFixDefence)
			{
				playDefenceAction(passiveHero, defenceActionIndex);
			}
		}
		
		private function playDefenceAction(passiveHero:PassiveHero, defenceActionIndex:int):void
		{
			if(passiveHero.isMajor)
			{
				majorDefence(passiveHero, defenceActionIndex);
			}
			else
			{
				minorDefence(passiveHero, defenceActionIndex);
			}
		}
		
		private function majorDefence(passiveHero:PassiveHero, defenceActionIndex:int):void
		{
			var defenceAction:BaseBattleAction;
			var defenceAttribute:DefenceAttribute;
			
			defenceAttribute = hitPointInfo.majorDefenceAttributeList[defenceActionIndex] 
				|| hitPointInfo.majorDefenceAttributeList[hitPointInfo.majorDefenceAttributeList.length - 1];
			switch(defenceAttribute.type)
			{
				case SkillDef.DEFENCE_TYPE_BEACK_BACK:
					
					if(!hasBeatBackHero())
					{
						throw new Error(I18n.lang("as_motion_1451031573_4371_0") + activityNinja.cfg.cfgInfo.refId + "]" + activityNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4371_1") + skillInfo.refId +"]" + skillInfo.name + I18n.lang("as_motion_1451031573_4371_2"));
					}
					
					if(passiveHero.behitEffect == 5)
					{
						defenceAction = new BackDefence(passiveHero, defenceActionIndex);
						(defenceAction as BackDefence).playNextDefenceFunction = playNextDefenceAction;
						this.addSubAction(defenceAction, 0);
					}
					break;
				default :
					if(passiveHero.behitEffect != BeHitEffectDef.BEATBACK_EFFECT)
					{
						defenceAction = new NormatDefenceAction(passiveHero, defenceActionIndex);
						(defenceAction as NormatDefenceAction).playNextDefenceFunction = playNextDefenceAction;
						this.addSubAction(defenceAction, 0);
					}
					break;
			}
		}
		
		private function minorDefence(passiveHero:PassiveHero, defenceActionIndex:int):void
		{
			var defenceAction:BaseBattleAction;
			var defenceAttribute:DefenceAttribute;
			
			defenceAttribute = hitPointInfo.minorDefenceAttributeList[defenceActionIndex]
				|| hitPointInfo.majorDefenceAttributeList[hitPointInfo.minorDefenceAttributeList.length - 1];
			switch(defenceAttribute.type)
			{
				case SkillDef.DEFENCE_TYPE_BEACK_BACK:
					
					if(!hasBeatBackHero())
					{
						throw new Error(I18n.lang("as_motion_1451031573_4372_0") + activityNinja.cfg.cfgInfo.refId + "]" + activityNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4372_1") + skillInfo.refId +"]" + skillInfo.name + I18n.lang("as_motion_1451031573_4372_2"));
					}
					
					if(passiveHero.behitEffect == 5)
					{
						defenceAction = new BackDefence(passiveHero, defenceActionIndex);
						(defenceAction as BackDefence).playNextDefenceFunction = playNextDefenceAction;
						this.addSubAction(defenceAction, 0);
					}
					break;
				default :
					if(passiveHero.behitEffect != BeHitEffectDef.BEATBACK_EFFECT)
					{
						defenceAction = new NormatDefenceAction(passiveHero, defenceActionIndex);
						(defenceAction as NormatDefenceAction).playNextDefenceFunction = playNextDefenceAction;
						this.addSubAction(defenceAction, 0);
					}
					break;
			}
		}
		
		public function hasBeatBackHero():Boolean
		{
			for each(var passiveHero:PassiveHero in passiveHeros)
			{
				if(passiveHero.behitEffect == 5)
				{
					return true;
				}
			}
			
			return false;
		}
		
		public function getBeatBackHeros():Array
		{
			var beatBackHeros:Array;
			
			beatBackHeros = [];
			for each(var passiveHero:PassiveHero in passiveHeros)
			{
				if(passiveHero.behitEffect == 5)
				{
					beatBackHeros.push(passiveHero);
				}
			}
			
			return beatBackHeros;
		}
		
		public function setBeatbackEffectHeros(beatBackHeros:Array):void
		{
			for each(var passiveHero:PassiveHero in passiveHeros)
			{
				if(beatBackHeros.indexOf(passiveHero) != -1)
				{
					continue ;
				}
				for each(var beatbackHero:PassiveHero in beatBackHeros)
				{
					if(SceneConfig.isBeatbackEffectPos(beatbackHero.pos, passiveHero.pos))
					{
						passiveHero.behitEffect = BeHitEffectDef.BEATBACK_EFFECT;
						break;
					}
				}
			}
		}
		
		override public function end():void
		{
			if(activityNinja.cfg.resCfgInfo.ignoreDepth)
			{
				FightManagerCenter.sceneMgr.clearItemIndex(activityNinja.data.pos);
			}
			
			for each(var ninja:Ninja in passiveNinjas)
			{
				if(activityNinja.cfg.resCfgInfo.ignoreDepth)
				{
					FightManagerCenter.sceneMgr.clearItemIndex(ninja.data.pos);
				}
			}
			
			super.end();
		}
		
		private function setingHitPointNum():void
		{
			curHitCount = 0;
			curDamageCount = 0;
			
			maxDamageCount = skillInfo.damageCount;
			maxHitCount = skillInfo.hitPointInfoList.length;
		}
		
		public function calculateRemainFrame():void
		{
			var hitEventIndexList:Array;
			var lastHitIndex:int;
			var firstHitIndex:int;
			var lastHitPointInfo:SkillHitPointInfo;
			var missHitPointInfo:SkillHitPointInfo;
			var passiveNinja:Ninja;
			var missSkillInfo:SkillInfo;
			
			
			hitEventIndexList = activityNinja.getRoleFrameEventIndex(skillInfo.attackAction, RenderEvent.HIT, 100);
			if(hitEventIndexList.length == 0)
			{
				return ;
			}
			
			if(skillInfo.playDefenceAction == false)
			{
				return ;
			}
			
			lastHitIndex = hitEventIndexList[hitEventIndexList.length - 1];
			lastHitPointInfo = skillInfo.hitPointInfoList[skillInfo.hitPointInfoList.length - 1];
			activityNinja.remainActionFrame = activityNinja.getRoleFrameNum(skillInfo.attackAction) - lastHitIndex + 1;
			for each(var passiveHero:PassiveHero in passiveHeros)
			{
				passiveNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
				if(passiveHero.isDodge == false)
				{
					calculateBeHitDefenceFrameLen(passiveHero, lastHitPointInfo, passiveNinja);
				}
				else
				{
					missSkillInfo = FightManagerCenter.skillMgr.getSkillInfo(passiveNinja.cfg.cfgInfo.miss);
					calculateMissDefenceFrameNum(passiveNinja, missSkillInfo);
					
					if(missSkillInfo.type == SkillDef.TYPE_REBOUND)
					{
						missHitPointInfo = missSkillInfo.hitPointInfoList[0];
						activityNinja.remainActionFrame = getMajorDefenceNinjaFrameNum(missHitPointInfo, activityNinja);
					}
				}
			}
		}
		
		private function calculateBeHitDefenceFrameLen(passiveHero:PassiveHero, hitPointInfo:SkillHitPointInfo, ninja:Ninja):void
		{
			if(hitPointInfo == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4373_0") + activityNinja.cfg.cfgInfo.refId + "]" + activityNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4373_1") + skillInfo.refId +"]" + skillInfo.name + I18n.lang("as_motion_1451031573_4373_2"));
			}
			
			if(passiveHero.isMajor)
			{
				ninja.remainActionFrame = getMajorDefenceNinjaFrameNum(hitPointInfo, ninja);
			}
			else
			{
				ninja.remainActionFrame = getMinonDefenceNinjaFrameNum(hitPointInfo, ninja);
			}
		}
		
		private function getMajorDefenceNinjaFrameNum(hitPointInfo:SkillHitPointInfo, ninja:Ninja):int
		{
			var frameNum:int;
			var defenceAttribute:DefenceAttribute
			
			for each(defenceAttribute in hitPointInfo.majorDefenceAttributeList)
			{
				if(defenceAttribute.type == SkillDef.DEFENCE_TYPE_BEACK_BACK)
				{
					frameNum += getBeatBackDefenceNinjaFrameNum(hitPointInfo, ninja);
				}
				else if(defenceAttribute.type == SkillDef.DEFENCE_TYPE_IDLE)
				{
					frameNum += getIdelDefenceNinjaFrameNum();
				}
				else
				{
					frameNum += ninja.getRoleFrameNum(defenceAttribute.defenceAction);
				}
			}
			
			//			if(defenceAttribute.type != SkillDef.DEFENCE_TYPE_NORMAL || defenceAttribute.type != SkillDef.DEFENCE_TYPE_BEACK_BACK)
			//			{
			//				frameNum += ninja.getRoleFrameNum(defenceAttribute.fixAction);
			//			}
			
			return frameNum;
		}
		
		/**
		 *只计算被追打的情况 
		 * @param hitPointInfo
		 * @param ninja
		 * @return 
		 * 
		 */		
		private function getMinonDefenceNinjaFrameNum(hitPointInfo:SkillHitPointInfo, ninja:Ninja):int
		{
			var frameNum:int;
			var defenceAttribute:DefenceAttribute
			
			defenceAttribute = hitPointInfo.minorDefenceAttributeList[hitPointInfo.minorDefenceAttributeList.length - 1];
			if(defenceAttribute.type == SkillDef.DEFENCE_TYPE_BEACK_BACK)
			{
				frameNum += getBeatBackDefenceNinjaFrameNum(hitPointInfo, ninja);
			}
			else if(defenceAttribute.type == SkillDef.DEFENCE_TYPE_IDLE)
			{
				frameNum += getIdelDefenceNinjaFrameNum();
			}
			else
			{
				frameNum += ninja.getRoleFrameNum(defenceAttribute.defenceAction);
			}
			
			//			if(defenceAttribute.type != SkillDef.DEFENCE_TYPE_NORMAL && defenceAttribute.type != SkillDef.DEFENCE_TYPE_BEACK_BACK)
			//			{
			//				frameNum += ninja.getRoleFrameNum(defenceAttribute.fixAction);
			//			}
			
			return frameNum;
		}
		
		private function getIdelDefenceNinjaFrameNum():int
		{
			return 3;
		}
		
		private function getBeatBackDefenceNinjaFrameNum(hitPointInfo:SkillHitPointInfo, ninja:Ninja):int
		{
			return ninja.getActionsFrameNum([NinjaMotionDef.beatback_1, NinjaMotionDef.beatback_3, NinjaMotionDef.beatback_5]) + 11;
		}
		
		private function calculateMissDefenceFrameNum(ninja:Ninja, missSkillInfo:SkillInfo):int
		{
			return ninja.getRoleFrameNum(missSkillInfo.attackAction);
		}
		
		override protected function onAllSubActionEnd():void
		{
			this.end();
		}
		
		override protected function onEnd():void
		{
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

			attackAction = null;
		}
	}
}