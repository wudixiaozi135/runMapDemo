package com.tencent.morefun.naruto.plugin.motion.player
{
	
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.plugin.motion.data.ActivityHero;
	import com.tencent.morefun.naruto.plugin.motion.data.AfterActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.AttributeChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.BaseActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.CommonActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.OnlyDefenceEffectActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.MoveType;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.player.action.event.ActionEvent;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.CommonSkillAction;
	import com.tencent.morefun.naruto.plugin.motion.player.data.BaseActionData;
	import com.tencent.morefun.naruto.plugin.motion.player.event.BasePlayerEvent;
	
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.utils.getTimer;
	
	public class OnlyDefenceEffectPlayer extends BasePlayer
	{	
		private static var debugInfoList:Array = [];
		
		public function OnlyDefenceEffectPlayer(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		override public function destroy():void
		{	
			super.destroy();
		}
		
		private var curSkillAction:CommonSkillAction;
		private var action:OnlyDefenceEffectActionInfo;
		private var activityHeroList:Array = [];
		
		private var time:Number;
		private var skillId:int;
		private var index:int;
		private var passiveHeros:Array;
		private var otherAttributeChangedInfoList:Array;
		private var activityHeroAttributeChangedInfo:AttributeChangedInfo;
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
			
			action = actionInfo as OnlyDefenceEffectActionInfo;
			(actionInfo as BaseActionInfo).update();
			
			attackIndex = 0;
			
			activityHero = actionInfo.activiteHero;
			actionInfo.afterActionList = getAfterActionInfo(activityHero);
			afterActionList = actionInfo.afterActionList;
			
			skillId = activityHero.skillId;
			skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
			
			
			
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
			
			passiveHeros = activityHero.passiveHeros;
			activityHero.passiveHeros = [];
			
			activityHeroAttributeChangedInfo = activityHero.attributeChangedInfo;
			otherAttributeChangedInfoList = activityHero.otherAttributeChangedInfoList;
			
			activityHero.attributeChangedInfo = null;
			activityHero.otherAttributeChangedInfoList = [];
			
			//			for each(passiveHero in activityHero.passiveHeros)
			//			{
			//				baseActionData.passiveNinjas.push(m_roleMgr.getNinjaByPos(passiveHero.pos));
			//			}
			
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
			
			
			skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
			
			event = new BasePlayerEvent(BasePlayerEvent.SPECIAL_SKILL);
			event.specialPos = activityHero.pos;
			event.skillId = skillId;
			this.dispatchEvent(event);
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(activityHero.pos);
			if(ninja.resComplete == true)
			{
				EventCenter.addEventHandler(ninja, RenderEvent.HIT, onActivityNinjaHit, true);
			}
			else
			{
				onActivityNinjaHit();
			}
		}
		
		private function onActivityNinjaHit():void
		{
			var ninja:Ninja;
			var attributeChangedInfo:AttributeChangedInfo;
			
			if(activityHeroAttributeChangedInfo)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(activityHeroAttributeChangedInfo.pos);
				ninja.updateAttribute(activityHeroAttributeChangedInfo);
			}
			
			for each(attributeChangedInfo in otherAttributeChangedInfoList)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(attributeChangedInfo.pos);
				ninja.updateAttribute(attributeChangedInfo);
			}
			
			for each(var passiveHero:PassiveHero in passiveHeros)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
				ninja.updateAttribute(passiveHero.attributeChangedInfo);
			}
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
			var ninja:Ninja;
			var skillAction:CommonSkillAction;
			
			skillAction = evt.currentTarget as CommonSkillAction;
			skillAction.removeEventListener(ActionEvent.END, onPlayerExecuterComplete);
			
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(action.activiteHero.pos);
			EventCenter.removeEventHandler(ninja, RenderEvent.HIT, onActivityNinjaHit);
			
			logger.output("EventAttackAction", "CommonAttackPlayerEnd");
			
			//			removeDebugInfo(curDebugInfo);
			this.playComplete();
		}
		
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}
			
			debugInfoList = null;
			curSkillAction = null;
			action = null;
			activityHeroList = null;
		}
	}
}
