package com.tencent.morefun.naruto.plugin.motion.player.action.skill
{
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.AfterSkillAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.FullSkillAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.PreSkillAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.SubSkillAction;

	public class CommonSkillAction extends BaseBattleAction
	{
		private var hideList:Array;
		private var afterActionList:Array; 
		private var fullSkillAction:FullSkillAction;
		
		public function CommonSkillAction(data:Object)
		{
			super();
			
			this.data = data;
			
			activityNinja.isFight = true;
			for each(var passiveNinja:Ninja in passiveNinjas)
			{
				passiveNinja.gainDefence = skillInfo.gainSkill;
				passiveNinja.isDefence = true;
				passiveNinja.isFight = true;
			}
			
			update();
			addSubActions();
		}
		
		private function addSubActions():void
		{
			fullSkillAction = new FullSkillAction(data);
			this.addSubAction(new PreSkillAction(data), 0);
			this.addSubAction(new SubSkillAction(data), 1);
			this.addSubAction(new AfterSkillAction(data), 2);
			
			fullSkillAction.begin();
		}
		
		private var preSkillAction:PreSkillAction;
		private var afterSkillAction:AfterSkillAction;
		override protected function onBegin():void
		{
			var subSkillAction:SubSkillAction;
//			trace("data", LogUtil.getLogStr(data));
			
			activityNinja.hideUI();
		}
		
		override protected function onEnd():void
		{
//			trace("end", LogUtil.getLogStr(data));
			if(activityNinja.data.hp > 0)
			{
				activityNinja.showUI();
			}
			
			activityNinja.isFight = false;
			
			for each(var passiveNinja:Ninja in passiveNinjas)
			{
				passiveNinja.isFight = false;
				passiveNinja.isDefence = false;
				passiveNinja.gainDefence = false;
			}
			
//			activityNinja.showShadow();
		}
		
		override protected function onAllSubActionEnd():void
		{
			this.end();
			fullSkillAction.end();
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

			hideList = null;
			afterActionList = null;
			fullSkillAction = null;
			preSkillAction = null;
			afterSkillAction = null;
		}
	}
}