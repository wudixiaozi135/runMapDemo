package team.data
{
	import flash.events.EventDispatcher;
	
	import serverProto.inc.ProtoDiamondInfo;
	
	import team.data.event.TeamMemberDataEvent;
	
	import user.data.UserInfo;

	[Event(name = "updateIndex", type = "team.data.event.TeamMemberDataEvent")]
	[Event(name = "updateFormationNinjas", type = "team.data.event.TeamMemberDataEvent")]
	public class TeamMemberData extends EventDispatcher
	{
		public static const STATE_NORMAL:int = 1;
		public static const STATE_AFK:int = 2;
		public static const STATE_OFFLINE:int = 3;
		
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		
		public var isCaptain:Boolean;
		public var majorNinja:uint;
		public var showNinja:uint;
		private var _index:int;
		public var state:int = STATE_NORMAL;
		
		public var name:String;
		public var level:int;
		public var hp:int;
		public var maxHp:int;
		public var vipLevel:int;
		public var diamondInfo:ProtoDiamondInfo;
		
		public var otherNinjas:Vector.<uint>;
		
		private var _formationNinjas:Vector.<TeamFormationNinja>;
		
		public function TeamMemberData()
		{
		}
		
		public function get index():int
		{
			return _index;
		}

		public function set index(value:int):void
		{
			var old:int;
			var event:TeamMemberDataEvent;
			
			old = value;
			_index = old;
			
			event = new TeamMemberDataEvent(TeamMemberDataEvent.UPDATE_INDEX);
			event.oldIndex = old;
			event.newIndex = _index;
			this.dispatchEvent(event);
		}

//		public function get isAfk():Boolean
//		{
//			return state == STATE_AFK;
//		}
//		
//		public function get isOffline():Boolean
//		{
//			return state == STATE_OFFLINE;
//		}
		
		public function set formationNinjas(value:Vector.<TeamFormationNinja>):void
		{
			_formationNinjas = value;
			
			this.dispatchEvent(new TeamMemberDataEvent(TeamMemberDataEvent.UPDATE_FORMATION_NINJAS));
		}
		
		public function get formationNinjas():Vector.<TeamFormationNinja>
		{
			return _formationNinjas;
		}
		
		public function equal(uin:uint, roleId:uint, svrId:uint):Boolean
		{
			return this.uin == uin && this.roleId == roleId && this.svrId == svrId;
		}
		
		public function equal2(tmd:TeamMemberData):Boolean
		{
			return equal(tmd.uin, tmd.roleId, tmd.svrId);
		}
		
		public function equal3(userInfo:UserInfo):Boolean
		{
			return equal(userInfo.uin, userInfo.role, userInfo.svrId);
		}
		
		override public function toString():String
		{
			return 'TeamMemberData{' +
				'\r\t' + 'uin:' + uin +
				'\r\t' + 'roleId:' + roleId +
				'\r\t' + 'svrId:' + svrId +
				'\r\t' + 'majorNinja:' + majorNinja +
				'\r\t' + 'showNinja:' + showNinja +
				'\r\t' + 'otherNinjas' + otherNinjas.join(",") + 
				'\r\t' + 'name:' + name +
				'\r\t' + 'isCaptain:' + isCaptain +
				'\r\t' + 'index:' + index +
				'\r\t' + 'state:' + state +
				'\r\t' + 'level:' + level +
				'\r\t' + 'hp:' + hp +
				'\r\t' + 'maxHp:' + maxHp +
				'\r}';
		}
	}
}