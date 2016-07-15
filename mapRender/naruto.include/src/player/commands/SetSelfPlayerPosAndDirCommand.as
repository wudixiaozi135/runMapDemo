package player.commands
{
	import flash.geom.Point;

	public class SetSelfPlayerPosAndDirCommand extends BasePlayerCommand
	{
		public var position:Point;
		public var direction:int;

		public function SetSelfPlayerPosAndDirCommand(pos:Point,dir:int=-1)
		{
			super();
			
			this.position = pos;
			this.direction = dir;
		}
	}
}