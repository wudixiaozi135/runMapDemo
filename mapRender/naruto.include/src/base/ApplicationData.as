package base
{
	import com.tencent.morefun.framework.apf.core.facade.Facade;
	import com.tencent.morefun.naruto.base.GlobelInfo;
	import com.tencent.morefun.naruto.model.BaseModel;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.utils.getTimer;
	
	import def.ApplicationKeyDef;
	
	import serverProto.inc.ProtoPlayerKey;
	
	import user.data.UserInfo;
	
	import vip.IVIPPrivilege;
	[Event(name="HUD_statebarview_goHome", type="flash.events.Event")]
	public class ApplicationData extends EventDispatcher
	{
		static public const CUR_SERVER_TIME_UPDATE:String = "curServerTimeUpdate";
		private static var ms_instance:ApplicationData;
		
		private var _selfuin:uint;
		private var _selfRole:int;
		private var _selfSrv:int;
		private var _selfInfo:UserInfo;
		private var _globelData:GlobelInfo = new GlobelInfo();
		private var _isActivate:Boolean = true;
		private var _privilege:IVIPPrivilege;
		private var _selfPlayerKey:ProtoPlayerKey = new ProtoPlayerKey();;
		
		public var isAutoFight:Boolean = false;
		public var isSpeedUp:Boolean = false;
		public var isDebug:Boolean = false;
		public var ser_id:int;
		public var vipSource:String = "";
		public var source:String = "";
		public var via:String = "";
		public var port:int;
		public var ip:String;
		public var defaultIp:String;
		public var host:String;
		public var baseURL:String = "";
		public var uiURL:String;
		public var exuiURL:String;
        public var isNewbie:Boolean;
		public var roleSex:int;// 1男性 2女性
		public var baseWebURL:String;
		public var inviterUin:String;
		//TGP
		public var tgp:Boolean;
		public var isAutoLaunch:Boolean;
		public var isAutoLaunchWithStartup:Boolean;
		public var tgpBoxFlag:Boolean;//是否是大TGP 登陆
		
		public var rd:String;
		/**
		 * 登录渠道
		 * @see login.def.LoginWayDef
		 */
		public var loginWay:int;
		
		/**
		 *  当前服是否被合服
		 */
		public var isMergedServer:Boolean;
		
		public var tgw:Boolean;
		public var skey:String;
		public var seperateSkey:String;
		private var _curServerTime:uint;
		
		private var _clientstamp:uint;
		
		/**
		 *是否在竞技场中 
		 */		
		public var isInArena:Boolean =false;
		
		
		public function ApplicationData():void
		{
			
		}
		
		public static function get singleton():ApplicationData
		{
			if(ms_instance == null)
			{
				ms_instance = new ApplicationData();
			}
			
			return ms_instance;
		}
		
		public function set selfSrv(value:int):void
		{
			this._selfSrv = value;
			
			_selfPlayerKey.svrId = _selfSrv;
		}
		
		public function get selfSrv():int
		{
			return this._selfSrv;
		}
		
		public function set selfRole(value:int):void
		{
			var old:int;
			
			old = _selfRole;
			_selfRole = value;
			_selfPlayerKey.roleId = _selfRole;
			
			dispModelEvent(ModelEvent.UPDATE, ApplicationKeyDef.SELFUIN, old, _selfRole);
		}
		
		public function get selfRole():int
		{
			return _selfRole;
		}
		
		public function get selfuin():uint
		{
			return _selfuin;
		}
		
		public function set selfuin(value:uint):void
		{
			var old:uint;
			
			old = _selfuin;
			_selfuin = value;
			_selfPlayerKey.uin = _selfuin;
			
			dispModelEvent(ModelEvent.UPDATE, ApplicationKeyDef.SELFUIN, old, _selfuin);
		}
		
		public function resetSelfInfo():void
		{
			_selfInfo = null;
		}
		
		public function set selfInfo(value:UserInfo):void
		{
			var old:UserInfo;
			
			old = _selfInfo;
			_selfInfo = value;
			this._selfuin = value.uin;
			this._selfRole = value.role;
			this._selfSrv = value.svrId;
			
			_selfPlayerKey.uin = _selfuin;
			_selfPlayerKey.roleId = _selfRole;
			_selfPlayerKey.svrId = _selfSrv;
			
			dispModelEvent(ModelEvent.UPDATE, ApplicationKeyDef.SELF_INFO, old, _selfInfo);
		}
		
		public function get selfInfo():UserInfo
		{
			return _selfInfo;
		}
		
		public function get globelInfo():GlobelInfo
		{
			return _globelData;
		}
		
		public function set isActivate(value:Boolean):void
		{
			_isActivate = value;
		}
		
		public function get isActivate():Boolean
		{
			return _isActivate;
		}
		
		/**
		 * 用户特权数据
		 */
		public function get privilege():IVIPPrivilege { return _privilege; }
		public function set privilege(value:IVIPPrivilege):void
		{
			_privilege = value;
		}
		
		/**
		 * 服务器当前时间
		 */
		public function get curServerTime():uint 
		{
			return _curServerTime + (getTimer() - _clientstamp) / 1000;
		}
		
		public function set curServerTime(value:uint):void 
		{
			if (value > 0) {
				_curServerTime = value;
				_clientstamp = getTimer();
				dispatchEvent(new Event(CUR_SERVER_TIME_UPDATE));
			}
		}
		
		public function get selfPlayerKey():ProtoPlayerKey
		{
			return _selfPlayerKey;
		}
		
		public function isSlefPlayerKey(protoPlayerKey:ProtoPlayerKey):Boolean
		{
			if(protoPlayerKey.uin == selfInfo.uin && protoPlayerKey.roleId ==  selfInfo.role && protoPlayerKey.svrId == selfInfo.svrId)
			{
				return true;
			}
			
			return false;
		}
		
		public function dispModelEvent(type:String,key:Object=null,oldValue:Object=null,newValue:Object=null):void
		{
			dispatchEvent(new ModelEvent(type,key,oldValue,newValue));
		}
		
		public function updateFinish():void
		{
			dispModelEvent(ModelEvent.UPDATE_FINISH);
		}
		
		public function getModel(def:String):BaseModel
		{
			return Facade.getInstance().getPluginManager().retrieveModel(def);
		}
		
		public function getResource(pluginName:String, resDef:String):*
		{
			return Facade.getInstance().getPluginManager().getPluginInfo(pluginName).resObject[resDef];
		}
	}
}