package ninja.command
{
	import ninja.model.data.NinjaInfo;
	import RSModel.command.RSModelCommand;
	
	public class RequestNinjaDetailCommand extends RSModelCommand
	{
		public var ninjaSeqArr:Array;
		public var ninjaInfos:Vector.<NinjaInfo>;
		
		public function RequestNinjaDetailCommand(ninjaSeqArr:Array)
		{
			super();
			this.ninjaSeqArr = ninjaSeqArr;
		}
	}
}