package com.tencent.morefun.naruto.plugin.newplot.cfgs
{
	public class PlotUnitCfg
	{
		public var type:int;
		public var unitClass:Class;
		public var unitDataClass:Class;
		
		public function PlotUnitCfg(type:int,unitClass:Class,unitDataClass:Class)
		{
			this.type = type;
			this.unitClass = unitClass;
			this.unitDataClass = unitDataClass;
		}
	}
}