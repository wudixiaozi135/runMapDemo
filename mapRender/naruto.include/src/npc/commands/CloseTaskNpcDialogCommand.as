package npc.commands
{
	
	public class CloseTaskNpcDialogCommand extends BaseNpcCommand
	{
		public var taskNpcId:uint;
		
		public function CloseTaskNpcDialogCommand(taskNpcId:uint=0)
		{
			super();
			
			this.taskNpcId = taskNpcId;
		}
	}
}