package com.tencent.morefun.naruto.plugin.newplot.datas
{
	public class ShakePlotUnitData extends BasePlotUnitData
	{
		public var shakeType:uint = 1;
		public function ShakePlotUnitData(cfg:XML)
		{
			super(cfg);
			if(cfg.@shakeType != ""){
				shakeType = uint(cfg.@shakeType);//震动方式
			}
		}
	}
}