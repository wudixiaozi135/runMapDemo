package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;

	public class PreSkillBuffAction extends BaseBattleAction
	{
		public function PreSkillBuffAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			FightManagerCenter.buffMgr.executeBuff(activityHero.buffInfos, 1);
			FightManagerCenter.buffMgr.executeEffect(activityHero.buffEffectInfos, 1);
			
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