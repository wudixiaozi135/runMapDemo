package guide.command
{
	/**
	 * @author woodychen
	 * @createTime 2014-9-25 下午4:41:49
	 **/
	public class RemoveGuideCommand extends BaseGuideCommand
	{
		public var id:int;
		
		public function RemoveGuideCommand(id:int)
		{
			super();
			this.id = id;
		}
	}
}