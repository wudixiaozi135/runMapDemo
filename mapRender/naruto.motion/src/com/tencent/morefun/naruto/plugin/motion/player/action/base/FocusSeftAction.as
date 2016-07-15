package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;

	public class FocusSeftAction extends BaseBattleAction
	{
		public function FocusSeftAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			EventCenter.addEventHandler(activityNinja, RenderEvent.FOCUS, onFocus, true);
			EventCenter.addEventHandler(activityNinja, RenderEvent.CLEAR_FOCUS, onClearFocus, true);
			
			this.end();
		}
		
		private function onFocus():void
		{
			FightManagerCenter.sceneMgr.focusItem(activityNinja.data.pos);
		}
		
		private function onClearFocus():void
		{
			FightManagerCenter.sceneMgr.clearFocus();
		}
		
		override protected function onParentActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.FOCUS, onFocus);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.CLEAR_FOCUS, onClearFocus);
		}
		
		override protected function onDestroy():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.FOCUS, onFocus);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.CLEAR_FOCUS, onClearFocus);
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