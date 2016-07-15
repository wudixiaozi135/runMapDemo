package player.commands
{
	public class GetPlayerNinjaCommand extends BasePlayerCommand
	{
		public var uin:uint;
		public var roleId:int;
		public var svrId:int;
		public var isShowNinja:Boolean;
		
		public var ninjaId:uint;
		
		public function GetPlayerNinjaCommand(uin:uint, roleId:int, svrId:int, isShowNinja:Boolean=false)
		{
			super();
			
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
			this.isShowNinja = isShowNinja;
		}
	}
}