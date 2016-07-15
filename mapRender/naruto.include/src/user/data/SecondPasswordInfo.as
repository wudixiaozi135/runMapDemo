package user.data
{
	import flash.events.Event;
	import flash.events.EventDispatcher;

	[Event(name="change", type="flash.events.Event")]
	public class SecondPasswordInfo extends EventDispatcher
	{
		/**
		 * 本次登录，二级密码是否已经验证通过 
		 */
		public var validated:Boolean;
		private var _status:int;
		private var _canTryNum:int;

		/**
		 * 剩余重试次数
		 */
		public function get canTryNum():int
		{
			return _canTryNum;
		}

		/**
		 * @private
		 */
		public function set canTryNum(value:int):void
		{
			if(_canTryNum == value)
			{
				return;
			}
			_canTryNum = value;
			if(hasEventListener(Event.CHANGE))
			{
				dispatchEvent(new Event(Event.CHANGE));
			}
		}


		/** 
		 * 当前二级密码状态
		 * <li>1、没有设置密码</li>
		 * <li>2、已经设置密码</li>
		 * <li>3、正在忘记密码</li>
		 * <li>4、已经验证成功</li>
		 * @see serverProto.user.ProtoSecondaryPasswordStatus
		 */
		public function get status():int
		{
			return _status;
		}

		/**
		 * @private
		 */
		public function set status(value:int):void
		{
			if(_status == value)
			{
				return;
			}
			_status = value;
			if(hasEventListener(Event.CHANGE))
			{
				dispatchEvent(new Event(Event.CHANGE));
			}
		}

		private var _remaindForgetDay:int;

		/**
		 * 剩余处理在“忘记密码”的天数（后台发的是秒数，在协议解析的时候已经转成天数）
		 */
		public function get remaindForgetDay():int
		{
			return _remaindForgetDay;
		}

		/**
		 * @private
		 */
		public function set remaindForgetDay(value:int):void
		{
			if(_remaindForgetDay == value)
			{
				return;
			}
			_remaindForgetDay = value;
			if(hasEventListener(Event.CHANGE))
			{
				dispatchEvent(new Event(Event.CHANGE));
			}
		}
		
		

		
		public function SecondPasswordInfo()
		{
			
		}
		
		
	}
}