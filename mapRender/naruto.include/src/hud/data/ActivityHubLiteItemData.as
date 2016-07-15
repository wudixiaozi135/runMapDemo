package hud.data
{
	import flash.utils.getTimer;
	

	/**
	 * 活动整合里面的单个非定时活动数据
	 * @author fixchen
	 */
	public class ActivityHubLiteItemData
	{
		public static const STATUS_ENABLED:int 		= 1;
		public static const STATUS_CD:int 			= 2;
		public static const STATUS_DONE:int 		= 3;
		
		public var id:int;
		public var totalNum:int;
		public var remainderNum:int;
		public var status:int;
		private var _cd:int;
		
		
		public function ActivityHubLiteItemData()
		{
		}

		private var cd_runtimer:uint;
		public function get cd():int
		{
			var tmp:int = _cd - int(getTimer()/1000 - cd_runtimer);
			if(tmp<=0)
			{
				status = STATUS_ENABLED;
			}
			return tmp;
		}

		public function set cd(value:int):void
		{
			_cd = value;
			
			cd_runtimer = getTimer() / 1000;
		}

	}
}