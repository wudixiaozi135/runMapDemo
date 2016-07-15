package dungeon.wipeout 
{
	import dungeon.event.UniversalWipeoutEvent;
	import dungeon.model.data.UniversalWipeoutInfo;
	import com.tencent.morefun.naruto.render.TimeTicker;
	import flash.events.EventDispatcher;
	
	/**
	 * 扫荡事件变更时派发
	 */
	[Event(name = "clockTick", type = "dungeon.event.UniversalWipeoutEvent")]
	
	/**
	 * 扫荡倒计时结束时派发
	 */
	[Event(name = "clockComplete", type = "dungeon.event.UniversalWipeoutEvent")]
	
	/**
	 * 扫荡时钟
	 * @author larryhou
	 * @createTime 2014/6/25 11:46
	 */	
	public class UniversalWipeoutClock extends EventDispatcher
	{
		private var _running:Boolean;
		private var _data:UniversalWipeoutInfo;
		
		/**
		 * 构造函数
		 * create a [UniversalWipeOutClock] object
		 */
		public function UniversalWipeoutClock() 
		{
			
		}
		
		private function updateRemainTime(time:uint):void
		{
			_data.remainTime = time / 1000;
			dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.CLOCK_TICK));
			
			if (!time)
			{
				_running = false;
				dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.CLOCK_COMPLETE));
			}
		}
		
		/**
		 * 剩余时间
		 */
		public function get remainTime():uint { return _data? _data.remainTime : 0; }
		
		/**
		 * 是否正在运行
		 */
		public function get running():Boolean { return _running; }
		
		/**
		 * 扫荡数据信息
		 */
		public function get data():UniversalWipeoutInfo { return _data; }
		public function set data(value:UniversalWipeoutInfo):void 
		{
			_data = value;
			
			if (_data && _data.remainTime > 0)
			{
				_running = true;
				
				TimeTicker.register(updateRemainTime, _data.remainTime * 1000);
				dispatchEvent(new UniversalWipeoutEvent(UniversalWipeoutEvent.CLOCK_TICK));
			}
			else
			{
				_running = false;
				TimeTicker.terminate(updateRemainTime);
			}
		}
	}

}