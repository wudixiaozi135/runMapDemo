package com.tencent.morefun.naruto.plugin.newplot.units
{
	import com.greensock.TweenLite;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.CameraMoveUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
	import com.tencent.morefun.naruto.plugin.newplot.views.Actor;
	
	import flash.geom.Point;

	public class CameraMoveUnit extends BasePlotUnit
	{
		
		private var tweenPoint:Point;
		public function CameraMoveUnit(data:BasePlotUnitData)
		{
			super(data);
		}
		
		private function get selfData():CameraMoveUnitData
		{
			return data as CameraMoveUnitData;
		}
		
		override public function destroy():void
		{
			tweenPoint = null;
			super.destroy();
		}
		
		override public function play():void
		{
			if(selfData.actorSeq)
			{
				var actor:Actor = PlotUtils.getActor(selfData.actorSeq);
				if(actor)
				{
					PlotUtils.getCurrentPlot().cameraControl.bindActor(actor,selfData.duration,complete);
					return;
				}
			}
			PlotUtils.getCurrentPlot().cameraControl.unBindActor();
			if(selfData.duration>0)
			{
				tweenPoint = PlotUtils.getCurrentPlot().cameraControl.getCenterPosXY().clone();
				TweenLite.to(
					tweenPoint,
					selfData.duration/1000,
					{
						x:selfData.toX,
						y:selfData.toY,
						onUpdate:function():void{
							PlotUtils.getCurrentPlot().cameraControl.setCenterPos(tweenPoint.x,tweenPoint.y);
						},
						onComplete:function():void{
							complete();
						}
					}
				);
			}else
			{
				PlotUtils.getCurrentPlot().cameraControl.setCenterPos(selfData.toX,selfData.toY);
				complete();
			}
		}
		
		override public function skip():void
		{
			if(selfData.actorSeq)
			{
				var actor:Actor = PlotUtils.getActor(selfData.actorSeq);
				if(actor)
				{
					PlotUtils.getCurrentPlot().cameraControl.bindActor(actor,0,complete);
					return;
				}
			}
			PlotUtils.getCurrentPlot().cameraControl.unBindActor();
			TweenLite.killTweensOf(tweenPoint);
			PlotUtils.getCurrentPlot().cameraControl.setCenterPos(selfData.toX,selfData.toY);
		}
	}
}