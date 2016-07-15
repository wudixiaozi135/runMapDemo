package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.ui.util.TweenManager;

	public class HidePassiveAction extends BaseBattleAction
	{
		public function HidePassiveAction()
		{
			super();
		}
		
		
		override protected function onBegin():void
		{
			if(skillInfo.hidePassiveRange)
			{
				TweenManager.delayedCall(skillInfo.hidePassiveStart / 1000, onHidePassiveStart);
			}
			
			this.end();
		}
		
		private function onHidePassiveStart():void
		{
						
			for each(var ninja:Ninja in passiveNinjas)
			{
				ninja.visible = false;
			}
			
			TweenManager.delayedCall(skillInfo.hidePassiveRange / 1000, onHidePassiveEnd);
		}
		
		private function onHidePassiveEnd():void
		{
			for each(var ninja:Ninja in passiveNinjas)
			{
				ninja.visible = true;
			}
		}
		
		override protected function onParentActionEnd():void
		{
			if(skillInfo.hidePassiveRange)
			{
				for each(var ninja:Ninja in passiveNinjas)
				{
					ninja.visible = true;
				}
				
			}
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