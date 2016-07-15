package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight
{

	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.data.SkillHitPointInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.AttackTurnBackAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.ShowCahootNinjaAction;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class AttackAction extends BaseBattleAction
	{
		private var _hitCallBack:Function;
		private var _lastHitCallBack:Function;
		public function AttackAction(data:Object, doDefence:Function, doUpdateDefence:Function)
		{
			super();
			
			this.data = data;
			
			if(skillInfo.triggerDefenceType != SkillDef.HIT_TYPE_EVENT)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4352_0") + activityNinja.cfg.cfgInfo.refId + "]" + activityNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4352_1") + skillInfo.refId +"]" + skillInfo.name + I18n.lang("as_motion_1451031573_4352_2"));
			}
			
			switch(skillInfo.triggerDefenceType)
			{
				case SkillDef.HIT_TYPE_EVENT:
					attackAction = new EventAttackAction();
					(attackAction as EventAttackAction).hitCallBack = doDefence;
					(attackAction as EventAttackAction).playHitEffect = playHitEffect;
					(attackAction as EventAttackAction).playNinjaHitEffect = playNinjaHitEffect;
					(attackAction as EventAttackAction).updateDefence = doUpdateDefence;
					this.addSubAction(attackAction, 0);
					this.addSubAction(new AttackTurnBackAction(), 1);
					this.addSubAction(new ShowCahootNinjaAction(), 2);
					break;
				//				case SkillDef.HIT_TYPE_TIME:
				//					attackAction = new TimerAttackAction();
				//					(attackAction as TimerAttackAction).playHitEffect = playHitEffect;
				//					this.addWaitEndActions([attackAction]);
				//					break;
			}
		}
		
		override protected function onBegin():void
		{
			traceStr("start");
		}
		
		public function doReboundHandler(hitPointInfo:SkillHitPointInfo):void
		{
			var reboundAction:BaseBattleAction;
			
			reboundAction = new ReboundDefence(hitPointInfo);
			addSubAction(reboundAction, 0);
		}
		
		private var attackAction:BaseBattleAction;		
		private function playHitEffect(passiveHero:PassiveHero):void
		{
			var playEffectAction:PlayHitEffectAction;
			
			playEffectAction = new PlayHitEffectAction(passiveHero);
			this.addSubAction(playEffectAction, 0);
		}
		
		private function playNinjaHitEffect(passiveHero:PassiveHero):void
		{
			var playEffectAction:PlayNinjaHitEffectAction;
			
			playEffectAction = new PlayNinjaHitEffectAction(passiveHero);
			this.addSubAction(playEffectAction, 0);
		}
		
		override protected function onAllSubActionEnd():void
		{
			this.end();
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

			_hitCallBack = null;
			_lastHitCallBack = null;
			attackAction = null;
		}
	}
}