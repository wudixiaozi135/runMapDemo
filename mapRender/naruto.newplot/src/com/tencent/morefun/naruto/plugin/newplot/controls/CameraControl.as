package com.tencent.morefun.naruto.plugin.newplot.controls
{
	import com.greensock.TweenLite;
	import com.tencent.morefun.naruto.plugin.newplot.events.ActorEvent;
	import com.tencent.morefun.naruto.plugin.newplot.views.Actor;
	import com.tencent.morefun.naruto.plugin.newplot.views.NewPlot;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
	
	
	import flash.display.Stage;
	import flash.events.Event;
	
	import flash.geom.Point;
	import flash.geom.Rectangle;

	public class CameraControl
	{
		private var newplot:NewPlot;
		private var viewpoint:Rectangle;
		private var centerPos:Point;
		private var stage:Stage;
		private var actor:Actor;
		private var tweenPoint:Point;
		
		public function CameraControl(newplot:NewPlot)
		{
			this.newplot = newplot;
			this.centerPos = new Point();
		}
		
		public function setData(stage:Stage):void
		{
			this.stage = stage;
			
			viewpoint = new Rectangle(0,0,LayoutManager.stageWidth,LayoutManager.stageHeight);
//			viewpointUpdated();
			
			stage.addEventListener(Event.RESIZE,onResize);
		}
		
		protected function onResize(event:Event):void
		{
			viewpointUpdated();
		}
		
		public function setCenterPos(x:Number,y:Number):void
		{
			centerPos.x = x;
			centerPos.y = y;
			
			if(viewpoint)
			{
				viewpointUpdated();
			}
		}
		
		public function unBindActor():void
		{
			destroyActor();
		}
		
		public function bindActor(actor:Actor,duration:int=0,completeFun:Function=null):void
		{
			destroyActor();
			this.actor = actor;
			if(duration>0)
			{
				tweenPoint = centerPos.clone();
				var tween:TweenLite = TweenLite.to(
					tweenPoint,
					duration/1000,
					{
						x:actor.x,
						y:actor.y,
						onUpdate:function():void{
							tween.vars.x = actor.x;
							tween.vars.y = actor.y;
							setCenterPos(tweenPoint.x,tweenPoint.y);
						},
						onComplete:function():void
						{
							completeFun && completeFun();
							actor.addEventListener(ActorEvent.UPDATE_POSITION,onActor);
							actor.addEventListener(ActorEvent.DESTROY,onActor);
						}
					}
				);
			}else
			{
				setCenterPos(actor.x,actor.y);
				completeFun && completeFun();
				actor.addEventListener(ActorEvent.UPDATE_POSITION,onActor);
				actor.addEventListener(ActorEvent.DESTROY,onActor);
			}
		}
		
		private function onActor(e:ActorEvent):void
		{
			switch(e.type)
			{
				case ActorEvent.UPDATE_POSITION:
					setCenterPos(actor.x,actor.y);
					break;
				case ActorEvent.DESTROY:
					destroyActor();
					break;
			}
		}
		
		public function getCenterPosXY():Point
		{
			return centerPos;
		}
		
		private function viewpointUpdated():void
		{
			var sw:int = LayoutManager.stageWidth;
			var sh:int = LayoutManager.stageHeight;
			var mw:int = newplot.mapControl.mapData.mapPixelWidth;
			var mh:int = newplot.mapControl.mapData.mapPixelHeight;
			
			viewpoint.x = Math.max(0, Math.min(mw-sw, centerPos.x - (sw>>1)));
			viewpoint.y = Math.max(0, Math.min(mh-sh, centerPos.y - (sh>>1)));
			
			viewpoint.width = Math.min(sw, mw);
			viewpoint.height = Math.min(sh, mh);
			
			//剧情地图小于窗口大小时
			if(viewpoint.width < sw)
			{
				this.newplot.x = (sw-viewpoint.width)>>1;
			}else
			{
				this.newplot.x = 0;
			}
			if(viewpoint.height < sh)
			{
				this.newplot.y = (sh-viewpoint.height)>>1;
			}else
			{
				this.newplot.y = 0;
			}
			
			this.newplot.scrollRect = viewpoint;
			newplot.mapControl.update(viewpoint);
			newplot.actorControl.update(viewpoint);
		}
		
		private function destroyActor():void
		{
			if(actor)
			{
				actor.removeEventListener(ActorEvent.UPDATE_POSITION,onActor);
				actor.removeEventListener(ActorEvent.DESTROY,onActor);
				actor = null;
			}
		}
		
		public function destroy():void
		{
			if(tweenPoint)
			{
				TweenLite.killTweensOf(tweenPoint);
				tweenPoint = null;
			}
			stage.removeEventListener(Event.RESIZE,onResize);
			stage = null;
			newplot = null;
			viewpoint = null;
			centerPos = null;
		}
	}
}