package com.tencent.morefun.naruto.plugin.motion.player
{
	import com.tencent.morefun.naruto.plugin.motion.MotionLogger;
	import com.tencent.morefun.naruto.plugin.motion.data.ActivityHero;
	import com.tencent.morefun.naruto.plugin.motion.data.AfterActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.AttackResultConfig;
	import com.tencent.morefun.naruto.plugin.motion.data.ComboActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.CommonActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveResultDef;
	import com.tencent.morefun.naruto.plugin.motion.data.TransformActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.MoveType;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.SceneStatusDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.player.event.BasePlayerEvent;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.geom.Rectangle;
	import flash.utils.Dictionary;

	public class BasePlayer extends EventDispatcher
	{
		private var originInfoMap:Dictionary = new Dictionary();
		
		protected var m_playerMode:int;
		protected var m_actionInfo:Object;
		protected var m_showList:Array = [];
		protected var m_hideList:Array = [];
		protected var m_attackPuppet:Array = [];
		protected var m_roleMgr:NinjaManager;
		protected var m_buffMgr:BuffManager;
		protected var m_skillMgr:SkillManager;
		protected var m_sceneMgr:SceneManager;
		public var attackIndex:int = 0;
		public var actionIndex:int;
		public var rendererIndex:int;
		public function BasePlayer(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function playAction(actionInfo:Object,
								   roleMgr:NinjaManager,
								   buffMgr:BuffManager,
								   skillMgr:SkillManager,
								   sceneMgr:SceneManager):void
		{
			var showNinjaList:Array;
			var passiveHeros:Array;
			var cahoots:Array;
			var battleNinja:Ninja;
			var ninjaMap:Dictionary;
			var activityHeros:Array = [];
			
			this.m_roleMgr = roleMgr;
			this.m_buffMgr = buffMgr;
			this.m_skillMgr = skillMgr;
			this.m_sceneMgr = sceneMgr;
			this.m_actionInfo = actionInfo;
			
			activityHeros = getActivtiyHero(actionInfo);
			
			showNinjaList = [];
			for each(var activityHero:ActivityHero in activityHeros)
			{
				battleNinja = m_roleMgr.getNinjaByPos(activityHero.pos);
				
				if(battleNinja.data.isCall)
				{
					if(activityHero.hold == false)
					{
						m_attackPuppet.push(battleNinja.data.pos);
					}
				}
				
				if(showNinjaList.indexOf(activityHero.pos) == -1)
				{
					showNinjaList.push(activityHero.pos);
				}
				
				cahoots = activityHero.cahootPos;
				for each(var cahootPos:int in cahoots)
				{
					if(showNinjaList.indexOf(cahootPos) == -1)
					{
						showNinjaList.push(cahootPos);
					}
				}
				
				passiveHeros = activityHero.passiveHeros;
				for each(var passiveHero:PassiveHero in passiveHeros)
				{
					if(showNinjaList.indexOf(passiveHero.pos) == -1)
					{
						showNinjaList.push(passiveHero.pos);
					}
				}
			}
			
			
			
			ninjaMap = roleMgr.getNinjaMap();
			for each(var ninja:Ninja in ninjaMap)
			{
				if(showNinjaList.indexOf(ninja.data.pos) == -1)
				{
					m_hideList.push(ninja.data.pos);
				}
			}
		}
		
		private function hasActivtiyHero(pos:int, activityHeros:Array):Boolean
		{
			for each(var activityHero:ActivityHero in activityHeros)
			{
				if(activityHero.pos == pos)
				{
					return true;
				}
			}
			
			return false;
		}
		
		private function getActivtiyHero(actionInfo:Object):Array
		{
			var activityHeroInfos:Array = [];
			
			if(actionInfo is CommonActionInfo)
			{
				activityHeroInfos.push(actionInfo.activiteHero);
			}
			
			if(actionInfo is ComboActionInfo)
			{
				for each(var activtiyInfo:ActivityHero in actionInfo.activiteHeros)
				{
					activityHeroInfos.push(activtiyInfo);
				}
			}
			
			if(actionInfo is TransformActionInfo)
			{
				activityHeroInfos.push((actionInfo as TransformActionInfo).activityHero);
			}
			
			return activityHeroInfos;
		}
		
		public function get actionInfo():Object
		{
			return m_actionInfo;
		}
		
		public function destroy():void
		{

		}
		
		public function playComplete():void
		{
			var event:BasePlayerEvent;
			event = new BasePlayerEvent(BasePlayerEvent.PLAY_COMPLETE);
			
			this.dispatchEvent(event);
		}
	
															
		public function autoSetNull():void
		{

			originInfoMap = null;
			m_actionInfo = null;
			m_showList = null;
			m_hideList = null;
			m_attackPuppet = null;
			m_roleMgr = null;
			m_buffMgr = null;
			m_skillMgr = null;
			m_sceneMgr = null;
		}
	}
}