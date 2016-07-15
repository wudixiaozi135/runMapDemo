package ninja.command 
{
	import RSModel.command.RSModelCommand;
	
	/**
	 * 忍者拥有判断
	 * @author larryhou
	 * @createTime 2015/3/6 17:21
	 */
	public class CheckNinjaOwnedCommand extends RSModelCommand
	{
		/**
		 * 忍者id
		 */
		public var id:uint;
		
		/**
		 * 是否进行系列匹配判断
		 */
		public var seriesIncluded:Boolean;
		
		/**
		 * 是否拥有
		 */
		public var owned:Boolean;
		
		/**
		 * 构造函数
		 * create a [CheckNinjaOwnedCommand] object
		 */
		public function CheckNinjaOwnedCommand(id:uint, seriesIncluded:Boolean = false)
		{
			this.id = id; this.seriesIncluded = seriesIncluded;
		}
		
	}

}