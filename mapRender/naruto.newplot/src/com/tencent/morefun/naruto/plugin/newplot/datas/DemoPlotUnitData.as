package com.tencent.morefun.naruto.plugin.newplot.datas
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class DemoPlotUnitData extends BasePlotUnitData
	{
		public var asideText:String = I18n.lang("as_newplot_1451031574_4541");
		
		public function DemoPlotUnitData(cfg:XML)
		{
			super(cfg);
		}
		
		override public function parse(cfg:XML):void
		{
			super.parse(cfg);
			
			//asideText = cfg.@asideText;
		}
		
	}
}