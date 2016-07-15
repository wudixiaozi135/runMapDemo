package com.tencent.morefun.naruto.plugin.newplot
{
	import com.tencent.morefun.framework.apf.core.plugin.Plugin;
	import com.tencent.morefun.naruto.plugin.newplot.executer.LogicExecuter;
	import com.tencent.morefun.naruto.plugin.newplot.executer.ViewExecuter;
	
	import def.PluginDef;
	
	import newplot.INaurtoNewPlot;
	
	public class NewPlotPlugin extends Plugin implements INaurtoNewPlot
	{
		public function NewPlotPlugin() 
		{
			super();
		}
		override public function getPluginName():String
		{
			return PluginDef.NEWPLOT;
		}
		
		override public function initialize(config:XML):void
		{
			this.registerExecuter(new ViewExecuter());
			this.registerExecuter(new LogicExecuter());
		}
	}
}