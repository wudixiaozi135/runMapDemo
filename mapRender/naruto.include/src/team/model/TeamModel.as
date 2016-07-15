package team.model
{
	import com.tencent.morefun.naruto.model.BaseModel;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flash.utils.getTimer;
	
	import base.ApplicationData;
	
	import chat.data.ChatItem;
	
	import def.ModelDef;
	
	import team.data.TeamData;
	import team.data.TeamMemberData;
	
	public class TeamModel extends BaseModel
	{
		public static const KEY_JOIN:String = "join";
		public static const KEY_EXIT:String = "exit";
		public static const KEY_UPDATE:String = "update";
		
//		public static const KEY_PROPERTY:String = "property";
		
//		public static const KEY_MEMBER_ADD:String = "memberAdd";
//		public static const KEY_MEMBER_REMOVE:String = "memberRemove";
		public static const KEY_MEMBER_UPDATE:String = "memberUpdate";
		public static const KEY_MEMBER_TALK:String = "memberTalk";
		
//		public static const KEY_MEMBER_UPDATE_STATE:String = "memberUpdateState";
		
//		public static const KEY_CHANGE_CAPTAIN:String = "changeCaptain";
		
		public static const KEY_MATCH_DUNGEON_STATE:String = "changeMatchDungeonState";
		public static const KEY_MATCH_DUNGEON_TIME:String = "changeMatchDungeonTime";
		
		public var id:String;
		public var name:String;
		public var type:int;
		public var destinationId:int;
		public var minLevel:int;
		public var combatPower:int;
		public var members:Vector.<TeamMemberData>;
		
		public static const MATCH_DUNGEON_STATE_EMPTY:String = "matchDungeonStateEmpty";
		public static const MATCH_DUNGEON_STATE_BEGIN:String = "matchDungeonStateBegin";
		public static const MATCH_DUNGEON_STATE_SUCCESS:String = "matchDungeonStateSuccess";
		private var _matchDungeonState:String = MATCH_DUNGEON_STATE_EMPTY;
		private var _matchDungeonTime:int;
		public var matchDungeonId:int;
		private var _timer:Timer;

		
		public var isJoined:Boolean = false;
		
		public function TeamModel()
		{
			super(ModelDef.TEAM);
			
		}
		
		public function get timer():Timer
		{
			if(_timer == null)
			{
				_timer = new Timer(1000,0);
				_timer.addEventListener(TimerEvent.TIMER,onTimer);
			}
			return _timer;
		}

		public function get inMatchDungeon():Boolean
		{
			if( _matchDungeonState == MATCH_DUNGEON_STATE_BEGIN )
			{
				return true;
			}else if(_matchDungeonState == MATCH_DUNGEON_STATE_SUCCESS)
			{
				//5秒内，还算匹配中
				if(int(getTimer()/1000)-matchDungeonTime<5)
				{
					return true;
				}else
				{
					return false;
				}
			}else
			{
				return false;
			}
		}
		
		override public function toString():String
		{
			return 'TeamModel{' +
				'\r\t' + 'isJoined:' + isJoined + ',' +
				'\r\t' + 'id:' + id + ',' +
				'\r\t' + 'name:' + name + ',' +
				'\r\t' + 'type:' + type + ',' +
				'\r\t' + 'destinationId:' + destinationId + ',' +
				'\r\t' + 'members:[' +
				'\r\t\t' + (members?members.join(",").replace(/\r/ig,"\r\t\t"):"") +
				'\r\t' + '],' +
				'\r\t' + 'matchDungeonState:' + matchDungeonState + ',' +
				'\r\t' + 'matchDungeonTime:' + matchDungeonTime +
				'\r}';
		}
		
		public function join(td:TeamData):void
		{
			this.id = td.id;
			this.name = td.name;
			this.type = td.type;
			this.destinationId = td.destinationId;
			this.minLevel = td.captainLevel;
			this.combatPower = td.combatPower;
			this.members = td.members;
			this.isJoined = true;
			
			dispModelEvent(ModelEvent.UPDATE,KEY_JOIN);
		}
		
		public function update(td:TeamData):void
		{
			this.id = td.id;
			this.name = td.name;
			this.type = td.type;
			this.destinationId = td.destinationId;
			this.minLevel = td.captainLevel;
			this.combatPower = td.combatPower;
			this.members = td.members;
			this.isJoined = true;
			
			dispModelEvent(ModelEvent.UPDATE,KEY_UPDATE);
		}
		
		public function memberUpdate(td:TeamData):void
		{
			this.id = td.id;
			this.name = td.name;
			this.type = td.type;
			this.destinationId = td.destinationId;
			this.minLevel = td.captainLevel;
			this.combatPower = td.combatPower;
			this.members = td.members;
			this.isJoined = true;
			
			dispModelEvent(ModelEvent.UPDATE,KEY_MEMBER_UPDATE);
		}
		
		public function exit():void
		{
			id = null;
			name = null;
			members = null;
			isJoined = false;
			
			dispModelEvent(ModelEvent.UPDATE,KEY_EXIT);
		}
		
//		public function propertyUpdated():void
//		{
//			dispModelEvent(ModelEvent.UPDATE,KEY_PROPERTY);
//		}
//		
//		public function memberAdd(tmd:TeamMemberData):Boolean
//		{
//			if(members.length<3)
//			{
//				members.push(tmd);
//				dispModelEvent(ModelEvent.UPDATE,KEY_MEMBER_ADD,tmd);
//			}else
//			{
//				return false;
//			}
//			return true;
//		}
//		
//		public function memberRemove(uin:uint,role:uint):void
//		{
//			for(var i:int=0;i<members.length;i++)
//			{
//				var tmd:TeamMemberData = members[i] as TeamMemberData
//				if(tmd.uin == uin && tmd.role == role)
//				{
//					members.splice(i,1);
//					dispModelEvent(ModelEvent.UPDATE,KEY_MEMBER_REMOVE,tmd);
//					return;
//				}
//			}
//		}
//		
//		public function memberUpdateState(uin:uint,role:uint,state:int):void
//		{
//			var tmd:TeamMemberData = getMember(uin,role);
//			if(tmd)
//			{
//				var old:int = tmd.state;
//				tmd.state = state;
//				
//				dispModelEvent(ModelEvent.UPDATE,KEY_MEMBER_UPDATE_STATE,old,state);
//				dispModelEvent(ModelEvent.UPDATE,KEY_MEMBER_UPDATE,tmd);
//			}
//		}
//		
//		public function memberUpdated(uin:uint,role:uint):void
//		{
//			var tmd:TeamMemberData = getMember(uin,role);
//			if(tmd)
//			{
//				dispModelEvent(ModelEvent.UPDATE,KEY_MEMBER_UPDATE,tmd);
//			}
//		}
//		
//		public function changeCaptain(uin:uint,role:uint):void
//		{
//			for each(var tmd:TeamMemberData in members)
//			{
//				tmd.isCaptain = tmd.uin==uin && tmd.role==role;
//			}
//			
//			dispModelEvent(ModelEvent.UPDATE,KEY_CHANGE_CAPTAIN);
//		}
		
		public function getMember(uin:uint,role:uint,svrId:uint):TeamMemberData
		{
			for each(var tmd:TeamMemberData in members)
			{
				if(tmd.equal(uin, role, svrId))
				{
					return tmd;
				}
			}
			return null;
		}
		
		public function get isCaptain():Boolean
		{
			return isJoined && getCaptain().equal3(ApplicationData.singleton.selfInfo);
		}
		
		public function get isMember():Boolean
		{
			return isJoined && !getCaptain().equal3(ApplicationData.singleton.selfInfo);
		}
		
		public function getCaptain():TeamMemberData
		{
			for each(var tmd:TeamMemberData in members)
			{
				if(tmd.isCaptain)
				{
					return tmd;
				}
			}
			return null;
		}
		
		public function memberTalk(chatItem:ChatItem):void
		{
			dispModelEvent(ModelEvent.UPDATE, KEY_MEMBER_TALK, null, chatItem);
		}
		
		/**
		 * 组队副本匹配状态
		 */
		public function get matchDungeonState():String
		{
			return _matchDungeonState;
		}
		
		/**
		 * @private
		 */
		public function set matchDungeonState(value:String):void
		{
			var old:String = _matchDungeonState;
			_matchDungeonState = value;
			switch(_matchDungeonState)
			{
				case MATCH_DUNGEON_STATE_EMPTY:
					timer.stop();
					break;
				case MATCH_DUNGEON_STATE_BEGIN:
					_matchDungeonTime = 0;
					timer.start();
					break;
				case MATCH_DUNGEON_STATE_SUCCESS:
					_matchDungeonTime = 5;
					timer.start();
					break;
			}
			
			dispModelEvent(ModelEvent.UPDATE,KEY_MATCH_DUNGEON_STATE);
		}
		
		/**
		 * 组队副本匹配时间，，不同状态代表不同的时间
		 */
		public function get matchDungeonTime():int
		{
			return _matchDungeonTime;
		}
		
		/**
		 * @private
		 */
		public function set matchDungeonTime(value:int):void
		{
			_matchDungeonTime = value;
			
			dispModelEvent(ModelEvent.UPDATE,KEY_MATCH_DUNGEON_TIME);
		}
		
		private function onTimer(e:TimerEvent):void
		{
			switch(_matchDungeonState)
			{
				case MATCH_DUNGEON_STATE_BEGIN:
					matchDungeonTime++;
					break;
				case MATCH_DUNGEON_STATE_SUCCESS:
					matchDungeonTime = Math.max(0, matchDungeonTime-1);
					if(matchDungeonTime == 0)
					{
						timer.stop();
					}
					break;
			}
		}

	}
}