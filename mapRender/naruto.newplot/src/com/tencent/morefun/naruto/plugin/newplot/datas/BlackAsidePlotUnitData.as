package com.tencent.morefun.naruto.plugin.newplot.datas
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class BlackAsidePlotUnitData extends BasePlotUnitData
	{
		public var asideText:String = I18n.lang("as_newplot_1451031574_4537");
		public var waitTime:uint = 1000;
		public var asideType:uint = 1;//1屏幕全黑，2有动画资源的背景
		public function BlackAsidePlotUnitData(cfg:XML)
		{
			super(cfg);
			if(cfg.@asideText != ""){
				asideText = cfg.@asideText;//旁白内容
			}
			if(cfg.@waitTime != ""){
				waitTime = uint(cfg.@waitTime)*1000;//等待时间
			}
			if(cfg.@asideType != "")
			{
				asideType = uint(cfg.@asideType);
			}
		}
	}
}