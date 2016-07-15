package player.commands
{
	public class UpdatePlayerDisConnectionCommand extends BasePlayerCommand
	{
		public var isDisConnection:Boolean;
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		
		public function UpdatePlayerDisConnectionCommand(isDisConnection:Boolean, uin:uint, roleId:uint, svrId:uint)
		{
			super();
			
			this.isDisConnection = isDisConnection;
			
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
		}
	}
}