package com.tencent.morefun.naruto.plugin.newplot.datas
{
	public class BattleUnitData extends BasePlotUnitData
	{
		public var battleId:int;
		
		public function BattleUnitData(cfg:XML)
		{
			super(cfg);
		}
		
		override public function parse(cfg:XML):void
		{
			super.parse(cfg);
			
			battleId = cfg.@battleId;
		}
	}
}