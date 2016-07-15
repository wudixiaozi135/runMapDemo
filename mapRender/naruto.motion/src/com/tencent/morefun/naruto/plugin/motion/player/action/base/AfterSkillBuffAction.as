package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;

	public class AfterSkillBuffAction extends BaseBattleAction
	{
		public function AfterSkillBuffAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			FightManagerCenter.buffMgr.executeBuff(activityHero.buffInfos, 3);
			FightManagerCenter.buffMgr.executeEffect(activityHero.buffEffectInfos, 3);
			
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