package task.commands
{
	import RSModel.command.RSModelCommand;

	public class RequestReceiveTaskCommand extends RSModelCommand
	{
		public var id:int;
		public function RequestReceiveTaskCommand(id:int)
		{
			super();
			this.id = id;
		}
	}
}