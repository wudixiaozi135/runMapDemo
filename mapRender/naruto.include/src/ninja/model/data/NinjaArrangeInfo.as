package ninja.model.data
{
	/**
	 * 阵法中忍者状态
	 * @author larryhou
	 * @createTime 2013/9/25 16:48
	 */
	public class NinjaArrangeInfo 
	{
		/**
		 * 忍者唯一标记
		 */
		public var sequence:uint;
		
		/**
		 * 忍者阵法中位置
		 */
		public var location:uint;	
		
		/**
		 * 出手顺序
		 */
		public var order:uint;
		
		/**
		 *忍者ID 
		 */		
		public var ninjaId:int;
		
		/**
		 *当前血量 
		 */		
		public var life:int;
		
		/**
		 *最大血量
		 */
		public var lifeMax:int;
	}

}