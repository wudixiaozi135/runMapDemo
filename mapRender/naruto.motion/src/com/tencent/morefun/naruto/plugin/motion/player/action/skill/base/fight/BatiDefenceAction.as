package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight
{	
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.def.NinjaDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldInfo;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	
	public class BatiDefenceAction extends BaseBattleAction
	{
		private var shieldInfo:ShieldInfo;
		
		public function BatiDefenceAction(passiveHero:PassiveHero, defenceActionIndex:int)
		{
			super();
			
			this.passiveHero = passiveHero;
			this.passiveNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
			this.defenceActionIndex = defenceActionIndex;
		}
		
		override protected function onBegin():void
		{
			passiveNinja.endAction();
			passiveNinja.playEmptyBeHitAction();
			
			EventCenter.addEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd, true);
			EventCenter.addEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt, true);
			
			if(hitPointInfo.ignoreDamage == false)
			{
				passiveNinja.updateMoney(passiveHero.hpChangedInfo, maxDamageCount, curDamageCount);
				passiveNinja.updateHp(passiveHero.hpChangedInfo, passiveHero.isCritical, maxDamageCount, curDamageCount);
			}
			passiveNinja.hideUI();
		}
		
		private function onActionEnd():void
		{
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ROLE_END, onActionEnd);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt);
			
			//霸体不按照配置内容来  需要用打点来判断是否最后受击
			if(isLastHit == false)
			{
				end();
				return ;
			}
			
			passiveNinja.showUI();
			
			if(passiveHero.isDead)
			{
				TimerProvider.addTimeTask(0, playDead, null, 0, 0, 1);
				
				if(passiveNinja.cfg.cfgInfo.type == NinjaDef.TYPE_CONTRACT_PET)
				{
					FightManagerCenter.sceneMgr.setTopItem(passiveNinja.data.pos);
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
			passiveNinja.dead(end);
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