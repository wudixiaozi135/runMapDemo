package com.tencent.morefun.naruto.plugin.newplot.cmds
{
	import newplot.cmds.BaseNewPlotCommand;
	
	public class PreLoadMapAssetCommand extends BaseNewPlotCommand
	{
		public var id:int;
		public var mapId:int;
		public var npcId:int;
		public function PreLoadMapAssetCommand(id:int,mapId:int,npcId:int)
		{
			super();
			
			this.id = id;
			this.mapId = mapId;
			this.npcId = npcId;
		}
		
	}
}