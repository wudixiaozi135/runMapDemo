package majorRole.commands
{
	
	public class SetTalentPageIndexCommand extends BaseMajorRoleCommand
	{
		public var pageIndex:int;
		public function SetTalentPageIndexCommand(pageIndex:int)
		{
			super();
			this.pageIndex = pageIndex;
		}
	}
}