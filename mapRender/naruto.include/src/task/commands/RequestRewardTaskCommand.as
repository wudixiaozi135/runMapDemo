package task.commands
{
	import RSModel.command.RSModelCommand;

	public class RequestRewardTaskCommand extends RSModelCommand
	{
		public var id:int;
		
		public var awards:Array;
		public function RequestRewardTaskCommand(id:int)
		{
			super();
			this.id = id;
		}
	}
}