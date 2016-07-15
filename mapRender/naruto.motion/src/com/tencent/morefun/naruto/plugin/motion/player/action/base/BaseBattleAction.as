package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.data.ActivityHero;
	import com.tencent.morefun.naruto.plugin.motion.data.BeHitEffectDef;
	import com.tencent.morefun.naruto.plugin.motion.data.DefenceAttribute;
	import com.tencent.morefun.naruto.plugin.motion.data.HpChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveEffectDef;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.data.SkillHitPointInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.player.action.Action;
	import com.tencent.morefun.naruto.plugin.motion.player.data.BaseActionData;

	public class BaseBattleAction extends Action
	{
		public function BaseBattleAction()
		{
			super();
		}
		
		override public function set data(value:Object):void
		{
			super.data = value;
		}
		
		public function update():void
		{
			var ninja:Ninja;
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(activityHero.pos);
			if(activityHero.hasSkillIdle)
			{
				if(activityHero.skillIdle)
				{
					if(skillInfo.skillIdleEffect && skillInfo.skillIdleEffect.resComplete != true)
					{
						skillInfo.skillIdleEffect = FightManagerCenter.skillMgr.getEffectInfo(skillInfo.skillIdleEffectId);
					}
					ninja.updateSkillIdleAction(skillInfo.skillIdleAction, skillInfo.skillIdleEffect);
				}
				else
				{
					ninja.clearSkillIdleAction();
				}
			}
			if(activityHero.hpChangedInfo != null)
			{
				activityHero.hpChangedInfo.curHp = activityNinja.data.hp;
				activityHero.hpChangedInfo.oldHp = activityNinja.data.hp;
			}
			
			for each(var hpChangedInfo:HpChangedInfo in activityHero.otherHpChangedInfoList)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(hpChangedInfo.pos);
				hpChangedInfo.curHp = ninja.data.hp;
				hpChangedInfo.oldHp = ninja.data.hp;
			}
			
			isAttackSelf = true;
			isBeatBack = false;
			for each(var passiveHero:PassiveHero in passiveHeros)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
				passiveHero.ninjaId = ninja.data.ninjaId;
				passiveHero.isbati = PassiveEffectDef.hasBatiEffect(ninja.getLogicEffectList());
					
				if((ninja as Ninja).isRealLeft != activityNinja.isRealLeft && isAttackSelf == true)
				{
					isAttackSelf = false;
				}
				
				if(passiveHero.behitEffect == BeHitEffectDef.BEATBACK && isBeatBack == false)
				{
					isBeatBack = true;
				}
				
				if(passiveHero.hasSkillIdle)
				{
					if(passiveHero.skillIdle == false)
					{
						ninja.clearSkillIdleAction();
					}
				}
				
				if(passiveHero.hpChangedInfo != null)
				{
					ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
					passiveHero.hpChangedInfo.curHp = ninja.data.hp;
					passiveHero.hpChangedInfo.oldHp = ninja.data.hp;
				}
				
				if(passiveHero.isDodge)
				{
					isDodge = true;
				}
			}
		}
		
		public function get actionData():BaseActionData
		{
			return data as BaseActionData;
		}
		
		public function get activityHero():ActivityHero
		{
			return actionData.activityHero;
		}
		
		public function get skillInfo():SkillInfo
		{
			return actionData.skillInfo;
		}
		
		public function get activityNinja():Ninja
		{
			return actionData.activityNinja;
		}
		
		public function get passiveHeros():Array
		{
			return actionData.activityHero.passiveHeros;
		}
		
		public function get passiveNinjas():Array
		{
			return actionData.passiveNinjas;
		}
		
		public function get trunBackList():Array
		{
			return actionData.trunBackList;
		}
		
		public function get showNinjaList():Array
		{
			return actionData.showNinjaList;
		}
		
		public function get hideNinjaList():Array
		{
			return actionData.hideNinjaList;
		}
		
		public function get caootPosList():Array
		{
			return actionData.cahootPosList;
		}
		
		public function get puppetPosList():Array
		{
			return actionData.puppetPosList;
		}
		
		public function get isOver():Boolean
		{
			return actionData.isOver;
		}
		
		public function set curSkillEffectIndex(value:int):void
		{
			actionData.curSkillEffectIndex = value;
		}
		
		public function get curSkillEffectIndex():int
		{
			return actionData.curSkillEffectIndex;
		}
		
		public function set curEndSkillEffectIndex(value:int):void
		{
			actionData.curEndSkillEffectIndex = value;
		}
		
		public function get curEndSkillEffectIndex():int
		{
			return actionData.curEndSkillEffectIndex;
		}
		
		public function set curHitEffectIndex(value:int):void
		{
			actionData.curHitEffectIndex = value;
		}
		
		public function get curHitEffectIndex():int
		{
			return actionData.curHitEffectIndex;
		}
		
		public function set curFullScreenEffectIndex(value:int):void
		{
			actionData.curFullScreenEffectIndex = value;
		}
		
		public function get curFullScreenEffectIndex():int
		{
			return actionData.curFullScreenEffectIndex;
		}
		
		public function set curEndFullScreenEffectIndex(value:int):void
		{
			actionData.curEndFullScreenEffectIndex = value;
		}
		
		public function get curEndFullScreenEffectIndex():int
		{
			return actionData.curEndFullScreenEffectIndex;
		}
		
		public function set curHitCount(value:int):void
		{
			actionData.curHitCount = value;
		}
		
		public function get curHitCount():int
		{
			return actionData.curHitCount;
		}
		
		public function set maxHitCount(value:int):void
		{
			actionData.maxHitCount = value;
		}
		
		public function get maxHitCount():int
		{
			return actionData.maxHitCount;
		}
		
		public function set curDamageCount(value:int):void
		{
			actionData.damageCount = value;
		}
		
		public function get curDamageCount():int
		{
			return actionData.damageCount;
		}
		
		public function set maxDamageCount(value:int):void
		{
			actionData.maxDamageCount = value;
		}
		
		public function get maxDamageCount():int
		{
			return actionData.maxDamageCount;
		}
		
		public function get hitPointInfo():SkillHitPointInfo
		{
			return skillInfo.hitPointInfoList[curHitCount - 1];
		}
		
		public function get isLastHit():Boolean
		{
			return curHitCount == maxHitCount;
		}
		
		public function get isDodge():Boolean
		{
			return actionData.isDodge;
		}
		
		public function set isDodge(value:Boolean):void
		{
			actionData.isDodge = value;
		}
		
		public function set isAttackSelf(value:Boolean):void
		{
			actionData.isAttackSelf = value;
		}
		
		public function get needHideShadow():Boolean
		{
			return skillInfo.needHideShadow;
		}
		
		public function get isAttackSelf():Boolean
		{
			return actionData.isAttackSelf;
		}
		
		public function get isRevert():Boolean
		{
			return actionData.activityHero.isRevert;
		}
		
		public function set isBeatBack(value:Boolean):void
		{
			actionData.isBeatBack = value;
		}
		
		public function get isBeatBack():Boolean
		{
			return actionData.isBeatBack;
		}
		
		private var _defenceActionIndex:int;
		public function set defenceActionIndex(value:int):void
		{
			_defenceActionIndex = value;
		}
		
		public function get defenceActionIndex():int
		{
			return _defenceActionIndex;
		}
		
		public function get isCombo():Boolean
		{
			return actionData.isCombo;
		}
		
		public function isLastCombo():Boolean
		{
			return actionData.nextSkillId == 0 && isCombo;
		}
		
		public function get comboIndex():int
		{
			return actionData.comboIndex;
		}
		
		public function get nextSkillId():int
		{
			return actionData.nextSkillId;
		}
		
		public function isFixDefenceAction():Boolean
		{
			var maxDefenceActionIndex:int;
			
			if(passiveHero.isMajor)
			{
				maxDefenceActionIndex = hitPointInfo.majorDefenceAttributeList.length - 1;
				
				return this.curHitCount == this.maxHitCount && this.defenceActionIndex > maxDefenceActionIndex;
			}
			else
			{
				maxDefenceActionIndex = hitPointInfo.minorDefenceAttributeList.length - 1;
				
				return this.curHitCount == this.maxHitCount && this.defenceActionIndex > maxDefenceActionIndex;
			}
		}
		
		public function isLastDefenceAction():Boolean
		{
			var maxDefenceActionIndex:int;
			
			if(passiveHero.isMajor)
			{
				maxDefenceActionIndex = hitPointInfo.majorDefenceAttributeList.length - 1;
				
				return this.curHitCount == this.maxHitCount && this.defenceActionIndex == maxDefenceActionIndex;
			}
			else
			{
				maxDefenceActionIndex = this.hitPointInfo.minorDefenceAttributeList.length - 1;
				
				return this.curHitCount == this.maxHitCount && this.defenceActionIndex == maxDefenceActionIndex;
			}
		}
		
		public function isFirsetDefenceAction():Boolean
		{
			return this.defenceActionIndex == 0;
		}
		
		public function isFirsetHit():Boolean
		{
			return this.curHitCount == 1;
		}
		
		public function haveNextDefenceAction():Boolean
		{
			var maxDefenceActionIndex:int;
			
			if(passiveHero.isMajor)
			{
				maxDefenceActionIndex = hitPointInfo.majorDefenceAttributeList.length - 1;
				
				if(this.defenceActionIndex > maxDefenceActionIndex)
				{
					return false;
				}
				
				if(this.defenceActionIndex == maxDefenceActionIndex)//最后一个子受击动作
				{
					if(this.curHitCount == this.maxHitCount)
					{
						return defenceAttribute.type != SkillDef.DEFENCE_TYPE_NORMAL && defenceAttribute.type != SkillDef.DEFENCE_TYPE_BEACK_BACK && defenceAttribute.type != SkillDef.DEFENCE_TYPE_IDLE;
					}
					else
					{
						return false;
					}
				}
				return true;
			}
			else
			{
				maxDefenceActionIndex = hitPointInfo.minorDefenceActionList.length - 1;
				
				if(this.defenceActionIndex > maxDefenceActionIndex)
				{
					return false;
				}
				
				if(this.defenceActionIndex == maxDefenceActionIndex)
				{
					if(this.curHitCount == this.maxHitCount)
					{
						return defenceAttribute.type != SkillDef.DEFENCE_TYPE_NORMAL && defenceAttribute.type != SkillDef.DEFENCE_TYPE_BEACK_BACK && defenceAttribute.type != SkillDef.DEFENCE_TYPE_IDLE;
					}
					else
					{
						return false;
					}
				}
				return true;
			}
		}
		
		private var _passiveHero:PassiveHero;
		public function set passiveHero(value:PassiveHero):void
		{
			_passiveHero = value;
			_passiveNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(_passiveHero.pos);
		}
		
		public function get passiveHero():PassiveHero
		{
			return _passiveHero;
		}
		
		private var _passiveNinja:Ninja;
		public function set passiveNinja(value:Ninja):void
		{
			_passiveNinja = value;
		}
		
		public function get passiveNinja():Ninja
		{
			return _passiveNinja;
		}
		
		public function get defenceAttribute():DefenceAttribute
		{
			if(_passiveHero.isMajor)
			{
				return this.hitPointInfo.majorDefenceAttributeList[defenceActionIndex];
			}
			else
			{
				return this.hitPointInfo.minorDefenceAttributeList[defenceActionIndex];
			}
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			_passiveHero = null;
			_passiveNinja = null;
		}
	}
}