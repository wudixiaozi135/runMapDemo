package dungeon.command 
{
	import dungeon.proxy.IWipeoutIndicatorClient;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 注册扫荡指示器
	 * @author larryhou
	 * @createTime 2014/8/7 19:42
	 */
	public class RegisterWipeoutIndicatorCommand extends RSModelCommand
	{
		/**
		 * 扫荡指示器代理
		 */
		public var client:IWipeoutIndicatorClient;
		
		/**
		 * 构造函数
		 * create a [RegisterWipeoutIndicatorCommand] object
		 */
		public function RegisterWipeoutIndicatorCommand(client:IWipeoutIndicatorClient) 
		{
			this.client = client;
		}
	}

}