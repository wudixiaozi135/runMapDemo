package vip.command 
{
	import RSModel.command.RSModelCommand;
	import vip.IVIPPrivilege;
	
	/**
	 * 获取VIP详情
	 * @author larryhou
	 * @createTime 2014/8/25 20:25
	 */
	public class RequestVIPDetailCommand extends RSModelCommand
	{
		/**
		 * VIP特权信息
		 */
		public var privilege:IVIPPrivilege;
		
		/**
		 * 构造函数
		 * create a [RequestVIPDetailCommand] object
		 */
		public function RequestVIPDetailCommand() 
		{
			
		}
	}

}