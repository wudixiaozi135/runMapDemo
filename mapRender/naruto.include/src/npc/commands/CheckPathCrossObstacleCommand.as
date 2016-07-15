package npc.commands
{
	public class CheckPathCrossObstacleCommand extends BaseNpcCommand
	{
		public var pixelPath:Array;
		public var obstacleNpcId:int;
		public var obstacleRadius:int;
		
		public function CheckPathCrossObstacleCommand(pixelPath:Array)
		{
			super();
			this.pixelPath = pixelPath;
		}
	}
}