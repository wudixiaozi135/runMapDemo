package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;

	public class SkipRenderAction extends BaseBattleAction
	{
		public function SkipRenderAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_SKIP_RENDER, onSkipRender, true);
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_SKIP_RENDER, onSkipRender, true);
			EventCenter.addEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.PLAY_SKIP_RENDER, onSkipRender);
			
			this.end();
		}
		
		private function onSkipRender(type:String):void
		{
			
			switch(type)
			{
				case "1":
					FightManagerCenter.skipRenderNum = 5;
					break;
				case "2":
					FightManagerCenter.skipRenderNum = 10;
					break;
				case "3":
					FightManagerCenter.skipRenderNum = 15;
					break;
			}
		}
		
		override protected function onParentActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SKIP_RENDER, onSkipRender);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SKIP_RENDER, onSkipRender);
			EventCenter.removeEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.PLAY_SKIP_RENDER, onSkipRender);
		}
		
		override protected function onDestroy():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SKIP_RENDER, onSkipRender);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SKIP_RENDER, onSkipRender);
			EventCenter.removeEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.PLAY_SKIP_RENDER, onSkipRender);
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