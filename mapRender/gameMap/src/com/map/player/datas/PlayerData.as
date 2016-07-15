package com.map.player.datas
{
	import com.map.player.def.MajorNinjaDef;
	import com.map.player.events.PlayerDataEvent;

	import flash.events.EventDispatcher;
	import flash.geom.Point;

	[Event(name="positionUpdate", type="com.map.player.events.PlayerDataEvent")]
	[Event(name="propertyUpdate", type="com.map.player.events.PlayerDataEvent")]
	[Event(name="titleUpdate", type="com.map.player.events.PlayerDataEvent")]
	[Event(name="destroy", type="com.map.player.events.PlayerDataEvent")]
	public class PlayerData extends EventDispatcher
	{
//		public static const PROPERTY_POSITION:String = "position";
		public static const PROPERTY_NAME:String = "name";
		public static const PROPERTY_IS_CAPTAIN:String = "isCaptain";
		public static const PROPERTY_NINJA:String = "ninja";
		public static const PROPERTY_SHOW_NINJA:String = "showNinja";
		public static const PROPERTY_FASHION_NINJA:String = "fashionNinja";
		public static const PROPERTY_DIRECTION:String = "direction";
		public static const PROPERTY_IS_FIGHTING:String = "isFighting";
		public static const PROPERTY_TEAM_ID:String = "teamId";
		public static const PROPERTY_LEVEL:String = "level";
		public static const PROPERTY_VIP_LEVEL:String = "vipLevel";
		public static const PROPERTY_DEAD:String = "dead";
		public static const PROPERTY_CAMP:String = "camp";
		public static const PROPERTY_WIN_STREAK_TIMES:String = "winStreakTimes";
		public static const PROPERTY_TITLE:String = "title";
		public static const PROPERTY_TASK_SIGN:String = "taskSign";
		public static const PROPERTY_KNOWLEDGE_SCORE:String = "knowledgeScore";

		protected var _uin:uint;
		protected var _role:uint;
		protected var _svrId:uint;
		protected var _name:String;
		protected var _ninja:uint;
		protected var _showNinja:uint;
		protected var _fashionNinja:uint;
		protected var _position:Point = new Point();

		protected var _camp:int = -1;
		protected var _winStreakTimes:int = -1;

		protected var _teamId:String;
		protected var _isDead:Boolean;
		protected var _isCaptain:Boolean;
		protected var _isFighting:Boolean;
		protected var _direction:int;

		protected var _level:int;//玩家等级
		protected var _vip:int;//玩家vip等级;0,1,2,3

		protected var _title:RankTitleCfgInfo;
		protected var _taskSign:int = 1;
		protected var _isGm:Boolean;
		protected var _knowledgeScore:int;//喵问答分数


		public function PlayerData()
		{

		}

		public function get knowledgeScore():int
		{
			return _knowledgeScore;
		}

		public function set knowledgeScore(value:int):void
		{
			if (_knowledgeScore == value)
			{
				return;
			}

			_knowledgeScore = value;
			dispatchUpdate(PROPERTY_KNOWLEDGE_SCORE);

		}


		/**
		 * 任务标记
		 * @see serverProto.user.ProtoTaskSign
		 */
		public function get taskSign():int
		{
			return _taskSign;
		}

		/**
		 * @private
		 */
		public function set taskSign(value:int):void
		{
			if (_taskSign == value)
			{
				return;
			}

			_taskSign = value;
			dispatchUpdate(PROPERTY_TASK_SIGN);
		}

		public function get winStreakTimes():int
		{
			return _winStreakTimes;
		}

		public function set winStreakTimes(value:int):void
		{
			if (_winStreakTimes == value)
			{
				return;
			}

			_winStreakTimes = value;
			dispatchUpdate(PROPERTY_WIN_STREAK_TIMES);
		}

		public function get camp():int
		{
			return _camp;
		}

		public function set camp(value:int):void
		{
			_camp = value;
			dispatchUpdate(PROPERTY_CAMP);
		}

		public function get isDead():Boolean
		{
			return _isDead;
		}

		public function set isDead(value:Boolean):void
		{
			if (_isDead == value)
			{
				return;
			}

			_isDead = value;
			dispatchUpdate(PROPERTY_DEAD);
		}

		public function get uin():uint
		{
			return _uin;
		}

		public function set uin(value:uint):void
		{
			_uin = value;
		}

		public function get svrId():uint
		{
			return _svrId;
		}

		public function set svrId(value:uint):void
		{
			_svrId = value;
		}

		public function get role():uint
		{
			return _role;
		}

		public function set role(value:uint):void
		{
			_role = value;
		}

		/**
		 * 对比uin,roleId,svrId来对比是否相同
		 */
		public function equeal(uin:uint, roleId:uint, svrId:uint):Boolean
		{
			return _uin == uin && _role == roleId && _svrId == svrId;
		}

		public function equal2(playerData:PlayerData):Boolean
		{
			return equeal(playerData.uin, playerData.role, playerData.svrId);
		}

		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			if (_name == value)
			{
				return;
			}
			_name = value;

			dispatchUpdate(PROPERTY_NAME);
		}

		public function get ninja():uint
		{
			return _ninja;
		}

		public function set ninja(value:uint):void
		{
			if (value == _ninja)
			{
				return;
			}
			_ninja = value;

			dispatchUpdate(PROPERTY_NINJA);
		}

		public function get baseNinja():int
		{
			return MajorNinjaDef.toBaseMajorId(ninja);
		}

		public function get showNinja():uint
		{
			return _showNinja;
		}

		public function set showNinja(value:uint):void
		{
			if (value == _showNinja)
			{
				return;
			}
			_showNinja = value;

			dispatchUpdate(PROPERTY_SHOW_NINJA);
		}

		public function get fashionNinja():uint
		{
			return _fashionNinja;
		}

		public function set fashionNinja(value:uint):void
		{
			if (value == _fashionNinja)
			{
				return;
			}
			_fashionNinja = value;

			dispatchUpdate(PROPERTY_FASHION_NINJA);
		}

		public function setPosition(x:int, y:int):void
		{
			_position.x = x;
			_position.y = y;
			if (hasEventListener(PlayerDataEvent.POSITION_UPDATE))
			{
				dispatchEvent(new PlayerDataEvent(PlayerDataEvent.POSITION_UPDATE));
			}
//			dispatchUpdate(PROPERTY_POSITION);
		}

		public function getPosition():Point
		{
			return _position;
		}

		public function get isCaptain():Boolean
		{
			return _isCaptain;
		}

		public function set isCaptain(value:Boolean):void
		{
			if (_isCaptain == value)
			{
				return;
			}
			_isCaptain = value;

			dispatchUpdate(PROPERTY_IS_CAPTAIN);
		}

		public function get isFighting():Boolean
		{
			return _isFighting;
		}

		public function set isFighting(value:Boolean):void
		{
			if (_isFighting == value)
			{
				return;
			}
			_isFighting = value;

			dispatchUpdate(PROPERTY_IS_FIGHTING);
		}


		public function get teamId():String
		{
			return _teamId;
		}

		public function set teamId(value:String):void
		{
			if (_teamId == value)
			{
				return;
			}
			_teamId = value;

			dispatchUpdate(PROPERTY_TEAM_ID);
		}

		public function get direction():int
		{
			return _direction;
		}

		public function set direction(value:int):void
		{
			_direction = value;

			dispatchUpdate(PROPERTY_DIRECTION);
		}

		public function get level():int
		{
			return _level;
		}

		public function set level(value:int):void
		{
			if (_level == value)
			{
				return;
			}
			_level = value;
			dispatchUpdate(PROPERTY_LEVEL);
		}

		public function get vip():int
		{
			return _vip;
		}

		public function set vip(value:int):void
		{
			if (_vip != value)
			{
				_vip = value;
				dispatchUpdate(PROPERTY_VIP_LEVEL);
			}
		}

		/**
		 * 玩家称号
		 */
		public function get title():RankTitleCfgInfo
		{
			return _title;
		}

		public function set title(value:RankTitleCfgInfo):void
		{
			_title = value;
			dispatchEvent(new PlayerDataEvent(PlayerDataEvent.TITLE_UPDATE));
			dispatchUpdate(PROPERTY_TITLE);
		}

		public function dispatchUpdate(property:String):void
		{
			if (hasEventListener(PlayerDataEvent.PROPERTY_UPDATE))
			{
				dispatchEvent(new PlayerDataEvent(PlayerDataEvent.PROPERTY_UPDATE, property));
			}
		}

		public function get isGm():Boolean
		{
			return _isGm;
		}

		public function set isGm(value:Boolean):void
		{
			_isGm = value;
		}


	}
}