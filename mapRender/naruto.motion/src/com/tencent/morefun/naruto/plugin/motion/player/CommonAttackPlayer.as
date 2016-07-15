package com.tencent.morefun.naruto.plugin.motion.player
{

	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.plugin.motion.data.ActivityHero;
	import com.tencent.morefun.naruto.plugin.motion.data.AfterActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.BaseActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.CommonActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.MoveType;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.notice.SpellBeginSkillNotice;
	import com.tencent.morefun.naruto.plugin.motion.player.action.event.ActionEvent;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.CommonSkillAction;
	import com.tencent.morefun.naruto.plugin.motion.player.data.BaseActionData;
	import com.tencent.morefun.naruto.plugin.motion.player.event.BasePlayerEvent;
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.utils.getTimer;

	public class CommonAttackPlayer extends BasePlayer
	{	
		private static var debugInfoList:Array = [];
		private var curDebugInfo:DebugInfo;
		
		public function CommonAttackPlayer(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		override public function destroy():void
		{	
			super.destroy();
		}
		
		private var curSkillAction:CommonSkillAction;
		private var action:CommonActionInfo;
		private var activityHeroList:Array = [];
		
		private var time:Number;
		private var skillId:int;
		private var index:int;
		private var _isSpellBeginSkill:Boolean;
		override public function playAction(actionInfo:Object, roleMgr:NinjaManager, buffMgr:BuffManager, skillMgr:SkillManager, sceneMgr:SceneManager):void
		{
			super.playAction(actionInfo, roleMgr, buffMgr, skillMgr, sceneMgr);
			
			var skillAction:CommonSkillAction;
			var activityHero:ActivityHero;
			var activityNinja:Ninja;
			var afterActionList:Array;
			var skillInfo:SkillInfo;
			var event:BasePlayerEvent;
			var cahootHeroList:Array;
			var passiveHero:PassiveHero
			var buffList:Array;
			var ninja:Ninja;
			var baseActionData:BaseActionData;
			
			logger.output("EventAttackAction", "CommonAttackPlayerStart");
			
			(actionInfo as BaseActionInfo).update();
			
			attackIndex = 0;
			
			activityHero = actionInfo.activiteHero;
			actionInfo.afterActionList = getAfterActionInfo(activityHero);
			afterActionList = actionInfo.afterActionList;
			//			afterActionList = actionInfo.afterActionList;//归位忍者列表
			
			skillId = activityHero.skillId;
			skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
			if (skillInfo.triggerCondition == 4) {
				_isSpellBeginSkill = true;
				new SpellBeginSkillNotice(true).send();;
			}
			
			//--------------------------------Debug-----------------------------/
//			if(getDebugInfo(activityHero.pos, skillInfo.id) != null)
//			{
//				throw new Error("debug");
//			}
//			
//			curDebugInfo = new DebugInfo();
//			curDebugInfo.pos = activityHero.pos;
//			curDebugInfo.skillId = skillInfo.id;
//			addDebugInfo(curDebugInfo);
			//----------------------------------------------------------------/
			
			baseActionData = new BaseActionData();
			baseActionData.activityHero = activityHero;
			baseActionData.activityNinja = m_roleMgr.getNinjaByPos(activityHero.pos);
			baseActionData.cahootPosList = activityHero.cahootPos;
			baseActionData.isOver = actionInfo.isOver;
			baseActionData.skillInfo = skillInfo;
			baseActionData.trunBackList = actionInfo.afterActionList;
			baseActionData.roundId = actionInfo.roundId;
			baseActionData.actionId = actionInfo.actionIdList.shift();
			if(skillInfo.hideOthers)
			{
				baseActionData.hideNinjaList = m_hideList;
				baseActionData.showNinjaList = m_hideList;
			}
			
			for each(passiveHero in activityHero.passiveHeros)
			{
				baseActionData.passiveNinjas.push(m_roleMgr.getNinjaByPos(passiveHero.pos));
			}
			
			skillAction = new CommonSkillAction(baseActionData);
			skillAction.addEventListener(ActionEvent.END, onPlayerExecuterComplete);
			skillAction.begin();
			index = rendererIndex;
			
			curSkillAction = skillAction;
			
			activityNinja = m_roleMgr.getNinjaByPos(activityHero.pos);
			skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
			if(skillInfo.type == SkillDef.TYPE_SPECIAL)
			{
				event = new BasePlayerEvent(BasePlayerEvent.SPECIAL_SKILL);
				event.specialPos = activityHero.pos;
				event.skillIndex = activityNinja.data.specialSkillIds.indexOf(activityHero.skillId);
				this.dispatchEvent(event);
			}
			
//			for each(skillId in activityHero.useSkillIdList)
//			{
				skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
//				if(skillInfo.type == SkillDef.TYPE_SPECIAL)
//				{
					event = new BasePlayerEvent(BasePlayerEvent.SPECIAL_SKILL);
					event.specialPos = activityHero.pos;
					event.skillId = skillId;
					this.dispatchEvent(event);
//				}
//			}
			
			time = getTimer();
		}
		
		private function getAfterActionInfo(activityHero:ActivityHero):Array
		{
			var skillInfo:SkillInfo;
			var subSkillInfos:Array;
			var afterActionInfo:AfterActionInfo;
			var afterActions:Array;
			
			afterActions = [];
			skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
			if(skillInfo.moveType != MoveType.NONE)
			{
				afterActionInfo = new AfterActionInfo();
				afterActionInfo.pos = activityHero.pos;
				afterActions.push(afterActionInfo);
				
				for each(var pos:int in activityHero.cahootPos)
				{
					afterActionInfo = new AfterActionInfo();
					afterActionInfo.pos = pos;
					afterActions.push(afterActionInfo);
				}
			}
			
			return afterActions;
		}
		
		private function onPlayerExecuterComplete(evt:Event):void
		{
			var skillAction:CommonSkillAction;
			
			skillAction = evt.currentTarget as CommonSkillAction;
			skillAction.removeEventListener(ActionEvent.END, onPlayerExecuterComplete);
			
			logger.output("EventAttackAction", "CommonAttackPlayerEnd");
			if (_isSpellBeginSkill) {
				_isSpellBeginSkill = false;
				new SpellBeginSkillNotice(false).send();;
			}
//			removeDebugInfo(curDebugInfo);
			this.playComplete();
		}
		
		private function addDebugInfo(debugInfo:DebugInfo):void
		{
			debugInfoList.push(debugInfo);
		}
		
		private function removeDebugInfo(debugInfo:DebugInfo):void
		{
			debugInfoList.splice(debugInfoList.indexOf(debugInfo), 1);
		}
		
		private function getDebugInfo(pos:int, skillId:int):DebugInfo
		{
			for each(var debugInfo:DebugInfo in debugInfoList)
			{
				if(debugInfo.pos == pos && debugInfo.skillId == skillId)
				{
					return debugInfo;
				}
			}
			
			return null;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			debugInfoList = null;
			curDebugInfo = null;
			curSkillAction = null;
			action = null;
			activityHeroList = null;
		}
	}
}

class DebugInfo
{
	public var pos:int;
	public var skillId:int;
	
	public function DebugInfo()
	{
		
	}

							
	public function autoSetNull():void
	{

	}
}