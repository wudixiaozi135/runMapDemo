package team.cmd
{
	public class RequestMatchTeamDungeonCommand extends BaseTeamCommand
	{
		public var beginMatch:Boolean = true;
		public var dungeonId:int;
		
		public function RequestMatchTeamDungeonCommand(dungeonId:int=0, beginMatch:Boolean = true)
		{
			super();
			
			this.beginMatch = beginMatch;
			this.dungeonId = dungeonId;
		}
	}
}