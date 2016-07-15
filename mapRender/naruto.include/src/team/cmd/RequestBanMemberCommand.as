package team.cmd
{
	public class RequestBanMemberCommand extends TeamBaseCommand
	{
		public var uin:uint;
		public var role:uint;
		public var svrId:uint;
		
		public function RequestBanMemberCommand(uin:uint,role:uint,svrId:int)
		{
			super();
			
			this.uin = uin;
			this.role = role;
			this.svrId = svrId;
		}
	}
}