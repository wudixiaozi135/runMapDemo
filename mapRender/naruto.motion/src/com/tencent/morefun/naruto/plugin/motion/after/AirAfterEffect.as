package com.tencent.morefun.naruto.plugin.motion.after
{
	import com.tencent.morefun.framework.log.logger;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;

	public class AirAfterEffect extends BaseAfterEffect
	{
		private var bm:Bitmap;
		private var bmd:BitmapData;
		private var maskmc:MovieClip;
		
		public function AirAfterEffect()
		{
			super();
		}
		
		public function init(arg:Object):void
		{
			var args:Array;
			var pt:Point;
			var width:Number;
			var height:Number;
			var x:Number;
			var y:Number;
			var scale:Boolean;
			
			bm = new Bitmap();
			
			maskmc = arg[0];
			width = arg[1];
			height = arg[2];
			pt = arg[3];
			scale = arg[4];
			x = pt.x;
			y = pt.y;
			
			bmd = new BitmapData(width, height, true);
			
			addChild(maskmc);
			maskmc.scene.addChild(bm);
			maskmc.airmask.x = x;
			maskmc.airmask.y = y;
			if(scale)
			{
				(maskmc.airmask as MovieClip).scaleX = 1;
			}
			else
			{
				(maskmc.airmask as MovieClip).scaleX = -1;
			}
			
			maskmc.addEventListener(Event.COMPLETE, onAirEffectComplete);
		}
		
		private function onAirEffectComplete(evt:Event):void
		{
			this.complete();
		}
		
		override public function end():void
		{
			bmd.dispose();
			maskmc.removeEventListener(Event.COMPLETE, onAirEffectComplete);
			removeChild(maskmc);
		}
		
		override public function render(scene:Sprite):void
		{
			bmd.draw(scene);
			bm.bitmapData = bmd;
		}
	
																	
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			bm = null;
			bmd = null;
			maskmc = null;
		}
	}
}