package task.commands
{
	import RSModel.command.RSModelCommand;

	public class RequestGiveupTaskCommand extends RSModelCommand
	{
		public var id:int;
		public function RequestGiveupTaskCommand(id:int)
		{
			super();
			this.id = id;
		}
	}
}