package npc.commands
{
	import flash.geom.Point;

	public class FindCrossBlockPortalCommand extends BaseNpcCommand
	{
		public var fromPoint:Point;
		public var toPoint:Point;
		public var portalId:int;
		
		public function FindCrossBlockPortalCommand(fromPoint:Point, toPoint:Point)
		{
			super();
			this.fromPoint = fromPoint;
			this.toPoint = toPoint;
		}
	}
}