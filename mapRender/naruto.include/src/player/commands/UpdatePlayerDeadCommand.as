package player.commands
{
	public class UpdatePlayerDeadCommand extends BasePlayerCommand
	{
		public var isDead:Boolean;
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		
		public function UpdatePlayerDeadCommand(isDead:Boolean, uin:uint, roleId:uint, svrId:uint)
		{
			super();
			
			this.isDead = isDead;
			
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
		}
	}
}