package task.commands
{
	import RSModel.command.RSModelCommand;

	public class RequestImmediatelyCompleteTaskCommand extends RSModelCommand
	{
		public var id:int;
		public function RequestImmediatelyCompleteTaskCommand(id:int)
		{
			super();
			this.id = id;
		}
	}
}