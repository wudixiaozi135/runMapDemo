package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base
{
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.HideComboPuppetNinjaAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.HideOtherNinjaAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.PreSkillBuffAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.PreSkillShieldAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.SceneMaskAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight.WaitBeginAction;

	public class PreSkillAction extends BaseBattleAction
	{
		public function PreSkillAction(data:Object)
		{
			super();
			
			this.data = data;
			
			addSubActions();
		}
		
		public function addSubActions():void
		{
			this.addSubAction(new PreSkillShieldAction(), 0);
			this.addSubAction(new PreSkillBuffAction(), 0);
			this.addSubAction(new WaitBeginAction(), 1);
			this.addSubAction(new SceneMaskAction(), 2);
			this.addSubAction(new HideOtherNinjaAction(), 3);
			this.addSubAction(new HideComboPuppetNinjaAction(), 3);
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