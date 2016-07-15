package player.commands
{
	public class SelectPlayerCommand extends BasePlayerCommand
	{
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		
		public function SelectPlayerCommand(uin:uint, roleId:uint, svrId:uint)
		{
			super();
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
		}
	}
}