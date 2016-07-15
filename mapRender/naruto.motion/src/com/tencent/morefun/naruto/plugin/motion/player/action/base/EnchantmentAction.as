package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	
	import com.tencent.morefun.naruto.plugin.motion.data.EnchantmentInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.ui.util.TweenManager;
	
    import com.tencent.morefun.naruto.i18n.I18n;
	public class EnchantmentAction extends BaseBattleAction
	{
		private var enchantmentInfo:EnchantmentInfo;
		private var time1:Number = 0.3;
		private var time2:Number = 0.3;
		
		public function EnchantmentAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			enchantmentInfo = SceneConfig.getEnchantmentInfo(activityHero.enchantment);
			if(activityNinja.resComplete)
			{
				EventCenter.addEventHandler(activityNinja, RenderEvent.ENCHANTMENT, onEnchatmentEvent, true);
				
				if(activityHero.enchantment != -1 && activityNinja.getRoleFrameEventIndex(skillInfo.attackAction, RenderEvent.ENCHANTMENT, 100).length == 0)
				{
					throw new Error(I18n.lang("as_motion_1451031573_4343_0") + activityNinja.cfg.cfgInfo.refId + "] "  + activityNinja.cfg.cfgInfo.name +  I18n.lang("as_motion_1451031573_4343_1") + skillInfo.id + "]" + skillInfo.name + I18n.lang("as_motion_1451031573_4343_2") + skillInfo.attackAction +　I18n.lang("as_motion_1451031573_4343_3"));
				}
				
				if(activityHero.enchantment != -1)
				{
					EventCenter.addEventHandler(activityNinja, RenderEvent.ACTION_INTERRUPT, onEnchatmentEvent, true);
				}
			}
			else
			{
				if(activityHero.enchantment != -1)
				{
					onEnchatmentEvent();
				}
			}
			
			this.end();
		}
		
		private var chenged:Boolean;
		private function onEnchatmentEvent():void
		{
			if(enchantmentInfo == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4344_0") + activityHero.enchantment + I18n.lang("as_motion_1451031573_4344_1"));
			}
			
			if(chenged){return ;}
			
			FightManagerCenter.sceneMgr.showColorMaskEffect(enchantmentInfo.color);
			TweenManager.delayedCall(time1, changedEnchatment);
			TweenManager.delayedCall(time1 + time2, onColorMaskComplete);
			
			chenged = true;
		}
		
		private function changedEnchatment():void
		{
			if(activityHero.enchantment == 0)
			{
				FightManagerCenter.sceneMgr.resetEnchantment();
			}
			else if(activityHero.enchantment != 0)
			{
				FightManagerCenter.sceneMgr.setEnchantment(enchantmentInfo.res);
			}
		}
		
		private function onColorMaskComplete():void
		{
			FightManagerCenter.sceneMgr.resetColorMask();
		}
		
		override protected function onParentActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.ENCHANTMENT, onEnchatmentEvent);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.ACTION_INTERRUPT, onEnchatmentEvent);
		}
		
		override protected function onDestroy():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.ENCHANTMENT, onEnchatmentEvent);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.ACTION_INTERRUPT, onEnchatmentEvent);
		}
		
		
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}
			
			enchantmentInfo = null;
		}
	}
}