package task.commands
{
	public class OpenTaskCommitPanelCommand extends TaskBaseCommand
	{
		public var taskId:int;
		
		public function OpenTaskCommitPanelCommand(taskId:int)
		{
			super();
			this.taskId = taskId;
		}
	}
}