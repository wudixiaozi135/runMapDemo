package player.commands
{
	import flash.geom.Point;

	public class SetLeaderPlayerPosAndDirCommand extends BasePlayerCommand
	{
		public var position:Point;
		public var direction:int;
		
		public function SetLeaderPlayerPosAndDirCommand(pos:Point,dir:int=-1)
		{
			super();
			
			this.position = pos;
			this.direction = dir;
		}
	}
}