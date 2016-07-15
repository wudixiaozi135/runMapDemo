package activity.unionService
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import serverProto.activity.ProtoMergeServerQueryRsp;

	
	public class USModel extends EventDispatcher
	{
		// //页签序号 0-消费活动 1-冲级活动 2-充值排行 3-最高战力排行
		static public const TAB_XIAOFEI:int = 0;
		static public const TAB_BATTLE_RANK:int = 1;
		static public const TAB_LOGIN_GIFT:int = 2;
		static public const TAB_CONSUMPTION:int = 3;
		
		static public const UPDATE_ALL:String = "updateAll";
		static public const TAB_CHANGE:String = "tabChange";
		static private var _instance:USModel;
		static public function getInstance():USModel {
			if (!_instance) {
				_instance = new USModel;
			}
			return _instance;
		}
				
		
		private var _tabIndex:int = TAB_XIAOFEI;
		public var serverData:ProtoMergeServerQueryRsp;
		public function USModel() 
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