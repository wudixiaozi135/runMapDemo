package crew.def 
{
	/**
	 * 忍具列表类型定义
	 * @author larryhou
	 * @createTime 2014/4/17 11:03
	 */
	public class NinjaPropsListTypeDef 
	{		
		/**
		 * 背包中忍具信息列表
		 */
		public static const BAG:uint = 1 << 1;
		
		/**
		 * 已装备忍具信息列表
		 */
		public static const USING:uint = 1 << 2;
		
		/**
		 * 所有忍具信息列表
		 */
		public static const ALL:uint = BAG | USING;
	}

}