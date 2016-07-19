package com.tx.loader
{
	import com.tx.loader.mission.Mission;

	import flash.events.Event;

	/**
	 * 加载事件
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class LoaderEvent extends Event
	{
		/** 任务清空 */
		public static const LAZY_MISSION_EMPTY:String = "lazyMissionEmpty";

		/** 任务清空 */
		public static const MISSION_EMPTY:String = "missionEmpty";

		/** 任务加载完成  */
		public static const MISSION_COMPLETE:String = "missionComplete";

		/** 任务加载出错   */
		public static const MISSION_ERROR:String = "missionError";

		/** 任务加载进度    */
		public static const MISSION_PROGRESS:String = "missionProgress";

		/** 任务加载开始    */
		public static const MISSION_START:String = "missionStart";

		/** 任务加载中断 */
		public static const MISSION_ABORT:String = "missionAbort";

		/** 任务移除 */
		public static const MISSION_REMOVE:String = "missionRemove"

		/** 销毁任务 */
		public static const MISSION_DESTROY:String = "missionDestroy";

		/** 显示了缓存面板 */
		public static const SHOW_CACHE_PANEL:String = "showCachePanel";

		/** 关闭了缓存面板  */
		public static const HIDE_CACHE_PANEL:String = "hideCachePanel";

		/** 显示了缓存面板 */
		public static const DISABLED_CACHE:String = "disabledCache";

		/**
		 * 构造函数
		 * @param type
		 * @param bytesLoaded    当前加载量
		 * @param bytesTotal    加载总量
		 * @param mission        加载任务
		 *
		 */
		public function LoaderEvent(type:String, bytesLoaded:int = 0, bytesTotal:int = 0, mission:Mission = null)
		{
			super(type);
			this.bytesTotal = bytesTotal;
			this.bytesLoaded = bytesLoaded;
			this.mission = mission;
		}

		/** 加载总量 */
		public var bytesTotal:int;
		/** 当前加载量 */
		public var bytesLoaded:int;
		/** 加载任务 */
		public var mission:Mission;

		/**
		 * 获取一个克隆的Event
		 * @return Event
		 *
		 */
		override public function clone():Event
		{
			return new LoaderEvent(type, this.bytesLoaded, this.bytesTotal, this.mission);
		}
	}
}