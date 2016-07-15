package com.tencent.morefun.naruto.plugin.newplot.views
{
	import com.tencent.morefun.naruto.plugin.newplot.cfgs.NewPlotConfig;
	import com.tencent.morefun.naruto.plugin.newplot.controls.ActorControl;
	import com.tencent.morefun.naruto.plugin.newplot.controls.BorderControl;
	import com.tencent.morefun.naruto.plugin.newplot.controls.CameraControl;
	import com.tencent.morefun.naruto.plugin.newplot.controls.DeepControl;
	import com.tencent.morefun.naruto.plugin.newplot.controls.MapControl;
	import com.tencent.morefun.naruto.plugin.newplot.controls.UnitControl;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	import map.def.MapLayerDef;
	
	[Event(name="complete", type="flash.events.Event")]
	public class NewPlot extends Sprite
	{
		private var _mapControl:MapControl;
		private var _actorControl:ActorControl;
		private var _cameraControl:CameraControl;
		private var _unitControl:UnitControl;
		private var _deepControl:DeepControl;
		private var _borderControl:BorderControl;
		
		public var id:int;
		public var npcId:int;
		public var config:NewPlotConfig;
		public var hasBattleUnit:Boolean = false;
		
		public var maskLayer:Sprite;
//		public var borderLayer:Sprite;
//		public var popupLayer:Sprite;
//		public var frontLayer:Sprite;
//		public var middleLayer:Sprite;
//		public var backgroundLayer:Sprite;
		public var layers:Vector.<Sprite>;
		
		
		public function NewPlot(id:int,npcId:int)
		{
			super();
			this.id = id;
			this.npcId = npcId;
			init();
		}
		
		public function get unitControl():UnitControl
		{
			return _unitControl;
		}
		
		public function get mapControl():MapControl
		{
			return _mapControl;
		}
		
		public function get cameraControl():CameraControl
		{
			return _cameraControl;
		}
		
		public function get actorControl():ActorControl
		{
			return _actorControl;
		}
		
		public function get deepControl():DeepControl
		{
			return _deepControl;
		}
		
		public function get borderControl():BorderControl
		{
			return _borderControl;
		}

		private function init():void
		{
//			backgroundLayer = new Sprite();
//			addChild(backgroundLayer);
//			
//			middleLayer = new Sprite();
//			addChild(middleLayer);
//			
//			frontLayer = new Sprite();
//			addChild(frontLayer);
//			
//			popupLayer = new Sprite();
//			addChild(popupLayer);
//			
//			borderLayer = new Sprite();
//			addChild(borderLayer);
			
			layers = new Vector.<Sprite>(MapLayerDef.COUNT,true);
			for(var i:int=0;i<MapLayerDef.COUNT;i++)
			{
				layers[i] = new Sprite();
				addChild(layers[i]);
			}
			
			maskLayer = new Sprite();
			_mapControl = new MapControl(layers);
			_borderControl = new BorderControl(maskLayer);
			_actorControl = new ActorControl(layers[MapLayerDef.MIDDLE_ELEMENT],layers[MapLayerDef.POPUP]);
			_cameraControl = new CameraControl(this);
			_deepControl = new DeepControl(layers);
			_unitControl = new UnitControl();
			_unitControl.addEventListener(Event.COMPLETE,onUnitControl);
		}
		
		protected function onUnitControl(event:Event):void
		{
			switch(event.type)
			{
				case Event.COMPLETE:
					dispatchEvent(event.clone());
					break;
			}
		}
		
		public function startup():void
		{
			_borderControl.startup();
			_deepControl.startup();
			_unitControl.startup(config.startUnitId);
		}
		
		public function destroy():void
		{
			if(maskLayer.parent)
			{
				maskLayer.parent.removeChild(maskLayer);
			}
			if(_mapControl)
			{
				_mapControl.destroy();
				_mapControl = null;
			}
			if(_actorControl)
			{
				_actorControl.destroy();
				_actorControl = null;
			}
			if(_cameraControl)
			{
				_cameraControl.destroy();
				_cameraControl = null;
			}
			if(_deepControl)
			{
				_deepControl.destroy();
				_deepControl = null;
			}
			if(_unitControl)
			{
				_unitControl.destroy();
				_unitControl = null;
			}
			if(_borderControl)
			{
				_borderControl.destroy();
				_borderControl = null;
			}
		}
	}
}