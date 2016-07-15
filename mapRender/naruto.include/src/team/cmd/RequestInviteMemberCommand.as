package team.cmd
{
	
	
	public class RequestInviteMemberCommand extends TeamBaseCommand
	{
		public var uins:Array;
		public var roles:Array;
		public var svrId:Array;
		public function RequestInviteMemberCommand(uin:uint,role:uint,svrId:uint)
		{
			super();
			
			this.uins = [uin];
			this.roles = [role];
			this.svrId = [svrId];
		}
	}
}