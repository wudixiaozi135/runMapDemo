package team.cmd
{
	import team.data.TeamData;

	public class RequestJoinTeamCommand extends TeamBaseCommand
	{
		public var joinTeamId:String;
//		public var teamData:TeamData;
		
		public function RequestJoinTeamCommand(joinTeamId:String)
		{
			super();
			this.joinTeamId = joinTeamId;
		}
	}
}