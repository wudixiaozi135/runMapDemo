package com.map.view
{
	import com.map.consDef.MapLayerDef;
	import com.map.controls.CameraControl;
	import com.map.controls.ElementControl;
	import com.map.controls.MapControl;
	import com.map.controls.MouseControl;

	import flash.display.Sprite;

	/*
	 * 地图视图
	 * */
	public class MapView extends Sprite
	{
		private var _mapControl:MapControl;//地图控制
		private var _cameraControl:CameraControl;//摄像机控制
		private var _elementControl:ElementControl;//地图元素控制
		private var _mouseControl:MouseControl;//地图场景鼠标事件控制

		/**层容器*/
		public var layers:Vector.<Sprite>;

		/**移动到目标显示UI*/
		public var moveTargetUi:MoveTargetUI;

		public function MapView()
		{
			super();
			init();
		}

		public function get mapControl():MapControl
		{
			return _mapControl;
		}

		public function get cameraControl():CameraControl
		{
			return _cameraControl;
		}

		public function get elementControl():ElementControl
		{
			return _elementControl;
		}

		private function init():void
		{
			moveTargetUi = new MoveTargetUI();
			moveTargetUi.stop();

			layers = new Vector.<Sprite>(MapLayerDef.COUNT, true);
			for (var i:int = 0; i < MapLayerDef.COUNT; i++)
			{
				layers[i] = new Sprite();
				layers[i].name = "" + i;
				layers[i].mouseChildren = layers[i].mouseEnabled = true;
				addChild(layers[i]);
			}

			layers[MapLayerDef.POPUP].mouseChildren = layers[MapLayerDef.POPUP].mouseEnabled = false;
			layers[MapLayerDef.BOTTOM_MAP].mouseChildren = layers[MapLayerDef.BOTTOM_MAP].mouseEnabled = false;
			layers[MapLayerDef.FRONT_MAP].mouseChildren = layers[MapLayerDef.FRONT_MAP].mouseEnabled = false;

			_mapControl = new MapControl(layers);
			_elementControl = new ElementControl(layers);
			_cameraControl = new CameraControl(this);
			_mouseControl = new MouseControl(this, layers);
		}

		/**启动摄像机控制*/
		public function startup():void
		{
			_cameraControl.startup();
		}

		/*
		 * 消除函数，引用未置空
		 * */
		public function dispose():void
		{
			hideMoveTargetUI();
			_elementControl.dispose();
			_mapControl.dispose();
			_cameraControl.dispose();
		}


		/*
		 * 析构函数
		 * */
		public function destroy():void
		{
			if (_mapControl)
			{
				_mapControl.destroy();
				_mapControl = null;
			}
			if (_cameraControl)
			{
				_cameraControl.destroy();
				_cameraControl = null;
			}
		}

		/**寻路目标UI显示*/
		public function showMoveTargetUI(x:int, y:int):void
		{
			moveTargetUi.x = x;
			moveTargetUi.y = y;
			moveTargetUi.play();

			layers[MapLayerDef.MIDDLE_ELEMENT].addChild(moveTargetUi);
		}

		/**寻路到目的地时隐藏UI*/
		public function hideMoveTargetUI():void
		{
			moveTargetUi.stop();
			if (moveTargetUi.parent)
			{
				moveTargetUi.parent.removeChild(moveTargetUi);
			}
		}
	}
}