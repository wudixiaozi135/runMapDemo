package tx.loader.def 
{

	public class LoadStatusDef 
	{
		/**
		 * 等待状态
		 */
		public static const WAIT:String = "wait";
		
		/**
		 * 加载状态
		 */
		public static const LOADING:String = "loading";
		
		/**
		 * 加载完成状态
		 */
		public static const COMPLETE:String = "complete";
		
		/**
		 * 已被垃圾回收
		 */
		public static const DISPOSED:String = "disposed";
	}

}