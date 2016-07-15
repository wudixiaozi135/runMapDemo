package com.tencent.morefun.naruto.plugin.newplot.cmds
{
	import newplot.cmds.BaseNewPlotCommand;
	
	public class PreLoadNewPlotAssetCommand extends BaseNewPlotCommand
	{
		public var id:int;
		public var npcId:int;
		
		public function PreLoadNewPlotAssetCommand(id:int,npcId:int)
		{
			super(false);
			
			this.id = id;
			this.npcId = npcId;
		}
	}
}