package com.tencent.morefun.naruto.plugin.newplot.datas
{
	public class CameraMoveUnitData extends BasePlotUnitData
	{
		public var actorSeq:int;
		public var toX:int;
		public var toY:int;
		public var duration:int;
		
		public function CameraMoveUnitData(cfg:XML)
		{
			super(cfg);
		}
		
		override public function parse(cfg:XML):void
		{
			super.parse(cfg);
			
			actorSeq = cfg.@actorSeq;
			toX = cfg.@toX;
			toY = cfg.@toY;
			duration = cfg.@duration;
		}
	}
}