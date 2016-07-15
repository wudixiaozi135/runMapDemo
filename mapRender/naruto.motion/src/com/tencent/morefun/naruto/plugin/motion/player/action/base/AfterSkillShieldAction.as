package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;

	public class AfterSkillShieldAction extends BaseBattleAction
	{
		public function AfterSkillShieldAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			FightManagerCenter.shieldMgr.execute(activityHero.shieldInfos, 3);
			
			this.end();
		}
		
		override protected function onDestroy():void
		{
			super.onDestroy();
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