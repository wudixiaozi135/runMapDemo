package guide.command
{
	public class DisplayGuideCommand extends BaseGuideCommand
	{
		public var id:int;
		
		public function DisplayGuideCommand(id:int)
		{
			super();
			this.id = id;
		}
	}
}