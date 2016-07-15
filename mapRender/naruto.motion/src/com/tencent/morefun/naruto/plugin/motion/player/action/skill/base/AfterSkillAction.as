package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base
{
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.AfterSkillBuffAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.AfterSkillShieldAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.HideComboPuppetNinjaAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.SceneMaskRestoreAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.ShowComboPuppetNinjaAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.ShowOtherNinjaAction;

	public class AfterSkillAction extends BaseBattleAction
	{
		public function AfterSkillAction(data:Object)
		{
			super();
			
			this.data = data;
			
			addSubActions();
		}
		
		public function addSubActions():void
		{
			this.addSubAction(new ShowComboPuppetNinjaAction(), 2);
			this.addSubAction(new ShowOtherNinjaAction(), 2);
			this.addSubAction(new SceneMaskRestoreAction(), 3);
			this.addSubAction(new AfterSkillBuffAction(), 4);
			this.addSubAction(new AfterSkillShieldAction(), 4);
		}
		
		override protected function onAllSubActionEnd():void
		{
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