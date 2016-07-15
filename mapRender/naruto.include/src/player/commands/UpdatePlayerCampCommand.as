package player.commands
{
	public class UpdatePlayerCampCommand extends BasePlayerCommand
	{
		public var camp:int;
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		
		public function UpdatePlayerCampCommand(camp:int, uin:uint, roleId:uint, svrId:uint)
		{
			super();
			
			this.camp = camp;
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
		}
	}
}