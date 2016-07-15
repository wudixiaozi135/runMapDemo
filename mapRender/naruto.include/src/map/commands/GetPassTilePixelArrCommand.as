package map.commands
{
	import flash.geom.Point;

	public class GetPassTilePixelArrCommand extends BaseMapCommand
	{
		public var startPixelPoint:Point;
		public var endPixelPoint:Point;
		public var passPixels:Array;
		
		public function GetPassTilePixelArrCommand(startPixelPoint:Point, endPixelPoint:Point)
		{
			super();
			this.startPixelPoint = startPixelPoint;
			this.endPixelPoint = endPixelPoint;
		}
	}
}