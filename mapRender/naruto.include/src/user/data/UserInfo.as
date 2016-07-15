package user.data
{
	import com.tencent.morefun.naruto.util.StateInfo;
	
	import ninja.model.data.FormationInfo;
	import ninja.model.data.NinjaInfo;
	
	import player.datas.PlayerData;
	
	import skill.data.SkillInfo;
	
	import user.def.UserInfoKeyDef;
	import user.def.UserStateDef;
	import user.event.UserInfoEvent;
	
	[Event(name = "baseUpdate", type = "user.event.UserInfoEvent")]
	[Event(name = "ninjaInfoUpdate", type = "user.event.UserInfoEvent")]
	[Event(name = "roleStateUpdate", type = "user.event.UserInfoEvent")]
	[Event(name = "baseChanged", type = "user.event.UserInfoEvent")]
	public class UserInfo extends PlayerData
	{
		public var baseInited:Boolean;
		public var ninjaInited:Boolean;
		public var moveInfoInited:Boolean;
		
//		private var _uin:uint;
//		private var _role:uint;
//		private var _svrId:uint;
//		private var _ninja:int;
		private var _faceId:int;
		private var _ninjasex:int;
//		private var _teamId:String;
//		private var _isCaptain:Boolean;
		private var _professions:int;
//		移到PlayerData中
//		private var _name:String = "";
		private var _exp:uint;
//		private var _level:uint;
		private var _levelType:int;
		private var _money:uint;
		private var _yuanbao:uint;
		private var _dianquan:uint;
		private var _initDirection:int;
		private var _initLocation:Object = new Object();
		private var _hp:uint;                                                     // 玩家当前血量
		private var _maxHp:uint;                                                  // 玩家最大血量
		private var _chakura:uint;                                                // 玩家当前查克拉
		private var _maxChakura:uint;                                             // 玩家最大查克拉
		private var _strength:uint;                                               // 玩家当前体力
		private var _maxStrength:uint;                                      // 玩家最大体力
		private var _ultimateStrength:uint;							      // 极限体力
		private var _buyStrengthNeedMoney:uint;									  // 购买体力所需点券或者元宝数目
		private var _remainBuyStrengthTime:uint;								  // 剩余购买体力次数
		private var _battlePower:uint;                                                     // 玩家当前战斗力
		private var _maxBattlePower:uint;                                                  // 玩家最大战斗力
		private var _ninjaInfoList:Vector.<NinjaInfo>;
		private var _formationInfo:FormationInfo;
		private var _skillInfo:SkillInfo;
		private var _reason:int;
		private var _qq3366Level:int;
		
		
		public var guild:GuildInfoData=new GuildInfoData();
		
		public var state:StateInfo;
        public var gameInitialized:Boolean;
		public var secondPasswordInfo:SecondPasswordInfo = new SecondPasswordInfo();
		
		
		public function UserInfo(state:StateInfo=null):void
		{
			gameInitialized = false;
			if (!state)
			{
				this.state = UserStateConfig.getUserStateInfo();
			}
			else 
			{
				this.state = state;
			}
		}

		public function get faceId():int
		{
			return _faceId;
		}

		public function set faceId(value:int):void
		{
			_faceId = value;
		}

		public function get reason():int
		{
			return _reason;
		}

		public function set reason(value:int):void
		{
			_reason = value;
		}

		public function get skillInfo():SkillInfo
		{
			return _skillInfo;
		}

		public function set skillInfo(value:SkillInfo):void
		{
			_skillInfo = value;
		}

		public function get formationInfo():FormationInfo
		{
			return _formationInfo;
		}

		public function set formationInfo(value:FormationInfo):void
		{
			_formationInfo = value;
		}

		public function get ninjaInfoList():Vector.<NinjaInfo>
		{
			return _ninjaInfoList;
		}

		public function set ninjaInfoList(value:Vector.<NinjaInfo>):void
		{
			_ninjaInfoList = value;
		}

		public function get maxBattlePower():uint
		{
			return _maxBattlePower;
		}

		public function set maxBattlePower(value:uint):void
		{
			_maxBattlePower = value;
		}

		public function get battlePower():uint
		{
			return _battlePower;
		}

		public function set battlePower(value:uint):void
		{
			var oldValue:uint = _battlePower;
			_battlePower = value;
			
            if (value - oldValue != 0)
                dispatchBaseChanged(UserInfoKeyDef.BATTLE_POWER, _reason, value - oldValue);
		}

		public function get maxStrength():uint
		{
			return _maxStrength;
		}

		public function set maxStrength(value:uint):void
		{
			var oldValue:uint = _maxStrength;
			_maxStrength = value;
			
			if (value - oldValue != 0)
				dispatchBaseChanged(UserInfoKeyDef.MAX_STRENGTH, _reason, value - oldValue);
		}

		public function get strength():uint
		{
			return _strength;
		}

		public function set strength(value:uint):void
		{
			var oldValue:uint = _strength;
			_strength = value;
			
            if (value - oldValue != 0)
                dispatchBaseChanged(UserInfoKeyDef.STRENGTH, _reason, value - oldValue);
		}
		
		public function get ultimateStrength():uint
		{
			return _ultimateStrength;
		}
		
		public function set ultimateStrength(value:uint):void
		{
			var oldValue:uint = _ultimateStrength;
			_ultimateStrength = value;
			
			if (value - oldValue != 0)
				dispatchBaseChanged(UserInfoKeyDef.ULTIMATE_STRENGTH, _reason, value - oldValue);
		}
		
		public function get buyStrengthNeedMoney():uint
		{
			return _buyStrengthNeedMoney;
		}
		
		public function set buyStrengthNeedMoney(value:uint):void
		{
			_buyStrengthNeedMoney = value;
		}
		
		public function get remainBuyStrengthTime():uint
		{
			return _remainBuyStrengthTime;
		}
		
		public function set remainBuyStrengthTime(value:uint):void
		{
			var oldValue:uint = _remainBuyStrengthTime;
			_remainBuyStrengthTime = value;
			
			if (value - oldValue != 0)
				dispatchBaseChanged(UserInfoKeyDef.REMAIN_BUY_STRENGTH_TIME, _reason, value - oldValue);
		}

		public function get maxChakura():uint
		{
			return _maxChakura;
		}

		public function set maxChakura(value:uint):void
		{
			_maxChakura = value;
		}

		public function get chakura():uint
		{
			return _chakura;
		}

		public function set chakura(value:uint):void
		{
			var oldValue:uint = _chakura;
			_chakura = value;

            if (value - oldValue != 0)
                dispatchBaseChanged(UserInfoKeyDef.MP, _reason, value - oldValue);
		}

		public function get maxHp():uint
		{
			return _maxHp;
		}

		public function set maxHp(value:uint):void
		{
			var oldValue:uint = _maxHp;
			_maxHp = value;

            if (value - oldValue != 0)
                dispatchBaseChanged(UserInfoKeyDef.HP, _reason, value - oldValue);
		}

		public function get hp():uint
		{
			return _hp;
		}

		public function set hp(value:uint):void
		{
			var oldValue:uint = _hp;
			_hp = value;

            if (value - oldValue != 0)
                dispatchBaseChanged(UserInfoKeyDef.HP, _reason, value - oldValue);
		}

//		public function get initLocation():Object
//		{
//			return _initLocation;
//		}
//
//		public function set initLocation(value:Object):void
//		{
//			_initLocation = value;
//		}
//
//		public function get initDirection():int
//		{
//			return _initDirection;
//		}
//
//		public function set initDirection(value:int):void
//		{
//			_initDirection = value;
//		}

		public function get dianquan():uint
		{
			return _dianquan;
		}

		public function set dianquan(value:uint):void
		{
			var oldValue:uint = _dianquan;
			_dianquan = value;

            if (value - oldValue != 0)
                dispatchBaseChanged(UserInfoKeyDef.DIANJUAN, _reason, value - oldValue);
		}

		public function get yuanbao():uint
		{
			return _yuanbao;
		}

		public function set yuanbao(value:uint):void
		{
			var oldValue:uint = _yuanbao;
			_yuanbao = value;

            if (value - oldValue != 0)
                dispatchBaseChanged(UserInfoKeyDef.YUANBAO, _reason, value - oldValue);
		}

		public function get money():uint
		{
			return _money;
		}

		public function set money(value:uint):void
		{
			var oldValue:uint = _money;
			_money = value;

            if (value - oldValue != 0)
                dispatchBaseChanged(UserInfoKeyDef.MONEY, _reason, value - oldValue);
		}

		public function get levelType():int
		{
			return _levelType;
		}

		public function set levelType(value:int):void
		{
			_levelType = value;
		}

		public function get exp():uint
		{
			return _exp;
		}

		public function set exp(value:uint):void
		{
			var oldValue:uint = _exp;
			_exp = value;

            dispatchBaseChanged(UserInfoKeyDef.EXP, _reason, value - oldValue);
		}
		
//		移到PlayerData里
//		public function get name():String
//		{
//			return _name;
//		}
//
//		public function set name(value:String):void
//		{
//			_name = value;
//		}

		public function get professions():int
		{
			return _professions;
		}

		public function set professions(value:int):void
		{
			_professions = value;
		}
		
		override public function set level(value:int):void
		{
			var oldValue:uint = _level;
			super.level = value;
			_level = value;
			
			if (value - oldValue != 0)
				dispatchBaseChanged(UserInfoKeyDef.LEVEL, _reason, value - oldValue);
		}
		
		public function get qq3366Level():int
		{
			return _qq3366Level;
		}
		
		public function set qq3366Level(value:int):void
		{
			if(_qq3366Level == value)
			{
				return;
			}
			_qq3366Level = value;
			dispatchBaseChanged(UserInfoKeyDef.QQ_3366_LEVEL, 0, value);
		}

		override public function set isCaptain(value:Boolean):void
		{
			super.isCaptain = value;
			this.dispatchEvent(new UserInfoEvent(UserInfoEvent.TEAM_INFO_UPDATE));
		}


		override public function set teamId(value:String):void
		{
			super.teamId = value;
			this.dispatchEvent(new UserInfoEvent(UserInfoEvent.TEAM_INFO_UPDATE));
		}

		public function get ninjasex():int
		{
			return _ninjasex;
		}

		public function set ninjasex(value:int):void
		{
			_ninjasex = value;
		}

//		public function get ninja():int
//		{
//			return _ninja;
//		}
//
//		public function set ninja(value:int):void
//		{
//			_ninja = value;
//		}

//		public function get svrId():uint
//		{
//			return _svrId;
//		}
//
//		public function set svrId(value:uint):void
//		{
//			_svrId = value;
//		}
//
//		public function get role():uint
//		{
//			return _role;
//		}
//		
//		public function set role(value:uint):void
//		{
//			_role = value;
//		}
		
//		public function get uin():uint
//		{
//			return _uin;
//		}
//		
//		public function set uin(value:uint):void
//		{
//			_uin = value;
//		}
		
		public function hasNinja(ninjaId:int):Boolean
		{
			for each(var ninjaInfo:NinjaInfo in ninjaInfoList)
			{
				if(ninjaInfo.id == ninjaId)
				{
					return true;
				}
			}
			
			return false;
		}
		
		/**
		 *护送 
		 * @return 
		 * 
		 */		
		public function get isEscort():Boolean
		{
			return state.getFlagByName(UserStateDef.BASE_ESCORT);
		}
		
		public function get isBattling():Boolean
		{
			return state.getFlagByName(UserStateDef.BASE_PVP) || state.getFlagByName(UserStateDef.BASE_PVE);
		}

		public function get isInDungeon():Boolean
		{
			return state.getFlagByName(UserStateDef.BASE_FAST_DUNGEON);
		}
		
		public function dispatchRoleStateUpdate():void
		{
			this.dispatchEvent(new UserInfoEvent(UserInfoEvent.ROLE_STATE_UPDATE));
		}
		
		public function dispathMoveUpdate():void
		{
			moveInfoInited = true;
			this.dispatchEvent(new UserInfoEvent(UserInfoEvent.MOVE_UPDATE));
		}
		
		public function dispathNinjaUpdate():void
		{
			baseInited = true;
			this.dispatchEvent(new UserInfoEvent(UserInfoEvent.BASE_UPDATE));
		}
		
		public function dispathBaseUpdate():void
		{
			ninjaInited = true;
			this.dispatchEvent(new UserInfoEvent(UserInfoEvent.NINJA_INFO_UPDATE));
		}
		
		public function dispatchBaseChanged(key:int, reason:int, changedValue:int):void
		{
			var event:UserInfoEvent;
			
			event = new UserInfoEvent(UserInfoEvent.BASE_CHANGED);
			event.changedValueKey = key;
			event.changedReason = reason;
			event.changedValue = changedValue;
			this.dispatchEvent(event);
		}

		
	}
}