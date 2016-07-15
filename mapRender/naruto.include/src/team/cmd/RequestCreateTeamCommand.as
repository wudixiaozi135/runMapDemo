package team.cmd
{
	

	public class RequestCreateTeamCommand extends TeamBaseCommand
	{
		public var name:String;
		public var goalType:int;
		public var goalId:int;
		
		public function RequestCreateTeamCommand(name:String,goalType:int,goalId:int)
		{
			super();
			
			this.name = name;
			this.goalType = goalType;
			this.goalId = goalId;
		}
	}
}