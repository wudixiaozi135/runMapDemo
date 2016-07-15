package player.commands
{
	public class GetPlayerTeamMemberNumCommand extends BasePlayerCommand
	{
		public var teamId:String;
		public var uin:uint;
		public var roleId:uint;
		public var serverId:uint;
		public var num:int;
		
		public function GetPlayerTeamMemberNumCommand(uin:uint, roleId:uint, serverId:uint, teamId:String=null)
		{
			super();
			
			this.uin = uin;
			this.roleId = roleId;
			this.serverId = serverId;
			this.teamId = teamId;
		}
	}
}