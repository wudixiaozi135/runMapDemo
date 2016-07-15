package team.cmd
{
	public class RequestMemberStateChangeCommand extends TeamBaseCommand
	{
		public var newState:int;
		
		public function RequestMemberStateChangeCommand(newState:int)
		{
			super();
			
			this.newState = newState;
		}
	}
}