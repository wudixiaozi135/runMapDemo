package com.tencent.morefun.naruto.plugin.newplot.units
{
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BlackScreenUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
	
	/**
	 * 让全屏幕变黑。
	 * @author yboyjiang
	 */	
	public class BlackScreen extends BasePlotUnit
	{
		public function BlackScreen(data:BasePlotUnitData)
		{
			super(data);
		}
		
		override public function play():void
		{
			PlotUtils.getCurrentPlot().borderControl.blackScreen((this.data as BlackScreenUnitData).isShow);
			this.complete();
		}
		
		/**
		 * 跳过本次剧情表现，在选定的事件开始预览时使用
		 */
		override public function skip():void
		{
			
		}
		
		override public function destroy():void
		{
			data = null;
		}
		
	}
}