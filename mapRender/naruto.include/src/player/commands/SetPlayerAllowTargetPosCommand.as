package player.commands
{
	public class SetPlayerAllowTargetPosCommand extends BasePlayerCommand
	{
		public var x:int;
		public var y:int;
		public function SetPlayerAllowTargetPosCommand(x:int, y:int)
		{
			super();
			this.x = x;
			this.y = y;
		}
	}
}