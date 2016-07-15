package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;

	public class SceneMaskRestoreAction extends BaseBattleAction
	{
		public function SceneMaskRestoreAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{			
			if(skillInfo.sceneMaskAlpha)
			{
				FightManagerCenter.sceneMgr.setSceneBlackMask(0, 0.3);
				FightManagerCenter.delayCallBack(onSceneMaskComplete, 8);
			}
			else
			{
				end();
			}
		}
		
		private function onSceneMaskComplete():void
		{
			end();
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