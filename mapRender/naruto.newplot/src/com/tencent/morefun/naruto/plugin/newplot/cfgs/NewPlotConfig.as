package com.tencent.morefun.naruto.plugin.newplot.cfgs
{
	

	public class NewPlotConfig
	{
		public var mapId:int;
		public var initCPX:int;
		public var initCPY:int;
		public var initActorSeq:int;
		public var nextPlotId:int;
		public var startUnitId:int;
		public var stayInPlot:Boolean;
		
		public var toScene:int;
		public var toX:int;
		public var toY:int;
		public var toDirection:String;
		
		public var cfg:XML;
		
		public function NewPlotConfig()
		{
		}
		
		public function setData(xml:XML):void
		{
			this.cfg = xml;
			
			mapId = xml.@mapId;
			initActorSeq = xml.@actorSeq;
			initCPX = xml.@x;
			initCPY = xml.@y;
			nextPlotId = xml.@nextPlotId;
			startUnitId = xml.@startUnitId;
			
			toScene = xml.@toScene;
			toX = xml.@toX;
			toY = xml.@toY;
			toDirection = xml.@toDirection;
			stayInPlot = String(xml.@stayInPlot) == "1";
		}
	}
}