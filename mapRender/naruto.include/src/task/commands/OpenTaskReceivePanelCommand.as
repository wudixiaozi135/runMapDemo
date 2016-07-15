package task.commands
{
	public class OpenTaskReceivePanelCommand extends TaskBaseCommand
	{
		public var taskId:int;
		
		public function OpenTaskReceivePanelCommand(taskId:int)
		{
			super();
			this.taskId = taskId;
		}
	}
}