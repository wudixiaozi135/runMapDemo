package com.tencent.morefun.naruto.plugin.newplot.datas
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class AsidePlotUnitData extends BasePlotUnitData
	{
		public var asideText:String = I18n.lang("as_newplot_1451031574_4533");
		public var waitTime:uint = 5000;
		public function AsidePlotUnitData(cfg:XML)
		{
			super(cfg);
			if(cfg.@asideText != ""){
				asideText = cfg.@asideText;//旁白内容
			}
			if(cfg.@waitTime != ""){
				waitTime = cfg.@waitTime;//等待时间
			}
		}
	}
}