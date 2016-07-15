package com.tencent.morefun.naruto.plugin.motion.player
{
	
	import com.tencent.morefun.naruto.plugin.motion.data.ActivityHero;
	import com.tencent.morefun.naruto.plugin.motion.data.AfterActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.BaseActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.ComboActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.MotionLogger;
	import com.tencent.morefun.naruto.plugin.motion.notice.ComboMoreThan5Notice;
	import com.tencent.morefun.naruto.plugin.motion.notice.PromptSkillClearNotice;
	import com.tencent.morefun.naruto.plugin.motion.player.action.event.ActionEvent;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.ComboSkillAction;
	import com.tencent.morefun.naruto.plugin.motion.player.data.BaseActionData;
	import com.tencent.morefun.naruto.plugin.motion.player.data.SkillActionCallBackTypeDef;
	import com.tencent.morefun.naruto.plugin.motion.player.event.BasePlayerEvent;
	
	import flash.events.Event;
	import flash.utils.Dictionary;
	
	public class ComboAttackPlayer extends BasePlayer
	{
		public function ComboAttackPlayer()
		{
			super();
		}
		override public function destroy():void
		{	
			super.destroy();
		}
		private var curSkillAction:ComboSkillAction;
		private var action:ComboActionInfo;
		private var isLastContinue:Boolean;
		private var activityHeroList:Array = [];
		private var waitEndAction:Array = [];
		private var afterActions:Array;
		private var hideOthers:Boolean;
		private var comboIndex:int;
		private var _isComboMoreThan5:Boolean;
		
		override public function playAction(actionInfo:Object, roleMgr:NinjaManager, buffMgr:BuffManager, skillMgr:SkillManager, sceneMgr:SceneManager):void
		{
			super.playAction(actionInfo, roleMgr, buffMgr, skillMgr, sceneMgr);
			
			var i:int;
			var skillAction:ComboSkillAction;
			var activityHero:ActivityHero;
			var activityNinja:Ninja;
			var skillInfo:SkillInfo;
			var event:BasePlayerEvent;
			var cahootHeroList:Array;
			var cahootPos:Array = [];
			var aftetAction:AfterActionInfo;
			var cahootHeros:Array;
			var ninja:Ninja;
			var buffList:Array;
			var overMap:Dictionary = new Dictionary();
			var needOverSetting:Boolean = true;
			var baseActionData:BaseActionData;
			var showNinjaList:Array;
			var hideNinjaList:Array;
			var passiveHero:PassiveHero;
			
			(actionInfo as BaseActionInfo).update();
			
			updateAfterAction();
			
			if(activityHeroList.length == 0)
			{
				this.playComplete();
				return ;
			}
			
			skillInfo = m_skillMgr.getSkillInfo(activityHeroList[0].skillId);
			hideOthers = skillInfo.hideOthers;
			
			
			//			cahootHero = activityHero.cahootPos;
			//			for each(ninjaInfo in cahootHero)
			//			{
			//				cahootPos.push(ninjaInfo.pos);
			//			}
			for(i = activityHeroList.length - 1;i >= 0;i --)
			{
				activityHero = activityHeroList[i];
				if(activityHero.realPassiveBeHit == true && needOverSetting == true)
				{
					overMap[activityHero] = actionInfo.isOver;
					needOverSetting = false;
				}
				else
				{
					overMap[activityHero] = false;
				}
			}
			
			new PromptSkillClearNotice().send();
			
			var totalComboCount:int = activityHeroList.length;
			for (i = 1; i < activityHeroList.length; i++) {//头一个总算1
				activityHero = activityHeroList[i];
				if (activityHero.hold == false) {
					totalComboCount--;
				}
			}
			MotionLogger.output("[ComboAttackPlayer]>>>playAction:totalComboCount=" , totalComboCount);
			
			if(totalComboCount >= 6) {
				_isComboMoreThan5 = true;
				new ComboMoreThan5Notice(true).send();
			}
			
			while(activityHeroList.length != 0)
			{
				showNinjaList = m_hideList.concat();
				hideNinjaList = m_hideList.concat();
				
				activityHero = activityHeroList.shift();
				afterActions = actionInfo.afterActionList;
				
				baseActionData = new BaseActionData();
				baseActionData.activityHero = activityHero;
				baseActionData.activityNinja = m_roleMgr.getNinjaByPos(activityHero.pos);
				baseActionData.skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
				baseActionData.cahootPosList = activityHero.cahootPos;
				baseActionData.puppetPosList = m_attackPuppet;
				baseActionData.trunBackList = activityHero.afterActions;
				baseActionData.isCombo = true;
				baseActionData.comboIndex = comboIndex;
				baseActionData.roundId = actionInfo.roundId;
				baseActionData.actionId = actionInfo.actionIdList.shift();
				
				if(activityHeroList.length != 0)
				{
					baseActionData.nextSkillId =  (activityHeroList[0] as ActivityHero).skillId;
				}
				
				for each(passiveHero in activityHero.passiveHeros)
				{
					baseActionData.passiveNinjas.push(m_roleMgr.getNinjaByPos(passiveHero.pos));
				}
				if(hideOthers)
				{
					baseActionData.hideNinjaList = hideNinjaList;
					if(activityHeroList.length == 0)
					{
						baseActionData.showNinjaList = showNinjaList;
					}
				}
				baseActionData.isOver = overMap[activityHero];
				EventCenter.addEventHandler(baseActionData, SkillActionCallBackTypeDef.PLAY_NEXT_SKILL, onPlayerExecuterComplete);
				skillAction = new ComboSkillAction(baseActionData);
				skillAction.addEventListener(ActionEvent.END, onPlayerExecuterEnd);
				skillAction.begin();
				
				waitEndAction.push(skillAction);
				
				curSkillAction = skillAction;
				
				activityNinja = m_roleMgr.getNinjaByPos(activityHero.pos);
				
				skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
				if(skillInfo.type == SkillDef.TYPE_SPECIAL)
				{
					event = new BasePlayerEvent(BasePlayerEvent.SPECIAL_SKILL);
					event.specialPos = activityHero.pos;
					event.skillId = activityHero.skillId;
					this.dispatchEvent(event);
				}
				
				for each(var skillId:int in activityHero.useSkillIdList)
				{
					skillInfo = m_skillMgr.getSkillInfo(skillId);
					if(skillInfo.type == SkillDef.TYPE_SPECIAL)
					{
						event = new BasePlayerEvent(BasePlayerEvent.SPECIAL_SKILL);
						event.specialPos = activityHero.pos;
						event.skillId = skillId;
						this.dispatchEvent(event);
					}
				}
				
				showNinjaList.splice(0, showNinjaList.length);
				
				if(activityHeroList[0] && activityHeroList[0].hold == true)
				{
					break;
				}
			}
		}
		
		private function isLastAction(activitHeros:Array, index:int, pos:int):Boolean
		{
			var activityHero:ActivityHero;
			var cahootHeros:Array;
			
			for(var i:int = index;i < activitHeros.length;i ++)
			{
				activityHero = activitHeros[i];
				if(activityHero.pos == pos)
				{
					return false;
				}
			}
			
			return true;
		}
		
		private function onPlayerExecuterComplete(target:Object):void
		{
			var skillAction:ComboSkillAction;
			var activityHero:ActivityHero;
			var activityNinja:Ninja;
			var skillInfo:SkillInfo;
			var event:BasePlayerEvent;
			var cahootHero:Array;
			var cahootHeroList:Array;
			var cahootPos:Array = [];
			var overMap:Dictionary = new Dictionary();
			var needOverSetting:Boolean = true;
			var passiveNinjas:Array;
			var baseActionData:BaseActionData;
			var showNinjaList:Array;
			var hideNinjaList:Array;
			
			passiveNinjas = [];
			
			attackIndex += 1;
			comboIndex += 1;
			
			EventCenter.removeEventHandler(target, SkillActionCallBackTypeDef.PLAY_NEXT_SKILL, onPlayerExecuterComplete);
			
			if(activityHeroList.length == 0)
			{
				return ;
			}
			
			for(var i:int = activityHeroList.length - 1;i >= 0;i --)
			{
				activityHero = activityHeroList[i];
				if(activityHero.realPassiveBeHit == true && needOverSetting == true)
				{
					overMap[activityHero] = actionInfo.isOver;
					needOverSetting = false;
				}
				else
				{
					overMap[activityHero] = false;
				}
			}
			
			while(activityHeroList.length != 0)
			{
				showNinjaList = m_hideList.concat();
				hideNinjaList = m_hideList.concat();
				
				activityHero = activityHeroList.shift();
				cahootHero = activityHero.cahootPos;
				for each(var ninjaInfo:NinjaInfo in cahootHero)
				{
					cahootPos.push(ninjaInfo.pos);
				}
				
				baseActionData = new BaseActionData();
				baseActionData.activityHero = activityHero;
				baseActionData.activityNinja = m_roleMgr.getNinjaByPos(activityHero.pos);
				baseActionData.skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
				baseActionData.cahootPosList = activityHero.cahootPos;
				baseActionData.trunBackList = activityHero.afterActions;
				baseActionData.puppetPosList = m_attackPuppet;
				baseActionData.isCombo = true;
				baseActionData.comboIndex = comboIndex;
				baseActionData.roundId = actionInfo.roundId;
				baseActionData.actionId = actionInfo.actionIdList.shift();
				
				if(activityHeroList.length != 0)
				{
					baseActionData.nextSkillId =  (activityHeroList[0] as ActivityHero).skillId;
				}
				
				for each(passiveHero in activityHero.passiveHeros)
				{
					baseActionData.passiveNinjas.push(m_roleMgr.getNinjaByPos(passiveHero.pos));
				}
				if(hideOthers)
				{
					baseActionData.hideNinjaList = hideNinjaList;
					if(activityHeroList.length == 0)
					{
						baseActionData.showNinjaList = showNinjaList;
					}
				}
				baseActionData.isOver = overMap[activityHero];
				for each(var passiveHero:PassiveHero in activityHero.passiveHeros)
				{
					passiveNinjas.push(m_roleMgr.getNinjaByPos(passiveHero.pos));
				}
				baseActionData.passiveNinjas = passiveNinjas;
				EventCenter.addEventHandler(baseActionData, SkillActionCallBackTypeDef.PLAY_NEXT_SKILL, onPlayerExecuterComplete);
				skillAction = new ComboSkillAction(baseActionData);
				skillAction.addEventListener(ActionEvent.END, onPlayerExecuterEnd);
				waitEndAction.push(skillAction);
				
				skillAction.begin();
				
				activityNinja = m_roleMgr.getNinjaByPos(activityHero.pos);
				
				curSkillAction = skillAction;
				skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
				if(skillInfo.type == SkillDef.TYPE_SPECIAL)
				{
					event = new BasePlayerEvent(BasePlayerEvent.SPECIAL_SKILL);
					event.specialPos = activityHero.pos;
					event.skillIndex = activityNinja.data.specialSkillIds.indexOf(activityHero.skillId);
					this.dispatchEvent(event);
				}
				
				for each(var skillId:int in activityHero.useSkillIdList)
				{
					skillInfo = m_skillMgr.getSkillInfo(skillId);
					if(skillInfo.type == SkillDef.TYPE_SPECIAL)
					{
						event = new BasePlayerEvent(BasePlayerEvent.SPECIAL_SKILL);
						event.specialPos = activityHero.pos;
						event.skillId = skillId;
						this.dispatchEvent(event);
					}
				}
				
				if(activityHeroList[0] && activityHeroList[0].hold == true)
				{
					break;
				}
			}
		}
		
		private function onPlayerExecuterEnd(evt:Event):void
		{
			var skillAction:ComboSkillAction;
			var index:int;
			var skillId:int;
			var activtiyHero:ActivityHero;
			
			skillAction = evt.currentTarget as ComboSkillAction;
			skillAction.removeEventListener(ActionEvent.END, onPlayerExecuterEnd);
			skillAction.removeEventListener(SkillActionCallBackTypeDef.PLAY_NEXT_SKILL, onPlayerExecuterComplete);
			waitEndAction.splice(waitEndAction.indexOf(skillAction), 1);
			completeCheck();
			
			activtiyHero = skillAction.actionData.activityHero;
			skillId = activtiyHero.skillId;
		}
		
		private function updateAfterAction():void
		{
			var i:int;
			var pos:int;
			var cahootHeros:Array;
			var activityHero:ActivityHero;
			var aftetAction:AfterActionInfo;
			var afterActionList:Array;
			var masterActivityHero:ActivityHero;
			var turnBackCahootMap:Dictionary = new Dictionary();
			var turnBackMasterMap:Dictionary = new Dictionary();
			var turnBackCahootList:Array;
			var turnBackMasterList:Array;
			
			for(i = 0;i < actionInfo.activiteHeros.length;i ++)
			{
				activityHeroList.push(actionInfo.activiteHeros[i]);
				activityHero = actionInfo.activiteHeros[i];
				
				//傀儡要跟主身一起回去
				if(activityHero.hold == false)
				{
					if(activityHero.puppetPos != -1)
					{
						turnBackMasterList = turnBackMasterMap[activityHero.pos];
						if(turnBackMasterList == null)
						{
							turnBackMasterList = [];
							turnBackMasterMap[activityHero.pos] = turnBackMasterList;
						}
						turnBackMasterList.push(activityHero.puppetPos);
					}
				}
				
				if(activityHero.hold == true)
				{
					turnBackCahootList = turnBackCahootMap[activityHero.pos];
					if(turnBackCahootList == null)
					{
						turnBackCahootList = [];
						turnBackCahootMap[activityHero.pos] = turnBackCahootList;
					}
					
					cahootHeros = activityHero.cahootPos;
					for each(pos in cahootHeros)
					{
						aftetAction = new AfterActionInfo();
						aftetAction.pos = pos;
						//					activityHero.afterActions.push(aftetAction);
						turnBackCahootList.push(aftetAction);
					}
				}
				
				if(isLastAction(actionInfo.activiteHeros, i + 1, activityHero.pos))
				{
					if(activityHero.hold == false)
					{
						continue ;
					}
					
					aftetAction = new AfterActionInfo();
					aftetAction.pos = activityHero.pos;
					activityHero.afterActions.push(aftetAction);
					for each(aftetAction in turnBackCahootList)
					{
						activityHero.afterActions.push(aftetAction);
					}
					
					turnBackCahootList = turnBackMasterMap[activityHero.pos];
					for each(pos in turnBackCahootList)
					{
						aftetAction = new AfterActionInfo();
						aftetAction.pos = pos;
						activityHero.afterActions.push(aftetAction);
					}
					
					delete turnBackMasterMap[activityHero.pos];
					delete turnBackCahootMap[activityHero.pos];
				}
			}
			
			afterActionList = [];
			for(i = 0;i < actionInfo.activiteHeros.length;i ++)
			{
				activityHero = actionInfo.activiteHeros[i];
				if(isLastAction(actionInfo.activiteHeros, i + 1, activityHero.pos))
				{
					if(activityHero.hold == false)
					{
						if(activityHero.realPassiveBeHit == false){continue ;}
						
						if(masterActivityHero == null)
						{
							masterActivityHero = activityHero;
						}
						
						aftetAction = new AfterActionInfo();
						aftetAction.pos = activityHero.pos;
						afterActionList.push(aftetAction);
						
						turnBackCahootList = turnBackMasterMap[activityHero.pos];
						for each(pos in turnBackCahootList)
						{
							aftetAction = new AfterActionInfo();
							aftetAction.pos = pos;
							afterActionList.push(aftetAction);
						}
						
						cahootHeros = activityHero.cahootPos;
						for each(pos in cahootHeros)
						{
							aftetAction = new AfterActionInfo();
							aftetAction.pos = pos;
							afterActionList.push(aftetAction);
						}
					}
					else
					{
						if(masterActivityHero == null)
						{
							continue ;
						}
						
						for each(aftetAction in afterActionList)
						{
							masterActivityHero.afterActions.push(aftetAction);
						}
						afterActionList = [];
						masterActivityHero = null;
					}
					

				}
			}
			
			if(afterActionList.length != 0)
			{
				masterActivityHero.afterActions = afterActionList;
			}
		}
		
		private function completeCheck():void
		{
			if(activityHeroList.length == 0 && waitEndAction.length == 0)
			{
				if (_isComboMoreThan5) {
					_isComboMoreThan5 = false;
					new ComboMoreThan5Notice(false).send();
				}
				new PromptSkillClearNotice().send();
				EventCenter.removeEventHandler(null, SkillActionCallBackTypeDef.PLAY_NEXT_SKILL, onPlayerExecuterComplete);
				this.playComplete();
			}
		}
		
		
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}
			
			curSkillAction = null;
			action = null;
			activityHeroList = null;
			waitEndAction = null;
			afterActions = null;
		}
	}
}