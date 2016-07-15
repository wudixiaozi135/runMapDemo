package com.tencent.morefun.naruto.plugin.motion.player
{

	import com.tencent.morefun.naruto.plugin.motion.data.KathaChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.NinjaBattleCfgInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.StageActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.StageActionType;
	import com.tencent.morefun.naruto.plugin.motion.data.StageInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.def.NinjaDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.player.action.Action;
	import com.tencent.morefun.naruto.plugin.motion.player.action.event.ActionEvent;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.EnterAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.ExeuntAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.ReplaceNinjaAction;
	
	import flash.events.IEventDispatcher;
	import flash.utils.setTimeout;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class StagePlayer extends BasePlayer
	{
		private var actionList:Array = [];
		private var curActionPos:Array = [];
		private var curActionIndex:int;
		private var endActionIndex:int;
		private var endActionNum:int;
		private var roundId:int;
		private var actionId:int;
		private var delayTime:int;
		
		private var stageInfos:Array = [];
		private var kathaChangedList:Array = [];
		
		public function StagePlayer(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		override public function destroy():void
		{
			super.destroy();
		}
		
		override public function playAction(actionInfo:Object,
											roleMgr:NinjaManager,
											buffMgr:BuffManager,
											skillMgr:SkillManager,
											sceneMgr:SceneManager):void
		{
			var stageActionInfo:StageActionInfo;
			var ninjaInfos:Array;
			
			super.playAction(actionInfo, roleMgr, buffMgr, skillMgr, sceneMgr);
			
			roundId = actionInfo.roundId;
			actionId = actionInfo.actionIdList.shift();
			
			stageActionInfo = actionInfo as StageActionInfo;
			stageInfos = stageActionInfo.stageInfos;
			kathaChangedList = stageActionInfo.kathaChangedList;
			endActionIndex = stageInfos.length;
			delayTime = stageActionInfo.delayTime;
			
			addAndStartActions();
		}
		
		private function addAndStartActions():void
		{
			var stageInfo:StageInfo;
			
			//			while(curActionIndex != endActionIndex)
			//			{
			stageInfo = stageInfos[curActionIndex];
			
			//				if(checkCollision(stageInfo.getActionPos()) == true)
			//				{
			//					break;
			//				}
			
			switch(stageInfo.type)
			{
				case StageActionType.NORMAL_ENTER_STAGE:
					addEnterAction(stageInfo);
					break;
				case StageActionType.EXIT_STAGE:
				case StageActionType.ESCAPE_EXIT_STAGE:
					addExeuntAction(stageInfo);
					break;
				case StageActionType.REPLACE_ENTER_STAGE:
					addReplaceNinjaAction(stageInfo);
					break;
			}
			
			curActionPos = curActionPos.concat(stageInfo.getActionPos());
			curActionIndex ++;
			//			}
			
			for each(var action:Action in actionList)
			{
				if(!action.isBegin)
				{
					action.begin();
				}
			}
		}
		
		private function checkCollision(posList:Array):Boolean
		{
			for each(var pos:int in posList)
			{
				if(curActionPos.indexOf(pos) != -1)
				{
					return true;
				}
			}
			
			return false;
		}
		
		private function removePosToActionPos(ninjaInfoList:Array):void
		{
			for each(var ninjaInfo:NinjaInfo in ninjaInfoList)
			{
				curActionPos.splice(curActionPos.indexOf(ninjaInfo.pos), 1);
			}
		}
		
		private function addEnterAction(stageInfo:StageInfo):void
		{
			var action:EnterAction;
			var ninjaInfos:Array;
			
			ninjaInfos = stageInfo.ninjaInfos;
			for each(var ninjaInfo:NinjaInfo in ninjaInfos)
			{
				ninjaInfo.specialSkillIds = SkillConfig.getSpecialSkillId(ninjaInfo.skillList);
			}
			
			action = new EnterAction(roundId, actionId);
			action.data = ninjaInfos;
			action.addEventListener(ActionEvent.END, onActionEnd);
			actionList.push(action);
		}
		
		private function addExeuntAction(stageInfo:StageInfo):void
		{
			var action:ExeuntAction;
			var ninjaInfos:Array;
			var cloneNinjaInfos:Array;
			var ninjaCfg:NinjaBattleCfgInfo;
			var ninjaInfo:NinjaInfo;
			
			ninjaInfos = [];
			cloneNinjaInfos = stageInfo.ninjaInfos.concat();
			for(var i:int = 0;i < cloneNinjaInfos.length;i ++)
			{
				ninjaInfo = cloneNinjaInfos[i];
				if(m_roleMgr.getNinjaByPos(ninjaInfo.pos) == null)
				{
					ninjaCfg = NinjaConfig.getNinjaInfoById(ninjaInfo.ninjaId);
					if(ninjaCfg.cfgInfo.type != NinjaDef.TYPE_MULTI && ninjaCfg.cfgInfo.type != NinjaDef.TYPE_MANIPULATE)
					{
						throw new Error(I18n.lang("as_motion_1451031573_4403") + ninjaInfo.pos + "name " +　ninjaInfo.name);
					}
					else
					{
						cloneNinjaInfos.splice(i, 1);
						i--;
					}
					
					continue ;
				}
				
				ninjaInfos.push(m_roleMgr.getNinjaByPos(ninjaInfo.pos).data);
			}
			
			action = new ExeuntAction(roundId, actionId);
			action.data = cloneNinjaInfos;
			action.addEventListener(ActionEvent.END, onActionEnd);
			actionList.push(action);
		}
		
		private function addReplaceNinjaAction(stageInfo:StageInfo):void
		{
			var ninjaInfo:NinjaInfo;
			var action:ReplaceNinjaAction;
			var ninjaInfos:Array;
			
			ninjaInfos = stageInfo.ninjaInfos;
			for each(ninjaInfo in ninjaInfos)
			{
				ninjaInfo.specialSkillIds = SkillConfig.getSpecialSkillId(ninjaInfo.skillList);
			}
			
			action = new ReplaceNinjaAction(roundId, actionId, ninjaInfos);
			action.data = ninjaInfos;
			action.addEventListener(ActionEvent.END, onActionEnd);
			actionList.push(action);
		}
		
		private function onActionEnd(evt:ActionEvent):void
		{
			var ninja:Ninja;
			var action:Action;
			var ninjaSceneList:Array;
			
			action = evt.currentTarget as Action;
			action.removeEventListener(ActionEvent.END, onActionEnd);
			actionList.splice(actionList.indexOf(action), 1);
			removePosToActionPos(action.data as Array);
			
			endActionNum ++;
			if(endActionNum != endActionIndex)
			{
				addAndStartActions();
				return ;
			}
			
			if(endActionNum == endActionIndex)
			{
				ninjaSceneList = m_roleMgr.getBindingNinjaSceneList();
				if(ninjaSceneList.length == 0)
				{
					m_sceneMgr.resetNinjaSceneInfo();
				}
				else
				{
					m_sceneMgr.updateNinjaSceneInfo(ninjaSceneList[ninjaSceneList.length - 1]);
				}
				
				for each(var katalChangedInfo:KathaChangedInfo in kathaChangedList)
				{
					ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(katalChangedInfo.pos);
					ninja.updateMp(katalChangedInfo);
				}
				
				setTimeout(onPlayComplete, delayTime);
			}
		}
		
		private function onPlayComplete():void
		{
			playComplete();
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			actionList = null;
			curActionPos = null;
			stageInfos = null;
			kathaChangedList = null;
		}
	}
}