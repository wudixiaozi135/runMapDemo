package team.cmd
{
	import team.data.TeamData;

	public class RequestGetTeamDataListCommand extends TeamBaseCommand
	{
		public var destinationId:int;
		public var minLevel:int;
		
		public var teamDataList:Vector.<TeamData>;
		
		public function RequestGetTeamDataListCommand(destinationId:int,minLevel:int)
		{
			super();
			
			this.destinationId = destinationId;
			this.minLevel = minLevel;
		}
	}
}