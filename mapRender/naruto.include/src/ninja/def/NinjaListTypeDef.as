package ninja.def 
{
	/**
	 * 忍者数据类型定义
	 * @author larryhou
	 * @createTime 2013/12/11 15:11
	 */
	public class NinjaListTypeDef 
	{
		/**
		 * 所有忍者
		 */
		public static const ALL:uint = 1/*1 << 0*/;
		
		/**
		 * 仓库忍者
		 */
		public static const STORAGE:uint = 2/*1 << 1*/;
		
		/**
		 * 背包中忍者
		 */
		public static const PACKAGE:uint = 4/*1 << 2*/;
		
		/**
		 * 阵法中忍者
		 */
		public static const FORMATION:uint = 8/*1 << 3*/;
	}
}