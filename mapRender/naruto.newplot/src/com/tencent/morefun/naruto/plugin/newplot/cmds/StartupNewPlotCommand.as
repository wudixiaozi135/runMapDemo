package com.tencent.morefun.naruto.plugin.newplot.cmds
{
	import newplot.cmds.BaseNewPlotCommand;
	
	public class StartupNewPlotCommand extends BaseNewPlotCommand
	{
		public var id:int;
		public var doneFun:Function;
		public var changeIdFun:Function;
		public var npcId:int;
		public function StartupNewPlotCommand(id:int, doneFun:Function, changeIdFun:Function, npcId:int)
		{
			super();
			this.id = id;
			this.doneFun = doneFun;
			this.changeIdFun = changeIdFun;
			this.npcId = npcId;
		}
	}
}