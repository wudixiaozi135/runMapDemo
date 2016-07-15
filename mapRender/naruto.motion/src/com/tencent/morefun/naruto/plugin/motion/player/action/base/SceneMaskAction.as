package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.event.SceneEvent;

	public class SceneMaskAction extends BaseBattleAction
	{
		public function SceneMaskAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			if(skillInfo.sceneMaskAlpha)
			{
				FightManagerCenter.delayCallBack(onScenemMaskComplete, 8);
				FightManagerCenter.sceneMgr.setSceneBlackMask(skillInfo.sceneMaskAlpha, 0.3);
			}
			else
			{
				this.end();
			}
		}
		
		private function onScenemMaskComplete():void
		{
			this.end();
		}
		
		override protected function onParentActionEnd():void
		{
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.SCENE_MASK, onScenemMaskComplete);
		}
		
		override protected function onDestroy():void
		{
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.SCENE_MASK, onScenemMaskComplete);
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