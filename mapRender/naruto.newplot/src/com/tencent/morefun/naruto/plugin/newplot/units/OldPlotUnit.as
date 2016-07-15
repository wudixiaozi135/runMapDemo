package com.tencent.morefun.naruto.plugin.newplot.units
{
	import com.tencent.morefun.framework.base.CommandEvent;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.OldPlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
	
	import plot.command.CancelPlotCommand;
	import plot.command.PlotCommand;

	public class OldPlotUnit extends BasePlotUnit
	{
		public function OldPlotUnit(data:BasePlotUnitData)
		{
			super(data);
		}
		
		private function get selfData():OldPlotUnitData
		{
			return data as OldPlotUnitData;
		}
		
		private var oldPlotCommand:PlotCommand;
		override public function play():void
		{
			PlotUtils.getCurrentPlot().borderControl.setVisible(false);
			
			oldPlotCommand = new PlotCommand(selfData.oldPlotID, false);
			oldPlotCommand.addEventListener(CommandEvent.FINISH, oldPlotFinish);
			oldPlotCommand.call();
			
//			LayerManager.singleton.setLayerIndex(LayerDef.BOX,LayerDef.NEW_PLOT_INDEX+1);
		}
		
		protected function oldPlotFinish(event:CommandEvent):void
		{
			this.oldPlotCommand.removeEventListener(CommandEvent.FINISH, oldPlotFinish);
			PlotUtils.getCurrentPlot().borderControl.setVisible(true);
//			LayerManager.singleton.setLayerIndex(LayerDef.BOX,LayerDef.BOX_INDEX);
			complete();
		}
		
		override public function skip():void
		{
			//剧情播放的时候点跳过，会调到这里
			//注意的是，这里有可能没有调用过play方法
			new CancelPlotCommand().call();
		}
		
		override public function destroy():void
		{
			data = null;
			oldPlotCommand = null;
		}
	}
}