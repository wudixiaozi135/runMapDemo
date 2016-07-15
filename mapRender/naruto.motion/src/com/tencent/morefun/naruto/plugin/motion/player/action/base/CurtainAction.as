package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.notice.CurtainNotice;

	public class CurtainAction extends BaseBattleAction
	{
		public function CurtainAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			EventCenter.addEventHandler(activityNinja, RenderEvent.CURTAIN, onCurtainEvent, true);
			
			this.end();
		}
		
		private function onCurtainEvent():void
		{
			new CurtainNotice(true).send();
		}
		
		override protected function onParentActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.CURTAIN, onCurtainEvent);
		}
		
		override protected function onDestroy():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.CURTAIN, onCurtainEvent);
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