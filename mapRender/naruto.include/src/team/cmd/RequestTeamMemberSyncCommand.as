package team.cmd
{
	public class RequestTeamMemberSyncCommand extends BaseTeamCommand
	{
		public var type:int;
		
		
		public function RequestTeamMemberSyncCommand(type:int)
		{
			super();
			this.type = type;
		}
	}
}