package com.map.controls
{
	import com.map.element.BaseMapElement;
	import com.map.view.MapView;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;

	import flash.display.Stage;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.geom.Rectangle;

	/*
	 * 摄像机控制器
	 * */
	public class CameraControl
	{
		private var _viewpoint:Rectangle;		//可视区域
		private var _mapView:MapView;			//地图视图
		private var _centerPos:Point;			//摄像机移动点
		private var _stage:Stage;
		private var _currElement:BaseMapElement;				//场景当前所选元素
		private var _newViewpoint:Rectangle = new Rectangle();	//用于计算新可视区域

		public function CameraControl(mapview:MapView)
		{
			this._mapView = mapview;
			this._centerPos = new Point();
		}

		public function setData(stage:Stage):void
		{
			this._stage = stage;
			_viewpoint = new Rectangle(0, 0, stage.stageWidth, stage.stageHeight);
			viewpointUpdated(true);
		}

		/**
		 * 逐帧跟随当前元素位置
		 * */
		protected function onEnterFrame(event:Event = null):void
		{
			if (_currElement)
			{
				var dx:Number = _currElement.x - _centerPos.x;
				var dy:Number = _currElement.y - _centerPos.y;

				if (Math.abs(dx) <= 1)
				{
					_centerPos.x = int(_currElement.x);
				}
				else
				{
					_centerPos.x += int(dx * 0.2);
				}

				if (Math.abs(dy) <= 1)
				{
					_centerPos.y = int(_currElement.y);
				}
				else
				{
					_centerPos.y += int(dy * 0.2);
				}
				viewpointUpdated();
			}
		}

		/*
		 * 设置中心点
		 * */
		public function setCenterPos(x:Number, y:Number):void
		{
			_centerPos.x = x;
			_centerPos.y = y;

			if (_viewpoint)
			{
				viewpointUpdated(true);
			}
		}

		/**
		 * 解绑当前元素
		 * */
		protected function unbindElement():void
		{
			if (_currElement)
			{
				_currElement = null;
			}
		}

		/**
		 * 绑定当前元素
		 * */
		public function bindElement(value:BaseMapElement, duration:int = 0, completeFun:Function = null):void
		{
			unbindElement();
			this._currElement = value;
			setCenterPos(value.x, value.y);
		}

		public function getCenterPosXY():Point
		{
			return _centerPos;
		}

		/**
		 * 更新可视范围
		 * */
		private function viewpointUpdated(force:Boolean = false):void
		{
			var sw:int = _stage.stageWidth;
			var sh:int = _stage.stageHeight;
			var mw:int = _mapView.mapControl.mapData.mapPixelWidth;
			var mh:int = _mapView.mapControl.mapData.mapPixelHeight;

			_newViewpoint.x = int(Math.max(0, Math.min(mw - sw, _centerPos.x - (sw >> 1))));
			_newViewpoint.y = int(Math.max(0, Math.min(mh - sh, _centerPos.y - (sh >> 1))));
			_newViewpoint.width = Math.min(sw, mw);
			_newViewpoint.height = Math.min(sh, mh);

			if (force == false && _newViewpoint.equals(_viewpoint))
			{
				return;
			}

			// 地图小于窗口大小时
			var shouldBeScrollRect:Rectangle = _newViewpoint.width < sw || _newViewpoint.height < sh ? _newViewpoint : null;
			if (shouldBeScrollRect)
			{
				_mapView.x = (sw - _newViewpoint.width) >> 1;
				_mapView.y = (sh - _newViewpoint.height) >> 1;
			}
			else
			{
				_mapView.x = -_newViewpoint.x;
				_mapView.y = -_newViewpoint.y;
			}
			_mapView.scrollRect = shouldBeScrollRect;
			_viewpoint.copyFrom(_newViewpoint);
			_mapView.mapControl.update(_viewpoint);
			_mapView.elementControl.update(_viewpoint);
		}

		/**
		 * 启动渲染器
		 * */
		public function startup():void
		{
			TimerProvider.addActiveEnterFrameTask(onEnterFrame, null, 1, 9);
		}

		/**
		 * 解除相关引用
		 * */
		public function dispose():void
		{
			if (_stage)
			{
				TimerProvider.removeEnterFrameTask(onEnterFrame, null, 9);
			}
			unbindElement();
		}

		/**
		 * 析构
		 * */
		public function destroy():void
		{
			dispose();
		}
	}
}