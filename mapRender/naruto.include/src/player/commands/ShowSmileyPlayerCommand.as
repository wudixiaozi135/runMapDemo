package player.commands
{
	public class ShowSmileyPlayerCommand extends BasePlayerCommand
	{
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		public var smiley:int;
		
		public function ShowSmileyPlayerCommand(uin:uint, roleId:uint, svrId:uint, smiley:int)
		{
			super();
			
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
			this.smiley = smiley;
		}
	}
}