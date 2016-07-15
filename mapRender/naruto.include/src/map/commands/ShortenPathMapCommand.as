package map.commands
{
	public class ShortenPathMapCommand extends BaseMapCommand
	{
		public var sourcePixcels:Array;
		public var shortenLength:int;
		public var shortenType:int;
		
		public var resultPixcels:Array;
		
		public function ShortenPathMapCommand(sourcePixcels:Array,shortenLength:int,shortenType:int=0)
		{
			super();
			
			this.sourcePixcels = sourcePixcels;
			this.shortenLength = shortenLength;
			this.shortenType = shortenType;
		}
	}
}