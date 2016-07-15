package user.command
{
	/**
	 * @author woodychen
	 * @createTime 2014-7-4 下午3:40:08
	 **/
	public class RequestBuyStrengthCommand extends BaseUserCommand
	{
		public var type:int;
		
		public function RequestBuyStrengthCommand(type:int)
		{
			super();
			this.type = type;
		}
	}
}