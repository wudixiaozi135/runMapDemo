package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.ui.util.TweenManager;

	public class HideSelfAction extends BaseBattleAction
	{
		/**
		 * 
		 * @param args 
		 * args[0] ActivityHero 攻击者数据 
		 * args[1] attackCount 第几次攻击
		 */		
		public function HideSelfAction()
		{
			super();
		}
			
		override protected function onBegin():void
		{
			if(skillInfo.hideSelfRange != 0)
			{
				TweenManager.delayedCall(skillInfo.hideSelfStart / 1000, onHideSelf);
			}
			
			this.end();
		}
		
		private function onHideSelf():void
		{
			activityNinja.alpha = 0;
			TweenManager.delayedCall(skillInfo.hideSelfRange / 1000, onHideSelfComplete);
		}
				
		private function onHideSelfComplete():void
		{
			activityNinja.alpha = 1;
		}
		
		override protected function onParentActionEnd():void
		{
			
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