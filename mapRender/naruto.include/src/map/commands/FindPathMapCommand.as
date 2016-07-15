package map.commands
{
	import flash.geom.Point;

	public class FindPathMapCommand extends BaseMapCommand
	{
		public var beginPixcel:Point;
		public var endPixcel:Point;
		public var shorten:int;
		public var shortenType:int; //ShotenPathType枚举
		
		public var resultPixcels:Array;
		
		public function FindPathMapCommand(beginPixcel:Point, endPixcel:Point, shorten:int=0, shortenType:int = 0)
		{
			super();
			
			this.beginPixcel = beginPixcel;
			this.endPixcel = endPixcel;
			this.shorten = shorten;
			this.shortenType = shortenType;
		}
	}
}