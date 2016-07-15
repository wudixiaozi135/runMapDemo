package map.element
{
	import com.tencent.morefun.naruto.i18n.I18n;

	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.filters.GlowFilter;
	import flash.geom.Rectangle;
	
	import map.events.MapElementEvent;
	
	
	[Event(name="changeX", type="map.events.MapElementEvent")]
	[Event(name="changeY", type="map.events.MapElementEvent")]
	[Event(name="inViewpoint", type="map.events.MapElementEvent")]
	[Event(name="outViewpoint", type="map.events.MapElementEvent")]
	[Event(name="destroy", type="map.events.MapElementEvent")]
	[Event(name="mouseOverElement", type="map.events.MapElementEvent")]
	[Event(name="mouseOutElement", type="map.events.MapElementEvent")]
	[Event(name="mouseDownElement", type="map.events.MapElementEvent")]
	[Event(name="contacted", type="map.events.MapElementEvent")]
    import com.tencent.morefun.naruto.i18n.I18n;
	public class BaseMapElement extends Sprite
	{
		protected var _isDestroyed:Boolean = false;
		protected var _isInViewPoint:Boolean = false;
		protected var _popupContainer:Sprite;
		public var layerIndex:int = -1;
		
		public function BaseMapElement()
		{
			super();
			
			if(mouseEnabled && mouseOverFilter)
			{
				addEventListener(MapElementEvent.MOUSE_OVER_ELEMENT, onMouseOverElement);
				addEventListener(MapElementEvent.MOUSE_OUT_ELEMENT, onMouseOutElement);
			}
			
			if(needPopupContainer)
			{
				_popupContainer = new Sprite();
			}
		}
		
		protected function onMouseOverElement(event:MapElementEvent):void
		{
			this.filters = [mouseOverFilter];
		}
		
		protected function onMouseOutElement(event:MapElementEvent):void
		{
			this.filters = [];
		}
		
		protected function get mouseOverFilter():GlowFilter
		{
			return null;
		}
		
		public function get needPopupContainer():Boolean
		{
			return false;
		}
		
		/**
		 * [Deprecated(message="为性能考虑请使用setXY代替该方法",replacement="setXY(x:int,y:int):void",since="2014.2.20")]
		 */
		override public function set x(value:Number):void
		{
//			super.x = value;
			throw new Error(I18n.lang("as_include_1451031572_3318"));
		}
		/**
		 * [Deprecated(message="为性能考虑请使用setXY代替该方法",replacement="setXY(x:int,y:int):void",since="2014.2.20")]
		 */
		override public function set y(value:Number):void
		{
//			super.y = value;
			throw new Error(I18n.lang("as_include_1451031572_3319"));
		}
		public function setXY(x:int,y:int):void
		{
			super.x = x;
			super.y = y;
			if(_popupContainer)
			{
				_popupContainer.x = x;
				_popupContainer.y = y;
			}
			dispatch(MapElementEvent.CHANGE_XY);
		}
		
		/**
		 * 进入视野 
		 */
		public function inViewPoint(needDispatchEvent:Boolean=true):void
		{
			_isInViewPoint = true;
			needDispatchEvent && dispatch(MapElementEvent.IN_VIEWPOINT);
		}
		
		/**
		 * 离开视野
		 */
		public function outViewPoint(needDispatchEvent:Boolean=true):void
		{
			_isInViewPoint = false;
			needDispatchEvent && dispatch(MapElementEvent.OUT_VIEWPOINT);
		}
		
		public function get isInViewPoint():Boolean
		{
			return _isInViewPoint;
		}
		
		public function get isDestroyed():Boolean
		{
			return _isDestroyed;
		}
		
		public function get popupContainer():Sprite
		{
			return _popupContainer;
		}
		
		public function addPopup(dobj:DisplayObject):void
		{
			if(!needPopupContainer)
			{
				return;
			}

            if (!_popupContainer.contains(dobj))
                _popupContainer.addChild(dobj);
		}
		
		public function removePopup(dobj:DisplayObject):void
		{
			if(!needPopupContainer)
			{
				return;
			}

            if (_popupContainer.contains(dobj))
                _popupContainer.removeChild(dobj);
		}
		
//		public function hitTestMouse():Boolean
//		{
//			var globalPoint:Point = localToGlobal(new Point(mouseX,mouseY));
//			return mouseEnabled && hitTestPoint(globalPoint.x,globalPoint.y,false);
//		}
		
		public function dispatch(type:String):void
		{
			if(hasEventListener(type))
			{
				dispatchEvent(new MapElementEvent(type));
			}
		}
		
		public function destroy(needDispatchEvent:Boolean=true):void
		{
			removeEventListener(MapElementEvent.MOUSE_OVER_ELEMENT, onMouseOverElement);
			removeEventListener(MapElementEvent.MOUSE_OUT_ELEMENT, onMouseOutElement);
			
			if(_popupContainer)
			{
				_popupContainer.removeChildren();
				if(_popupContainer.parent)
				{
					_popupContainer.parent.removeChild(_popupContainer);
				}
				_popupContainer = null;
			}
			_isDestroyed = true;
			needDispatchEvent && dispatch(MapElementEvent.DESTROY);
			layerIndex = -1;
		}
		
		protected var __bound:Rectangle;
		override public function getBounds(targetCoordinateSpace:DisplayObject):Rectangle
		{
//			if(__bound==null || __bound.isEmpty())
//			{
				__bound = super.getBounds(targetCoordinateSpace);
//			}
			return __bound;
		}
		
	}
}