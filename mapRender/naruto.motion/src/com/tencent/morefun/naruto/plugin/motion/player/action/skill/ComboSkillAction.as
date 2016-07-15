package com.tencent.morefun.naruto.plugin.motion.player.action.skill
{
	import com.tencent.morefun.naruto.plugin.motion.data.AfterActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.player.action.Action;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.AfterSkillAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.FullSkillAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.PreSkillAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.SubSkillAction;
	
	import flash.utils.Dictionary;

	public class ComboSkillAction extends BaseBattleAction
	{
		private static var comboMotionPosMap:Dictionary = new Dictionary();
		
		private var hideList:Array;
		private var filterClsList:Array;
		private var fullSkillAction:FullSkillAction;
		
		public function ComboSkillAction(data:Object)
		{
			super();
			
			this.data = data;
			
			activityNinja.isFight = true;
			pushMotionPos(activityNinja.data.pos);
			for each(var passiveNinja:Ninja in passiveNinjas)
			{
				passiveNinja.gainDefence = skillInfo.gainSkill;
				passiveNinja.isDefence = true;
				passiveNinja.isFight = true;
				pushMotionPos(passiveNinja.data.pos);
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
			var action:Action;
//			trace("data", LogUtil.getLogStr(data));
			
			activityNinja.hideUI();
		}
		
		public function setFilterClsList(clsList:Array):void
		{
			filterClsList = clsList;
		}
		
		override protected function onEnd():void
		{
			var battleNinja:Ninja;
			for each(var afterAction:AfterActionInfo in trunBackList)//不包含 activityNinja
			{
				battleNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(afterAction.pos);
				battleNinja.showShadow();
				if(battleNinja.data.hp > 0)
				{
					battleNinja.showUI();
				}
			}
			
			popMotionPos(activityNinja.data.pos);
			if(isNonMotionPos(activityNinja.data.pos))
			{
				activityNinja.isFight = false;
			}
			
			for each(var passiveNinja:Ninja in passiveNinjas)
			{
				popMotionPos(passiveNinja.data.pos);
				if(isNonMotionPos(passiveNinja.data.pos))
				{
					passiveNinja.isFight = false;
					passiveNinja.isDefence = false;
					passiveNinja.gainDefence = false;
				}
			}
		}
		
		private function pushMotionPos(pos:int):void
		{
			var posList:Array;
			
			posList = comboMotionPosMap[pos];
			if(posList == null)
			{
				posList = [];
				comboMotionPosMap[pos] = posList;
			}
			posList.push(pos);
		}
		
		private function popMotionPos(pos:int):void
		{
			var posList:Array;
			
			posList = comboMotionPosMap[pos];
			if(posList == null)
			{
				return ;
			}
			posList.pop();
		}
		
		private function isNonMotionPos(pos:int):Boolean
		{
			var posList:Array;
			
			posList = comboMotionPosMap[pos];
			if(posList == null)
			{
				return true;
			}
			
			return posList.length == 0;
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

			comboMotionPosMap = null;
			hideList = null;
			filterClsList = null;
			fullSkillAction = null;
			preSkillAction = null;
			afterSkillAction = null;
		}
	}
}