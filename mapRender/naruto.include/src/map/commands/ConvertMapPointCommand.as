package map.commands
{
	import flash.geom.Point;

	public class ConvertMapPointCommand extends BaseMapCommand
	{
		public var tilePoint:Point;
		public var pixelPoint:Point;
		
		public function ConvertMapPointCommand(tilePoint:Point = null, pixelPoint:Point = null)
		{
			super();
			this.tilePoint = tilePoint;
			this.pixelPoint = pixelPoint;
		}
	}
}