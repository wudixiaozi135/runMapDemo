package player.commands
{
	public class SelfMoveToPlayerCommand extends BasePlayerCommand
	{
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		public function SelfMoveToPlayerCommand(uin:uint, roleId:uint, svrId:uint)
		{
			super();
			
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
		}
	}
}