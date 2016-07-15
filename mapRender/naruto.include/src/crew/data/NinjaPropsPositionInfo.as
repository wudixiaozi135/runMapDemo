package crew.data 
{
	/**
	 * 忍具装备位信息
	 * @author larryhou
	 * @createTime 2014/4/17 11:36
	 */
	public class NinjaPropsPositionInfo 
	{
		/**
		 * 装备位索引
		 */
		public var index:uint;
		
		/**
		 * 装备位名字
		 */
		public var name:String;
		
		/**
		 * 开启等级
		 */
		public var level:uint;
		
		/**
		 * 是否被锁
		 */
		public var locked:Boolean;
		
		/**
		 * 装备位忍具信息
		 */
		public var props:NinjaPropsInfo;
	}

}