package com.tencent.morefun.naruto.plugin.motion.player
{
	import com.tencent.morefun.naruto.plugin.motion.data.ActivityHero;
	import com.tencent.morefun.naruto.plugin.motion.data.AfterActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.StageNinjaActionType;
	import com.tencent.morefun.naruto.plugin.motion.data.TransformActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.MoveType;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.notice.CurtainNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.NinjaEnterNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.NinjaExeuntNotice;
	import com.tencent.morefun.naruto.plugin.motion.player.action.event.ActionEvent;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.CommonSkillAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.EnterAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.ExeuntAction;
	import com.tencent.morefun.naruto.plugin.motion.player.data.BaseActionData;
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.utils.getTimer;

	public class TransformPlayer extends BasePlayer
	{
		private var roundId:int;
		private var actionId:int;
		private var playerActionInfo:TransformActionInfo;
		private var oldExeuntStageAction:int;
		
		private var haveSkillHitEvent:Boolean;
		private var skillAction:CommonSkillAction;
		
		public function TransformPlayer(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		override public function playAction(actionInfo:Object, roleMgr:NinjaManager, buffMgr:BuffManager, skillMgr:SkillManager, sceneMgr:SceneManager):void
		{
			var ninja:Ninja;
			var activityHero:ActivityHero;
			var baseActionData:BaseActionData;
			var skillInfo:SkillInfo;
			var afterActionInfo:AfterActionInfo;
			var trunBackList:Array = [];
			
			
			super.playAction(actionInfo, roleMgr, buffMgr, skillMgr, sceneMgr);
			this.playerActionInfo = actionInfo as TransformActionInfo;
			
			ninja = roleMgr.getNinjaByPos(playerActionInfo.activityHero.pos);
			skillInfo = skillMgr.getSkillInfo(playerActionInfo.activityHero.skillId);
			if(skillInfo.moveType != MoveType.NONE)
			{
				afterActionInfo = new AfterActionInfo();
				afterActionInfo.pos = playerActionInfo.activityHero.pos;
				trunBackList.push(afterActionInfo);
			}
			
			
			activityHero = playerActionInfo.activityHero;
			
			roundId = playerActionInfo.roundId;
			actionId = playerActionInfo.actionIdList.shift();
			
			baseActionData = new BaseActionData();
			baseActionData.activityHero = activityHero;
			baseActionData.activityNinja = ninja;
			baseActionData.cahootPosList = activityHero.cahootPos;
			baseActionData.isOver = actionInfo.isOver;
			baseActionData.skillInfo = skillInfo;
			baseActionData.trunBackList = trunBackList;
			baseActionData.roundId = roundId;
			baseActionData.actionId = actionId;
			if(skillInfo.hideOthers)
			{
				baseActionData.hideNinjaList = m_hideList;
				baseActionData.showNinjaList = m_hideList;
			}
			
			skillAction = new CommonSkillAction(baseActionData);
			if(playerActionInfo.activityHero.pos != playerActionInfo.enterNinjaInfo.pos)
			{
				EventCenter.addEventHandler(ninja, RenderEvent.HIT, onSkillTrigger, true);
				skillAction.addEventListener(ActionEvent.END, onActionEnd);
			}
			else
			{
				skillAction.addEventListener(ActionEvent.END, onActionEndAndEnterNinja);
			}
			skillAction.begin();
		}
		
		private var enterEnd:Boolean;
		private var isSkillActionEnd:Boolean;
		private function onActionEnd(evt:Event):void
		{
			isSkillActionEnd = true;
			
			skillAction.removeEventListener(ActionEvent.END, onActionEnd);
			
			checkComplete();
		}
		
		private function onActionEndAndEnterNinja(evt:Event):void
		{
			isSkillActionEnd = true;
			
			skillAction.removeEventListener(ActionEvent.END, onActionEndAndEnterNinja);
			
			enterChangeNinja();
		}
		
		private function onSkillTrigger():void
		{
			var ninja:Ninja;
			
			ninja = m_roleMgr.getNinjaByPos(playerActionInfo.activityHero.pos);
			EventCenter.removeEventHandler(ninja, RenderEvent.HIT, onSkillTrigger);
			
			enterChangeNinja();
		}
		
		private function enterChangeNinja():void
		{
			var ninja:Ninja;
			var enterAction:EnterAction;
			var exeuntAction:ExeuntAction;
			var oldNinjaInfo:NinjaInfo;
			var cacheExeuntStageAction:int;
			
			ninja = m_roleMgr.getNinjaByPos(playerActionInfo.enterNinjaInfo.pos);
			
			playerActionInfo.enterNinjaInfo.specialSkillIds = SkillConfig.getSpecialSkillId(playerActionInfo.enterNinjaInfo.skillList);
			
			new NinjaExeuntNotice([playerActionInfo.enterNinjaInfo]).send();
			new NinjaEnterNotice([playerActionInfo.enterNinjaInfo]).send();
			
			cacheExeuntStageAction = playerActionInfo.enterNinjaInfo.exeuntStageAction;
			
			oldNinjaInfo = FightManagerCenter.ninjaMgr.getNinjaByPos(playerActionInfo.enterNinjaInfo.pos).data;
			oldExeuntStageAction = oldNinjaInfo.exeuntStageAction;
			oldNinjaInfo.exeuntStageAction = StageNinjaActionType.EXIT_VANISH;
			playerActionInfo.enterNinjaInfo.exeuntStageAction = StageNinjaActionType.EXIT_VANISH;
			exeuntAction = new ExeuntAction(roundId, actionId);
			exeuntAction.data = [playerActionInfo.enterNinjaInfo];
			exeuntAction.begin();
			
			playerActionInfo.enterNinjaInfo.exeuntStageAction = cacheExeuntStageAction;
			playerActionInfo.enterNinjaInfo.enterStageAction = StageNinjaActionType.ENTER_VANISH;
			enterAction = new EnterAction(roundId, actionId);
			enterAction.data = [playerActionInfo.enterNinjaInfo];
			enterAction.addEventListener(ActionEvent.END, onEnterEnd);
			enterAction.begin();
		}
		
		
		private function onEnterEnd(evt:ActionEvent):void
		{
			var ninja:Ninja;
			var ninjaSceneList:Array;
			
			enterEnd = true;
			
			(evt.currentTarget as EnterAction).removeEventListener(ActionEvent.END, onEnterEnd);
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(playerActionInfo.enterNinjaInfo.pos);
			ninja.data.exeuntStageAction = oldExeuntStageAction;
			
			ninjaSceneList = m_roleMgr.getBindingNinjaSceneList();
			if(ninjaSceneList.length == 0)
			{
				m_sceneMgr.resetNinjaSceneInfo();
			}
			else
			{
				m_sceneMgr.updateNinjaSceneInfo(ninjaSceneList[ninjaSceneList.length - 1]);
			}
			
			checkComplete();
		}
		
		private function checkComplete():void
		{
			if(isSkillActionEnd && enterEnd)
			{
				FightManagerCenter.delayCallBack(delayEndComplete, 24);
			}
		}
		
		private function delayEndComplete():void
		{
			new CurtainNotice(false).send();
			playComplete();
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			playerActionInfo = null;
			skillAction = null;
		}
	}
}