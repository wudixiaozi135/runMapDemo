package task.commands
{
	import task.defs.TaskPanelTabDef;

	public class OpenTaskPanelCommand extends TaskBaseCommand
	{
		public var tab:int;
		public var taskId:int;
		public var taskName:String;
		
		public function OpenTaskPanelCommand(tab:int=TaskPanelTabDef.MAIN,taskId:int=0,taskName:String=null)
		{
			super();
			
			this.tab = tab;
			this.taskId = taskId;
			this.taskName = taskName;
		}
	}
}