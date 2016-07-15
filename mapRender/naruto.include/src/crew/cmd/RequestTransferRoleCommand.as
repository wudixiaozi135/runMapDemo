package crew.cmd
{
	public class RequestTransferRoleCommand extends BaseCrewCommand
	{
		public var index:int;
		public var money:int;
		public function RequestTransferRoleCommand(index:int, money:int)
		{
			super();
			
			this.index = index;
			this.money = money;
		}
	}
}