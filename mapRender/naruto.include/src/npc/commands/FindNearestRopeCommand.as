package npc.commands
{
	import flash.geom.Point;

	public class FindNearestRopeCommand extends BaseNpcCommand
	{
		public var fromPoint:Point;
		public var toPoint:Point;
		public var ropeNpcId:int;
		
		public function FindNearestRopeCommand(fromPoint:Point, toPoint:Point)
		{
			super();
			this.fromPoint = fromPoint;
			this.toPoint = toPoint;
		}
	}
}