package com.tencent.morefun.naruto.plugin.newplot.units
{
	import com.tencent.morefun.naruto.plugin.newplot.cmds.GetCurrentNewPlotCommand;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.ShakePlotUnitData;
	import com.tencent.morefun.naruto.plugin.ui.core.CoreShakeDisplay;
	
	import flash.events.Event;

	public class ShakePlotUnit extends BasePlotUnit
	{
		public function ShakePlotUnit(data:BasePlotUnitData)
		{
			super(data);
		}
		
		private function get selfData():ShakePlotUnitData
		{
			return data as ShakePlotUnitData;
		}
		
		private var cmd:GetCurrentNewPlotCommand;
		private var coreShakeDisplay:CoreShakeDisplay;
		override public function play():void
		{
			cmd = new GetCurrentNewPlotCommand();
			cmd.call();
			//cmd.newplot
			coreShakeDisplay = new CoreShakeDisplay(cmd.newplot,selfData.shakeType);
			coreShakeDisplay.addEventListener(Event.COMPLETE,completeHandler);
			//CoreShakeDisplay(显示对象, 类型[1垂直震动 2水平震动 3水平加垂直震动])
//			complete();
		}
		
		protected function completeHandler(event:Event):void
		{
			coreShakeDisplay.removeEventListener(Event.COMPLETE,completeHandler);
			//震动完成
			complete();
		}
		
		override public function destroy():void
		{
			cmd = null;
			if(coreShakeDisplay)
			{
				coreShakeDisplay.removeEventListener(Event.COMPLETE,completeHandler);
				coreShakeDisplay = null;
			}
			super.destroy();
		}
	}
}