package com.tencent.morefun.naruto.plugin.motion.manager.ninja.data
{
	import com.tencent.morefun.framework.net.pub;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldInfo;
	
	import flash.geom.Rectangle;

	public class NinjaInfo
	{
		public var res:String;//
		public var ninjaId:int; // 是哪个英�?
		public var isCall:Boolean; //是否召唤出来的英�?
		public var pos:int; // 服务器下发的位置
		public var stagePos:int;//当前在场上的pos
		public var teamId:int;
		public var playerId:int;
		public var areaPositions:Array = [];
		public var rect:Rectangle;
		public var x:int; //出生点X
		public var y:int; //出生点Y
		public var selectY:int;
		public var hp:int; //当前�?��
		public var maxHP:int; //�?���?��
		public var mp:int; //当前查克�?
		public var maxMP:int; //�?��查克�?
		public var isDisplayName:Boolean;//名字是否常显
		public var skillList:Array = [];
		public var numSpecialSkill:int;
		public var specialSkillIds:Array = [];
		public var enterStageAction:int = -1;
		public var exeuntStageAction:int = -1;
		public var enterBuffList:Array = [];
		public var enterShield:ShieldInfo;
		public var skillStates:Array = [];
		public var callupEffect:EffectInfo;
		public var exeuntEffect:EffectInfo;
		public var comboEffect:EffectInfo;
		public var buffTransformEffect:EffectInfo;
		public var hpInfoVisible:Boolean;
		public var logicEffectList:Array = [];
		public var skillIndex:int = -1;
		public var level:int;
		public var name:String;
		public var controlTeam:int;
		public var selfTeam:Boolean;
		public var enervation:Boolean;
		public var playerOnline:Boolean;
		
		public var firstGuidLargeNinja:Boolean;

		public function clone():NinjaInfo
		{
			var ninjaInfo:NinjaInfo;
			
			ninjaInfo = new NinjaInfo();
			ninjaInfo.res = res;
			ninjaInfo.ninjaId = ninjaId;
			ninjaInfo.isCall = isCall;
			ninjaInfo.pos = pos;
			ninjaInfo.stagePos = stagePos;
			ninjaInfo.areaPositions = areaPositions;
			ninjaInfo.rect = rect;
			ninjaInfo.x = x;
			ninjaInfo.y = y;
			ninjaInfo.hp = hp;
			ninjaInfo.maxHP = maxHP;
			ninjaInfo.mp = mp;
			ninjaInfo.maxMP = maxMP;
			ninjaInfo.skillList = skillList;
			ninjaInfo.specialSkillIds = specialSkillIds;
			ninjaInfo.isDisplayName = isDisplayName;
			ninjaInfo.enterBuffList = enterBuffList.concat();
			ninjaInfo.enterShield = enterShield;
			ninjaInfo.logicEffectList = logicEffectList.concat();
			ninjaInfo.skillStates = skillStates;
			ninjaInfo.enterStageAction = enterStageAction;
			ninjaInfo.exeuntStageAction = exeuntStageAction;
			ninjaInfo.skillIndex = skillIndex;
			ninjaInfo.teamId = teamId;
			ninjaInfo.name = name;
			ninjaInfo.level = level;
			ninjaInfo.controlTeam = controlTeam;
			ninjaInfo.playerId = playerId;
			ninjaInfo.selfTeam = selfTeam;
			ninjaInfo.enervation = enervation;
			ninjaInfo.firstGuidLargeNinja = firstGuidLargeNinja;
			
			return ninjaInfo;
		}
	
															
		public function autoSetNull():void
		{

			areaPositions = null;
			rect = null;
			skillList = null;
			specialSkillIds = null;
			enterBuffList = null;
			enterShield = null;
			skillStates = null;
			callupEffect = null;
			exeuntEffect = null;
			comboEffect = null;
			buffTransformEffect = null;
			logicEffectList = null;
			name = null;
		}
	}
}