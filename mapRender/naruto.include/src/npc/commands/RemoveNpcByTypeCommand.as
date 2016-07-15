package npc.commands
{
	/**
	 * 世界Boss专用
	 * @author dezhaoli
	 * 
	 */
	public class RemoveNpcByTypeCommand extends BaseNpcCommand
	{
		public var type:int;
		public function RemoveNpcByTypeCommand(type:int)
		{
			super();
			this.type = type;
		}
	}
}