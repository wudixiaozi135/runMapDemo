package ninja.command
{
	

	public class OpenNinjaDetailCommand extends NinjaCommand
	{
		public var ninjaId:int;
		public var owned:Boolean;
		public var sequence:int;
		
		public function OpenNinjaDetailCommand(ninjaId:int, owned:Boolean, sequence:int = -1)
		{
			super();
			this.ninjaId = ninjaId;
			this.owned = owned;
			this.sequence = sequence;
		}
	}
}