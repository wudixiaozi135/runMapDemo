package team.cmd
{
	import team.data.TeamData;

	public class RequestGetTeamDataCommand extends TeamBaseCommand
	{
		public var teamId:String;
		
		public var teamData:TeamData;
		
		public function RequestGetTeamDataCommand(teamId:String)
		{
			super();
			
			this.teamId = teamId;
		}
	}
}