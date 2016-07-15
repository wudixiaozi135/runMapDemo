package majorRole.commands
{
	
	
	public class OpenMajorRolePanelCommand extends BaseMajorRoleCommand
	{
		public var markIds:Array;
		
		public function OpenMajorRolePanelCommand(markIds:Array=null)
		{
			super();
			
			this.markIds = markIds;
		}
	}
}