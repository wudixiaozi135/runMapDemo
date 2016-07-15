package newplot.cmds
{
	public class RequestPlayNewPlotCommand extends BaseNewPlotCommand
	{
		public var id:int;
		public var doneFun:Function;
		public var changeIdFun:Function;
		public var npcId:int;
		
		public function RequestPlayNewPlotCommand(id:int=999999, doneFun:Function=null, changeIdFun:Function=null, npcId:int=0)
		{
			super();
			this.id = id;
			this.doneFun = doneFun;
			this.changeIdFun = changeIdFun;
			this.npcId = npcId;
		}
	}
}