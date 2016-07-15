package team.cmd
{
	
	public class RequestChangeMemberPosCommand extends BaseTeamCommand
	{
		public var pos1:int;
		public var pos2:int;
		
		
		public function RequestChangeMemberPosCommand(pos1:int,pos2:int)
		{
			super();
			this.pos1 = pos1;
			this.pos2 = pos2;
		}
	}
}