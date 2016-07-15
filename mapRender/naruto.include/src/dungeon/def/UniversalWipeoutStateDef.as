package dungeon.def {
	/**
	 * 扫荡状态定义
	 * @author larryhou
	 * @createTime 2014/6/25 16:19
	 */
	public class UniversalWipeoutStateDef 
	{
		/**
		 * 扫荡未开始
		 */
		public static const WAIT:uint = 0;
		
		/**
		 * 正在扫荡
		 */
		public static const RUNNING:uint = 1;
		
		/**
		 * 扫荡完成
		 */
		public static const COMPLETE:uint = 2;
		
		/**
		 * 扫荡取消
		 */
		public static const CANCEL:uint = 3;
	}

}