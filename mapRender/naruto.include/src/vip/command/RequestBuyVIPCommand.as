package vip.command 
{
	import RSModel.command.RSModelCommand;
	
	/**
	 * 购买VIP
	 * @author larryhou
	 * @createTime 2014/8/25 20:23
	 */
	public class RequestBuyVIPCommand extends RSModelCommand
	{
		/**
		 * VIP等级
		 */
		public var level:uint;
		
		/**
		 * 构造函数
		 * create a [RequestBuyVIPCommand] object
		 */
		public function RequestBuyVIPCommand(level:uint) 
		{
			this.level = level;
		}
		
	}

}