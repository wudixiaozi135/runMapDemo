package activity.openService 
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	import serverProto.activity.ProtoOpenServiceQueryRsp;
	import serverProto.activity.ProtoOpenServiceRechargeRebateRsp;
	import serverProto.activity.ProtoOpenServiceRecruitQueryRsp;

	/**
	 * ...
	 * @author Devin Lee
	 */
	public class OSModel extends EventDispatcher
	{
		// //页签序号 0-消费活动 1-冲级活动 2-充值排行 3-最高战力排行 4-充值返利 5-开服限时招募
		static public const TAB_XIAOFEI:int = 0;
		static public const TAB_CHONG_JI:int = 1;
		static public const TAB_CHARGE_RANK:int = 2;
		static public const TAB_COMBAT_RANK:int = 3;
		static public const TAB_MONEY_BONUS:int = 4;
		static public const TAB_LIMIT_RECRUIT:int = 5;
		static public const TAB_LOTTERY:int = 6;
		
		static public const UPDATE_ALL:String = "updateAll";
		static public const TAB_CHANGE:String = "tabChange";
		static private var _instance:OSModel;
		static public function getInstance():OSModel {
			if (!_instance) {
				_instance = new OSModel;
			}
			return _instance;
		}
				
		
		private var _tabIndex:int = TAB_XIAOFEI;
		public var serverData:ProtoOpenServiceQueryRsp;
		public var moneyBonusData:ProtoOpenServiceRechargeRebateRsp;
		public var limitRecruitData:ProtoOpenServiceRecruitQueryRsp;
		public var dynamicTabStatus:Dictionary = new Dictionary();
		public function OSModel() 
		{
			
			_instance = this;
		
		}
		
		public function updateAll():void 
		{
			dispatchEvent(new Event(UPDATE_ALL));
			
		}
		
		public function get tabIndex():int 
		{
			return _tabIndex;
		}
		
		public function set tabIndex(value:int):void 
		{
			if (_tabIndex == value) {
				return;
			}
			_tabIndex = value;
			dispatchEvent(new Event(TAB_CHANGE));
		}
		
		
		
	}

}