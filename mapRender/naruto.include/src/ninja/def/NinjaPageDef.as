package ninja.def 
{
	/**
	 * 忍者页面id
	 * @author larryhou
	 * @createTime 2013/9/23 17:39
	 */
	public class NinjaPageDef 
	{
		/**
		 * 阵法页面
		 * @NINJA_SYSTEM_TAB
		 */
		public static const FORMATION:uint = 1;
		
		/**
		 * 强化All In One
		 * @NINJA_SYSTEM_TAB
		 */
		public static const STRENGTHEN:uint = 2;
		
		
		//////////////////////以下21，22，23，24是强化All In One的子页签，所以以2开头
		/**
		 * 升级
		 */
		public static const LEVEL_UPGRADE:uint = 21;
		
		/**
		 * 升星
		 */
		public static const STAR_UPGRADE:uint = 22;
		
		/**
		 * 属性强化
		 */
		public static const PROPERTY_STRENGTHEN:uint = 23;
		
		/**
		 * 唤醒新忍者页面
		 */
		public static const WAKE_UP:uint = 24;
		//////////////////////////////////////////////////////////////////////////////////
		
		/**
		 * 变身
		 * @NINJA_SYSTEM_TAB
		 */
		public static const TRANSFIGURATION:uint = 3;
		
		/**
		 * 卡包页面
		 */
		public static const CARD:uint = 4;
		
		/**
		 * 忍者图鉴页面
		 * @deprecated
		 */
		public static const STORAGE:uint = 5;
		
		/**
		 * 帮助
		 * @deprecated
		 */
		public static const HELP:uint = 6;
		
		/**
		 * 修炼
		 * @deprecated
		 */
		public static const PRACTICE:uint = 7;
		
		/**
		 * 升阶页面
		 * @deprecated
		 */
		public static const UPGRADE:uint = 11;
	}

}