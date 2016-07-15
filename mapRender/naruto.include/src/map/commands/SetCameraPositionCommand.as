package map.commands
{
	public class SetCameraPositionCommand extends BaseMapCommand
	{
		public var x:int;
		public var y:int;
		
		public function SetCameraPositionCommand(x:int,y:int)
		{
			super();
			
			this.x = x;
			this.y = y;
		}
	}
}