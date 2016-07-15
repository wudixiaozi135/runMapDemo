package com.tencent.morefun.naruto.plugin.motion.event
{
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import flash.events.Event;
	import flash.geom.Point;

	public class MotionPlayerEvent extends Event
	{
		public static const ACTION_END:String = "actionEnd";
		public static const SCRIPT_END:String = "scriptEnd";
		public static const UI_EFFECT:String = "uiEffect";
		public static const HP_CHANGED:String = "hpChanged";
		public static const HP_UPDATE:String = "upUpdated";
		public static const UI_HIT:String = "uiHit";
		public static const SPECIAL_SKILL:String = "specialSkill";
		public static const KATHA_CHANGED:String = "kathaChanged";
		public static const ROLE_DEAD_CHANGED:String = "roleDeadChanged";
		public static const ROLE_FIX_CHANGED:String = "roleFixChanged";
		public static const HIDE_UI:String = "hideUI";
		public static const SHOW_UI:String = "showUI";
		public static const ROUND_CHANGED:String = "roundChanged";
		public static const SKILL_START:String = "skillStart";
		public static const NO_COMMON_SKILL_START:String = "skillStart";
		public static const COMMON_SKILL_START:String = "commonSkillStart";
		public static const COMBO_END:String = "comboEnd";
		public static const COMBO_START:String = "comboStart";
		public static const NINJA_ENTER:String = "ninjaEnter";
		public static const NINJA_EXEUNT:String = "ninjaExeunt";
		public static const SLOW_RENDER:String = "slowRender";
		public static const FORMATION_END:String = "formationEnd";
		public static const OPEN_FORMATION:String = "openFormation";
		public static const PLAY_SCRIPT:String = "playScript";
		public static const CHANGED_SKILL_STATUS:String = "changedSkillStatus";
		public static const CHECK_BUFF_FIX:String = "checkBuffFix";
		public static const PLAY_VIDEO:String = "playVideo";
		public static const CANCEL_SKILL:String = "cancelSkill";
		public static const USE_SPECIAL_SKILL:String = "useSpecialSkill";
		public static const PLAY_SOUND:String = "playSound";
		
		override public function clone():Event
		{
			var event:MotionPlayerEvent;
			
			event = new MotionPlayerEvent(type, bubbles, cancelable);
			event.effectParam = effectParam;
			event.effectPoint = effectPoint;
			event.buffId = buffId;
			event.hitNum = hitNum;
			event.pos = pos;
			event.hp = hp;
			event.katha = katha;
			event.fix = fix;
			event.dead = dead;
			event.slowRate = slowRate;
			event.slowTime = slowTime;
			event.effect = effect;
			event.ninjaInfos = ninjaInfos;
			event.scriptId = scriptId;
			event.skillId = skillId;
			event.url = url;
			event.soundId = soundId;
			event.volume = volume;
			return event;
		}
		
		public var effectParam:String;
		public var effectPoint:Point;
		public var buffId:int;
		public var hitNum:int;
		public var pos:int;
		public var hp:int;
		public var katha:int;
		public var team:int;
		public var fix:Boolean;
		public var dead:Boolean;
		public var roundIndex:int;
		public var skillId:int;
		public var skillIndex:int;
		public var ninjaInfos:Array;
		public var slowRate:int;
		public var slowTime:Number;
		public var effect:MmeAssetRender;
		public var scriptId:int;
		public var status:int;
		public var skillStates:Array;
		public var url:String;
		public var endMediumActionIndex:int;
		public var curMediumActionIndex:int;
		public var cancelSkillList:Array;
		public var soundId:int;
		public var volume:int;
		public function MotionPlayerEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

			effectParam = null;
			effectPoint = null;
			ninjaInfos = null;
			effect = null;
			skillStates = null;
			url = null;
			cancelSkillList = null;
		}
	}
}