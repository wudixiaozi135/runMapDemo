package map.commands
{
	import flash.geom.Point;

	public class GetPixelBlockCommand extends BaseMapCommand
	{
		public var pixelPoint:Point;
		public var block:int;
		
		public function GetPixelBlockCommand(pixelPoint:Point)
		{
			super();
			this.pixelPoint = pixelPoint;
		}
	}
}