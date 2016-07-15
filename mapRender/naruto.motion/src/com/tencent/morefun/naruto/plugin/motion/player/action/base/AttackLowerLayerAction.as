package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;

	public class AttackLowerLayerAction extends BaseBattleAction
	{
		public function AttackLowerLayerAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			EventCenter.addEventHandler(activityNinja, RenderEvent.LOWER_LAYER, lowerLayer, true);
			this.end();
		}
		
		private function lowerLayer():void
		{
			activityNinja.y -= 2;
		}
		
		override protected function onParentActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.LOWER_LAYER, lowerLayer);
		}
		
		override protected function onDestroy():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.LOWER_LAYER, lowerLayer);
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