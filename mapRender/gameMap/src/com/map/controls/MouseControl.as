package com.map.controls
{
	import com.map.element.BaseMapElement;
	import com.map.events.MapElementEvent;
	import com.map.manager.LayerManager;
	import com.map.view.MapView;

	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;

	/*
	 * 地图上的鼠标事件控制
	 * */
	public class MouseControl
	{
		private var _stage:Stage;
		private var _tempPoint:Point;				//临时存鼠标地地图上的位置
		private var _mapView:MapView;				//地图视图
		private var _layers:Vector.<Sprite>;		//地图层容器
		private var _currElement:BaseMapElement;	//地图当前元素

		public function MouseControl(mapView:MapView, layers:Vector.<Sprite>)
		{
			this._stage = LayerManager.singleton.stage;
			this._tempPoint = new Point();
			this._mapView = mapView;
			this._layers = layers;
			this.init();
		}

		private function init():void
		{
			_mapView.addEventListener(MouseEvent.MOUSE_MOVE, onMouseMove);
			_mapView.addEventListener(MouseEvent.MOUSE_OVER, onMouseOver);
			_mapView.addEventListener(MouseEvent.MOUSE_OUT, onMouseOut);
			_mapView.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
		}

		private function onMouseMove(e:MouseEvent):void
		{
			var element:BaseMapElement;
			var isMapView:Boolean = e.target === this._mapView;

			// 找到目标元素
			if (!isMapView)
			{
				element = this.findMapElement(e.target as DisplayObject);
				if (!element || !element.hitTestPoint(e.stageX, e.stageY, true))
				{
					element = this.getUnderMouseElement();
				}
			}

			if (this._currElement !== element)
			{
				// 让之前的元素失去焦点
				if (this._currElement)
				{
					this._currElement.dispatch(MapElementEvent.MOUSE_OUT_ELEMENT);
					this._currElement = null;
				}

				// 让最新的元素得到焦点
				if (element)
				{
					this._currElement = element;
					this._currElement.dispatch(MapElementEvent.MOUSE_OVER_ELEMENT);
				}
			}
		}

		private function onMouseOver(e:MouseEvent):void
		{
			this.onMouseMove(e);
		}

		private function onMouseOut(e:MouseEvent):void
		{
			if (this._currElement)
			{
				this._currElement.dispatch(MapElementEvent.MOUSE_OUT_ELEMENT);
				this._currElement = null;
			}
		}

		private function onMouseDown(e:MouseEvent):void
		{
//			new HideAutoFindingAniCommand().call();
//			new StopCrossBlockCommand().call();
//			new StopCrossSceneCommand().call();
			if (this._currElement)
			{
				if (!this._currElement.isDestroyed)
				{
					this._currElement.dispatch(MapElementEvent.MOUSE_DOWN_ELEMENT);
				}
			}
			else
			{
				this._tempPoint.setTo(_mapView.mouseX, _mapView.mouseY);
//				new SelfMoveToPixcelCommand(this._tempPoint.clone()).call();

				//显示寻路标志
				this._mapView.showMoveTargetUI(_tempPoint.x - _mapView.moveTargetUi.width * .5, _tempPoint.y - _mapView.moveTargetUi.height * .5);

				//用来测试寻路
				this._mapView.dispatchEvent(new Event("testFindPath"));
			}
		}

		/**获取地图上鼠标下的场景元素*/
		private function getUnderMouseElement():BaseMapElement
		{
			this._tempPoint.setTo(this._stage.mouseX, this._stage.mouseY);
			//getObjectUnderPoint在窗口小的时候，不能依据mapView来获得,必须通过stage拿才正常
			var arr:Array = this._mapView.parent.getObjectsUnderPoint(this._tempPoint);
			for (var i:int = arr.length - 1; i >= 0; i--)
			{
				var dobj:DisplayObject = arr[i] as DisplayObject;
				var ele:BaseMapElement = findMapElement(dobj);
				if (ele)
				{
					if (ele.mouseEnabled && ele.hitTestPoint(this._tempPoint.x, this._tempPoint.y, true))
					{
						return ele;
					}
				}
			}
			return null;
		}

		private function findMapElement(dobj:DisplayObject):BaseMapElement
		{
			while (dobj)
			{
				if (dobj == null || dobj is Stage)
				{
					break;
				}

				if (dobj is BaseMapElement)
				{
					return dobj as BaseMapElement;
				}

				dobj = dobj.parent;
			}
			return null;
		}
	}
}