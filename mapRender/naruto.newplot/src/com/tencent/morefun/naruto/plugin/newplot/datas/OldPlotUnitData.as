package com.tencent.morefun.naruto.plugin.newplot.datas
{
	public class OldPlotUnitData extends BasePlotUnitData
	{
		public var oldPlotID:uint = 10105;
		public function OldPlotUnitData(cfg:XML)
		{
			super(cfg);
			if(cfg.@oldPlotID != ""){
				oldPlotID = uint(cfg.@oldPlotID);//旁白内容
			}
		}
	}
}