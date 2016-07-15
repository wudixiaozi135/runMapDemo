package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;

	public class AttackUpperLayerAction extends BaseBattleAction
	{
		public function AttackUpperLayerAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			EventCenter.addEventHandler(activityNinja, RenderEvent.UPPER_LAYER, upperLayer, true);
			this.end();
		}
		
		private function upperLayer():void
		{
			activityNinja.y += 2;
		}
		
		override protected function onParentActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.LOWER_LAYER, upperLayer);
		}
		
		override protected function onDestroy():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.LOWER_LAYER, upperLayer);
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