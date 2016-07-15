package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight
{	
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldInfo;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	
	public class ShieldDefenceAction extends BaseBattleAction
	{
		private var shieldInfo:ShieldInfo;
		
		public function ShieldDefenceAction(passiveHero:PassiveHero, defenceActionIndex:int)
		{
			super();
			
			this.passiveHero = passiveHero;
			this.passiveNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
			this.defenceActionIndex = defenceActionIndex;
		}
		
		override protected function onBegin():void
		{
			passiveNinja.endAction();
			
			shieldInfo = passiveNinja.getShiled();
			
			if(hitPointInfo.ignoreDamage == false)
			{
				passiveNinja.updateMoney(passiveHero.hpChangedInfo, maxDamageCount, curDamageCount);
				passiveNinja.updateHp(passiveHero.hpChangedInfo, passiveHero.isCritical, maxDamageCount, curDamageCount);
			}
			EventCenter.addEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt, true);
			if(passiveHero.isDead)
			{
				passiveNinja.dead(onActionEnd);
			}
			else
			{
				passiveNinja.playRoleAction(shieldInfo.cfg.endAction, false);
				EventCenter.addEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd, true);
			}
			
			passiveNinja.hideUI();
		}
		
		private function onActionEnd():void
		{
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt);
			
			if(!passiveHero.isDead)
			{
				passiveNinja.idle();
				passiveNinja.showUI();
			}
			
			end();
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
			
			shieldInfo = null;
		}
	}
}