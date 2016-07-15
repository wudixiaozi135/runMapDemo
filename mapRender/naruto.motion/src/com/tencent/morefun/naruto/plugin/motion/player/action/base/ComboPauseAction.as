package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.notice.ComboPauseTimeNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.ComboResumeTimeNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.PromptSkillStartNotice;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;

	public class ComboPauseAction extends BaseBattleAction
	{
		private var MASK_COUNT_DOWN:int = 2;
		
		public function ComboPauseAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			if(isCombo && comboIndex != 0)
			{
				new ComboPauseTimeNotice().send()
				
				activityNinja.showComboEffect(onComboEffectComplete);
				
				TimerProvider.addTimeTask(200, notifyPromptSkill);
				TimerProvider.addEnterFrameTask(showSceneColorEffect);
				
				hideCountDown = MASK_COUNT_DOWN;
				
				FightManagerCenter.sceneMgr.setSceneBlackMask(0.5, 0);
			}
			else
			{
				this.end();
			}
		}
		
		private var hideCountDown:int;
		private function showSceneColorEffect():void
		{
			if(hideCountDown == MASK_COUNT_DOWN)
			{
				FightManagerCenter.sceneMgr.showColorMask(0xffffff);
			}
			
			if(hideCountDown == 0)
			{
				FightManagerCenter.sceneMgr.resetColorMask();
				TimerProvider.removeEnterFrameTask(showSceneColorEffect);
			}
			
			hideCountDown --;
		}
		
		private function notifyPromptSkill():void
		{
			TimerProvider.removeTimeTask(200, notifyPromptSkill);
			new PromptSkillStartNotice(activityNinja.data.pos, comboIndex, skillInfo.id).send();
		}
		
		private function onComboEffectComplete():void
		{
			FightManagerCenter.sceneMgr.setSceneBlackMask(skillInfo.sceneMaskAlpha, 10);
			
			new ComboResumeTimeNotice().send();
			this.end();
		}
		
		override protected function onDestroy():void
		{
			TimerProvider.removeTimeTask(200, notifyPromptSkill);
			TimerProvider.removeEnterFrameTask(showSceneColorEffect);
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

		}
	}
}