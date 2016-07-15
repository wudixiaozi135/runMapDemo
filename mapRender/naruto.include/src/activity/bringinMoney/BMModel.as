package activity.bringinMoney 
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	/**
	 * ...
	 * @author Devin Lee
	 */
	public class BMModel extends EventDispatcher
	{
		static public const SHOW_BOX_EFFECT:String = "showBoxEffect";
		static public const SHOW_PROGRESS_EFFECT:String = "showProgressEffect";
		static public const UPDATE_ALL:String = "updateAll";
		static private var _instance:BMModel;
		static public function getInstance():BMModel {
			if (!_instance) {
				_instance = new BMModel;
			}
			return _instance;
		}
				
		
		public var bringinTimes:int;    ////招财次数
		public var goldingotNum:int;//本次招财需要的元宝数
		public var moneyNum:int;//本次招财可招的铜币数
		
		/**
		 * [ProtoAwardPackageBox]3个宝箱   状态0-不可领奖 1-可领奖 2-已领奖
		 */
		public var packageBoxes:Array;
		public var clickBoxID:int = -1;
		public var leftBringinTimes:int;
		public function BMModel() 
		{
			
			_instance = this;
		
		}
		
		public function updateAll():void 
		{
			dispatchEvent(new Event(UPDATE_ALL));
			
		}
		
		
		
	}

}