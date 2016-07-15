package com.tencent.morefun.naruto.plugin.newplot.datas
{
	public class BlackScreenUnitData extends BasePlotUnitData
	{
		public var isShow:Boolean;
		
		public function BlackScreenUnitData(cfg:XML)
		{
			super(cfg);
		}
		
		override public function parse(cfg:XML):void
		{
			super.parse(cfg);
			this.isShow = String(cfg.@isShow) == "true";
		}
	}
}