package com.tencent.morefun.naruto.plugin.newplot.cmds
{
	import newplot.cmds.BaseNewPlotCommand;
	
	public class BeginBattleCommand extends BaseNewPlotCommand
	{
		public var id:int;
		public var newplotId:int;
		public var npcId:int;
		public function BeginBattleCommand(id:int, newplotId:int, npcId:int)
		{
			super();
			this.id = id;
			this.newplotId = newplotId;
			this.npcId = npcId;
		}
	}
}