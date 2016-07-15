package RSModel.command
{
	public class LoginFinishRSModelCommand extends RSModelCommand
	{
		/**
		 * 登录完成，拉到个人数据之后，再调这个命令
		 * 该命令由RSModel里去处理请求一些模块的数据
		 */
		public function LoginFinishRSModelCommand()
		{
			super();
		}
	}
}