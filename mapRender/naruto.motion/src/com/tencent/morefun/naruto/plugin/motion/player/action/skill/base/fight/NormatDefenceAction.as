package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight
{
	
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.def.NinjaDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	
    import com.tencent.morefun.naruto.i18n.I18n;
	public class NormatDefenceAction extends BaseBattleAction
	{
		private var _playNextDefenceFun:Function;
		
		private var defencerMotionIndex:int; 
		
		public function NormatDefenceAction(passiveHero:PassiveHero, defenceActionIndex:int)
		{
			super();
			
			this.passiveHero = passiveHero;
			this.defenceActionIndex = defenceActionIndex;
		}
		
		override protected function onBegin():void
		{
			var defenceAction:String;
			
			passiveNinja.endAction();
			
			EventCenter.addEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd, true);
			EventCenter.addEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt, true);
			
			
			if(isFixDefenceAction() == false)
			{
				if(defenceAttribute.type != SkillDef.DEFENCE_TYPE_IDLE)
				{
					defenceAction = defenceAttribute.defenceAction;
					passiveNinja.playRoleAction(defenceAttribute.defenceAction, false);
				}
				else
				{
					defenceAction = defenceAttribute.defenceAction;
				}
			}
			else
			{
				if(this.passiveHero.isMajor)
				{
					defenceAction = skillInfo.majorFixDefenceAction;
					passiveNinja.playRoleAction(skillInfo.majorFixDefenceAction, false);
				}
				else
				{
					defenceAction = skillInfo.minorFixDefenceAction;
					passiveNinja.playRoleAction(skillInfo.minorFixDefenceAction, false);
				}
			}
			
			
			if(passiveNinja.resComplete && passiveNinja.hasAction(defenceAction) == false)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4377_0") + passiveNinja.cfg.cfgInfo.refId + "]" + passiveNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4377_1") + skillInfo.attackAction +　I18n.lang("as_motion_1451031573_4377_2"));
			}
			
			if(isFirsetHit())
			{
				passiveNinja.hideUI();
			}
			
			if(isFirsetDefenceAction())
			{
				if(hitPointInfo.ignoreDamage == false)
				{
					passiveNinja.updateMoney(passiveHero.hpChangedInfo, maxDamageCount, curDamageCount);
					passiveNinja.updateHp(passiveHero.hpChangedInfo, passiveHero.isCritical, maxDamageCount, curDamageCount);
				}
			}
			
			defencerMotionIndex = passiveHero.defenceMotionIndex;
			passiveHero.defenceMotionIndex ++;
			
			if(isFixDefenceAction() == false)
			{
				if(defenceAttribute.type == SkillDef.DEFENCE_TYPE_IDLE)
				{
					onActionEnd();
				}
			}
		}
		
		
		private function onActionEnd():void
		{
			var defenceEnd:Boolean;
			
			defenceEnd = true;
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt);
			
			if(isFixDefenceAction() || defenceAttribute.type == SkillDef.DEFENCE_TYPE_NORMAL || defenceAttribute.type == SkillDef.DEFENCE_TYPE_IDLE)
			{
				if(!hitPointInfo.ignoreResetIdle)
				{
					passiveNinja.idle();
				}
			}
			
			if(haveNextDefenceAction())
			{
				_playNextDefenceFun(passiveHero, defenceActionIndex + 1);
				defenceEnd = false;
			}
			
			if(isLastDefenceAction() == false && isFixDefenceAction() == false)
			{
				defenceEnd = false;
			}
			
			if(defenceEnd == true)
			{
				passiveNinja.showUI();
				if(passiveHero.isDead)
				{
					TimerProvider.addTimeTask(0, playDead, null, 0, 0, 1);
					
					if(passiveNinja.cfg.cfgInfo.type == NinjaDef.TYPE_CONTRACT_PET)
					{
						FightManagerCenter.sceneMgr.setTopItem(passiveNinja.data.pos);
					}
				}
				else
				{
					end();
				}
				
				passiveNinja.updateAttribute(passiveHero.attributeChangedInfo);
			}
			else
			{
				end();
			}
		}
		
		private function playDead():void
		{
			passiveNinja.dead(onDeadComplete);
		}
		
		private function onDeadComplete():void
		{
			end();
		}
		
		public function set playNextDefenceFunction(value:Function):void
		{
			_playNextDefenceFun = value;
		}
		
		private function onActionInterrupt():void
		{
			end();
			
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt);
		}
		
		override protected function onDestroy():void
		{
			super.onDestroy();
			
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt);
		}
		
		
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}
			
			_playNextDefenceFun = null;
		}
	}
}