package map.commands
{
	import flash.geom.Point;

	public class GetRandomPixcelCommand extends BaseMapCommand
	{
		public var oriPoint:Point;
		public var offsetRange:int;
		public var newPoint:Point;
		public function GetRandomPixcelCommand(oriPoint:Point,offsetRange:int)
		{
			super();
			
			this.oriPoint = oriPoint;
			this.offsetRange = offsetRange;
		}
		
		override public function reset():void
		{
			super.reset();
			this.oriPoint = null;
			this.newPoint = null;
		}
	}
}