package dungeon.data 
{
	/**
	 * 忍者考试额外信息
	 * @author larryhou
	 * @createTime 2014/6/25 15:34
	 */
	public class ExamWipeoutExtraInfo 
	{
		// static settings
		//*************************************************
		/**
		 * 最大扫荡关数
		 */
		public static const MAX_WIPE_OUT_LEVEL:int	= 100;
		
		/**
		 * 每关扫荡消耗时间
		 */
        public static const WIPE_OUT_DELTA_TIME:uint	=   1;
		
		// params
		//*************************************************
		/**
		 * 忍者考试名字
		 */
		public var name:String;
		
		/**
		 * 扫荡关卡
		 */
		public var level:uint;
		
		/**
		 * 玩家所在的关卡
		 * @require
		 */
		public var currentLevel:uint;
		
		/**
		 * 扫荡每关需要消耗时间
		 * @require
		 */
		public var deltaTime:uint;
		
		// response
		//*************************************************
		/**
		 * 免费次数
		 */
		public var freeCount:uint;
		
		/**
		 * 玩家通关上限
		 */
		public var userUpperLevel:uint;
		
		/**
		 * 我的排名
		 */
		public var rank:uint;
		
		/**
		 * 累计经验
		 */
		public var exp:uint;
	}

}