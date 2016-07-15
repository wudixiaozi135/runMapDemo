package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;

	public class PreSkillShieldAction extends BaseBattleAction
	{
		public function PreSkillShieldAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			FightManagerCenter.shieldMgr.execute(activityHero.shieldInfos, 1);
			
			this.end();
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