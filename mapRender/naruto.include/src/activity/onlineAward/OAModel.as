package activity.onlineAward 
{
	import bag.data.ItemData;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.TimerEvent;
	import flash.utils.getTimer;
	import flash.utils.Timer;
	/**
	 * ...
	 * @author Devin Lee
	 */
	public class OAModel extends EventDispatcher
	{
		static public const UPDATE_ALL:String = "updateAll";
		static public const UPDATE_TIME:String = "updateTime";
		static private var _instance:OAModel;
		static public function getInstance():OAModel {
			if (!_instance) {
				_instance = new OAModel;
			}
			return _instance;
		}
				
		private var _leftAwardTime:int = -1;
		private var _timer:Timer;
		private var _offset:int;
		private var _curTime:int;
		public var awardList:Vector.<ItemData>;
		public function OAModel() 
		{
			if (_instance) {
				throw Error("OAModel is a singleton class!");
			}
			_instance = this;
		
			_timer = new Timer(1000);
			_timer.addEventListener(TimerEvent.TIMER, onTimer);
		}
		
		public function updateAll():void 
		{
			dispatchEvent(new Event(UPDATE_ALL));
			dispatchEvent(new Event(UPDATE_TIME));
			
		}
		/**
		 * 可领奖剩余时间, 单位秒, 0: 可以领奖 -1:所有奖励已领完
		 */
		public function get leftAwardTime():int 
		{
			if (_leftAwardTime <=0 ) return _leftAwardTime;
			
			return Math.max(0, _leftAwardTime - int((_curTime-_offset)/1000));
		}
		
		public function set leftAwardTime(value:int):void 
		{
			if (_leftAwardTime == value) return;
			_leftAwardTime = value;
			
			if (_leftAwardTime > 0) {
				_timer.reset();
				_timer.start();
				_curTime = _offset = getTimer();
			}
			dispatchEvent(new Event(UPDATE_TIME));
			
		}
		
		private function onTimer(e:TimerEvent):void 
		{
			_curTime = getTimer();
			
			if (leftAwardTime <= 0) {
				_timer.stop();
			}
			dispatchEvent(new Event(UPDATE_TIME));
			
		}
		
		
	}

}