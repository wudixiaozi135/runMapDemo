package com.tencent.morefun.naruto.plugin.motion.manager.scene.view
{
	import flash.display.Sprite;
	import flash.events.Event;

	public class BaseItemSceneUI extends Sprite
	{
		private var _ninjaX:int;
		private var _ninjaY:int;
		private var _uiX:int;
		private var _uiY:int;
		private var _offsetY:int;
		private var _enableOffset:Boolean;
		
		public function BaseItemSceneUI()
		{
			super();
		}
		
		public function get uiY():int
		{
			return _uiY;
		}

		public function set uiY(value:int):void
		{
			_uiY = value;
			updatePosition();
		}

		public function get uiX():int
		{
			return _uiX;
		}

		public function set uiX(value:int):void
		{
			_uiX = value;
			updatePosition();
		}

		public function set ninjaX(value:int):void
		{
			_ninjaX = value;
		}
		
		public function get ninjaX():int
		{
			return _ninjaX;
		}
		
		public function set ninjaY(value:int):void
		{
			_ninjaY = value;
		}
		
		public function get ninjaY():int
		{
			return _ninjaY;
		}
		
		public function updatePosition():void
		{
			this.x = _uiX;
			this.y = _uiY + _offsetY;
		}
		
		public function set enableOffset(value:Boolean):void
		{
			_enableOffset = value;
		}
		
		public function get enableOffset():Boolean
		{
			return _enableOffset;
		}
		
		public function set offsetY(value:int):void
		{
			_offsetY = value;
			updatePosition();
		}
		
		public function get offsetY():int
		{
			return _offsetY;
		}
		
		public function get baseY():int
		{
			return _uiY + offsetY;
		}
		
		public function notifyResize():void
		{
			this.dispatchEvent(new Event(Event.RESIZE));
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}