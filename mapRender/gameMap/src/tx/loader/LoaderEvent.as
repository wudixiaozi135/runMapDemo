package tx.loader
{

	import flash.events.Event;
	import tx.loader.mission.Mission;

	public class LoaderEvent extends Event
	{
		/**
		 * 任务清空
		 */		
		public static const LAZY_MISSION_EMPTY:String 	= "lazyMissionEmpty";
		
		/**
		 * 任务清空
		 */		
		public static const MISSION_EMPTY:String 		= "missionEmpty";
		/**
		 * 任务加载完成 
		 */		
		public static const MISSION_COMPLETE:String 	= "missionComplete";
		/**
		 * 任务加载出错 
		 */			
	    public static const MISSION_ERROR:String 		= "missionError";
		/**
		 * 任务加载进度 
		 */		
		public static const MISSION_PROGRESS:String 	= "missionProgress";
		/**
		 * 任务加载开始 
		 */		
		public static const MISSION_START:String		= "missionStart";
		
		
		public static const MISSION_ABORT:String		= "missionAbort";
		/**
		 * 任务移除
		 */		
		public static const MISSION_REMOVE:String 		= "missionRemove"
		/**
		 *销毁任务 
		 */		
		public static const MISSION_DESTROY:String		= "missionDestroy";
		
		/**
		 * 显示了缓存面板 
		 */		
		public static const SHOW_CACHE_PANEL:String = "showCachePanel";
		/**
		 * 关闭了缓存面板 
		 */		
		public static const HIDE_CACHE_PANEL:String = "hideCachePanel";
		/**
		 * 用户禁止了缓存 
		 */		
		public static const DISABLED_CACHE:String	= "disabledCache";
		
		
		public var bytesTotal:int;
		public var bytesLoaded:int;
		public var mission:Mission;
		
		public function LoaderEvent(type:String, bytesLoaded:int=0, bytesTotal:int=0, mission:Mission=null)
		{
			super(type);
			this.bytesTotal = bytesTotal;
			this.bytesLoaded = bytesLoaded;
			this.mission = mission;
		}
		override public function clone():Event
		{
			return new LoaderEvent(type,bytesLoaded,bytesTotal,mission);
		}
	}
}