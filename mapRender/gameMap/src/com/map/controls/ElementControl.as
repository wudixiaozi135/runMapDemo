package com.map.controls
{
	import com.map.consDef.MapLayerDef;
	import com.map.element.BaseMapElement;
	import com.map.events.MapElementEvent;
	import com.map.utils.MapTimeTypeUtil;

	import flash.display.Sprite;
	import flash.geom.ColorTransform;
	import flash.geom.Rectangle;

	/**
	 *地图元素控制
	 * */
	public class ElementControl
	{
		private var _viewpoint:Rectangle;
		private var _frontElements:Vector.<BaseMapElement>;
		private var _middleElements:Vector.<BaseMapElement>;
		private var _bottomElements:Vector.<BaseMapElement>;
		private var _layers:Vector.<Sprite>;

		/**
		 * 地图元素控制
		 * @param layers 地图元素控制层数组
		 * */
		public function ElementControl(layers:Vector.<Sprite>)
		{
			this._layers = layers;
			_frontElements = new Vector.<BaseMapElement>();
			_middleElements = new Vector.<BaseMapElement>();
			_bottomElements = new Vector.<BaseMapElement>();
		}

		/**
		 *设置地图上时间效果
		 *@param type - 1正常 2黄昏 3夜晚
		 * */
		public function setTimeType(type:int):void
		{
			var ct:ColorTransform = MapTimeTypeUtil.getColorTransform(type);
			_layers[MapLayerDef.FRONT_ELEMENT].transform.colorTransform = ct;
			_layers[MapLayerDef.BOTTOM_ELEMENT].transform.colorTransform = ct;
			_layers[MapLayerDef.MIDDLE_ELEMENT].transform.colorTransform = ct;
		}

		public function update(viewpoint:Rectangle):void
		{
			this._viewpoint = viewpoint;
//			this._viewpoint = _viewpoint.clone();
//			this._viewpoint.inflate(100,100);

			var ele:BaseMapElement;

			for each(ele in _middleElements)
			{
				checkInOutViewpoint(ele, _layers[MapLayerDef.MIDDLE_ELEMENT]);
			}

			for each(ele in _frontElements)
			{
				checkInOutViewpoint(ele, _layers[MapLayerDef.FRONT_ELEMENT]);
			}

			for each(ele in _bottomElements)
			{
				checkInOutViewpoint(ele, _layers[MapLayerDef.BOTTOM_ELEMENT]);
			}
		}

		private function checkInOutViewpoint(ele:BaseMapElement, layer:Sprite):void
		{
			var bound:Rectangle = ele.getBounds(null);
//			bound.x += ele.x;
//			bound.y += ele.y;

//			bound.inflate(30,30);

			var left:int = bound.left + ele.x;
			var right:int = bound.right + ele.x;
			var top:int = bound.top + ele.y;
			var bottom:int = bound.bottom + ele.y;

			if (left < _viewpoint.right + 100 && top < _viewpoint.bottom + 100 && right > _viewpoint.left - 100 && bottom > _viewpoint.top - 100)
//			if(bound.intersects(_viewpoint))
			{
				if (!layer.contains(ele))
				{
					layer.addChild(ele);
					ele.inViewPoint();
				}
				if (ele.needPopupContainer && !_layers[MapLayerDef.POPUP].contains(ele.popupContainer))
				{
					_layers[MapLayerDef.POPUP].addChild(ele.popupContainer);
				}
			} else
			{
				if (layer.contains(ele))
				{
					layer.removeChild(ele);
					ele.outViewPoint();
				}
				if (ele.needPopupContainer && _layers[MapLayerDef.POPUP].contains(ele.popupContainer))
				{
					_layers[MapLayerDef.POPUP].removeChild(ele.popupContainer);
				}
			}
		}

		/**
		 *添加地图上的元素
		 * @param value 基础地图元素 BaseMapElement类型
		 * @param layerIndex 详见MapLayerDef
		 * */
		public function addElement(value:BaseMapElement, layerIndex:int):void
		{
			var layer:Sprite = _layers[layerIndex];
			var elements:Vector.<BaseMapElement>;
			switch (layerIndex)
			{
				case MapLayerDef.FRONT_ELEMENT:
					elements = _frontElements;
					break;
				case MapLayerDef.MIDDLE_ELEMENT:
					elements = _middleElements;
					break;
				case MapLayerDef.BOTTOM_ELEMENT:
					elements = _bottomElements;
					break;
			}
			value.layerIndex = layerIndex;
			addElementEvents(value);
			elements.push(value);
			if (_viewpoint)
			{
				checkInOutViewpoint(value, layer);
			}
		}

//		直接通过BaseMapElement.destroy()方法来删除地图过犹元素
//		public function removeElement(value:BaseMapElement):void
//		{
//			var ele:BaseMapElement;
//			
//			var i:int = _middleElements.indexOf(value);
//			if(i != -1)
//			{
//				ele = _middleElements.splice(i,1) as BaseMapElement;
//				if(ele.parent)
//				{
//					ele.parent.removeChild(ele);
//				}
//				ele.destroy();
//				return;
//			}
//			i = middleBottomElements.indexOf(value);
//			if(i != -1)
//			{
//				ele = middleBottomElements.splice(i,1) as BaseMapElement;
//				if(ele.parent)
//				{
//					ele.parent.removeChild(ele);
//				}
//				ele.destroy();
//			}
//		}

//		public function removeRoleById(id:int):void
//		{
//			for(var i:int=_middleElements.length-1;i>=0;i--)
//			{
//				if(_middleElements[i]._info.id == id)
//				{
//					if(layer.contains(_middleElements[i]))
//					{
//						layer.removeChild(_middleElements[i]);
//					}
//					_middleElements.splice(i,1);
//					break;
//				}
//			}
//		}

		protected function addElementEvents(ele:BaseMapElement):void
		{
			ele.addEventListener(MapElementEvent.CHANGE_XY, onMapElement);
			ele.addEventListener(MapElementEvent.DESTROY, onMapElement);
		}

		protected function removeElementEvents(ele:BaseMapElement):void
		{
			ele.removeEventListener(MapElementEvent.CHANGE_XY, onMapElement);
			ele.removeEventListener(MapElementEvent.DESTROY, onMapElement);
		}

		protected function onMapElement(event:MapElementEvent):void
		{
			var ele:BaseMapElement = event.currentTarget as BaseMapElement;
			switch (event.type)
			{
				case MapElementEvent.CHANGE_XY:
					if (_viewpoint)
					{
						checkInOutViewpoint(ele, _layers[ele.layerIndex]);
					}
					break;
				case MapElementEvent.DESTROY:
					removeElement(ele);
					break;
			}
		}

		/**
		 * 删除地图层元素
		 * */
		private function removeElement(ele:BaseMapElement):void
		{
			if (ele.parent)
			{
				ele.parent.removeChild(ele);
			}

			removeElementEvents(ele);
			var index:int = -1;
			if (ele.layerIndex == MapLayerDef.FRONT_ELEMENT)
			{
				index = _frontElements.indexOf(ele);
				if (index != -1)
				{
					_frontElements.splice(index, 1);
				}
			} else if (ele.layerIndex == MapLayerDef.MIDDLE_ELEMENT)
			{
				index = _middleElements.indexOf(ele);
				if (index != -1)
				{
					_middleElements.splice(index, 1);
				}
			} else if (ele.layerIndex == MapLayerDef.BOTTOM_ELEMENT)
			{
				index = _bottomElements.indexOf(ele);
				if (index != -1)
				{
					_bottomElements.splice(index, 1);
				}
			}
		}

		public function dispose():void
		{
			var ele:BaseMapElement;
			for each(ele in _middleElements)
			{
				if (ele.parent)
				{
					ele.parent.removeChild(ele);
				}
//				ele.destroy();
			}
			_middleElements.length = 0;

			for each(ele in _frontElements)
			{
				if (ele.parent)
				{
					ele.parent.removeChild(ele);
				}
//				ele.destroy();
			}
			_frontElements.length = 0;


			for each(ele in _bottomElements)
			{
				if (ele.parent)
				{
					ele.parent.removeChild(ele);
				}
			}
			_bottomElements.length = 0;
		}

		/**
		 * 析构
		 * */
		public function destroy():void
		{
			dispose();
			_middleElements = null;
			_bottomElements = null;
			_frontElements = null;
			_layers.length = 0;
			_layers = null;
			_viewpoint = null;
		}
	}
}