package com.tencent.morefun.naruto.plugin.newplot.units
{
	import com.tencent.morefun.naruto.plugin.newplot.cmds.GetCurrentNewPlotCommand;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.DemoPlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.views.Actor;

	public class DemoPlotUnit extends BasePlotUnit
	{
		public function DemoPlotUnit(data:BasePlotUnitData)
		{
			super(data);
		}
		
		private function get selfData():DemoPlotUnitData
		{
			return data as DemoPlotUnitData;
		}
		
		override public function play():void
		{
			trace(selfData.asideText);
			
			var cmd:GetCurrentNewPlotCommand = new GetCurrentNewPlotCommand();
			cmd.call();
			var actor:Actor = cmd.newplot.actorControl.getActor(1101);
			//actor.xxxxx
			
			complete();
		}
		
		override public function skip():void
		{
			//不需要操作，当然也不需要override了
		}
		
		override public function destroy():void
		{
			
		}
	}
}