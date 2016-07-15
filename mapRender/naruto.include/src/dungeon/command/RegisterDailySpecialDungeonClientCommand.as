package dungeon.command 
{
	import dungeon.proxy.IDailySpecialDungeonClient;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 注册特殊副本客户端
	 * @author larryhou
	 * @createTime 2014/7/16 17:28
	 */
	public class RegisterDailySpecialDungeonClientCommand extends RSModelCommand
	{
		/**
		 * 客户端
		 */
		public var client:IDailySpecialDungeonClient;
		
		/**
		 * 构造函数
		 * create a [RegisterDailySpecialDungeonClientCommand] object
		 */
		public function RegisterDailySpecialDungeonClientCommand(client:IDailySpecialDungeonClient) 
		{
			this.client = client;
		}
	}

}