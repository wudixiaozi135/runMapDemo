package com.tencent.morefun.naruto.plugin.newplot.controls
{
	import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
	
	import flash.display.BitmapData;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;

	public class BorderControl
	{
		private var layer:Sprite;
		
//		private var topBar:Shape;
		private var bottomBar:Shape;
		
		private static const BD:BitmapData = new BorderBitmapData();
		private var matrix:Matrix = new Matrix();
		
		private var isBlackScreen:Boolean;
		
		public function BorderControl(layer:Sprite)
		{
			this.layer = layer;
			
			matrix.scale(1,-1);
			
//			topBar = new Shape();
//			layer.addChild(topBar);
//			
			bottomBar = new Shape();
			layer.addChild(bottomBar);
			
			update();
		}
		
		public function startup():void
		{
//			TweenLite.from(topBar,1,{y:-topBar.height});
//			TweenLite.from(bottomBar,1,{y:bottomBar.y+bottomBar.height});
			LayerManager.singleton.stage.addEventListener(Event.RESIZE,onResize);
		}
		
		protected function onResize(event:Event):void
		{
			update();
		}
		
		public function setVisible(value:Boolean):void
		{
//			topBar.visible = value;
			bottomBar.visible = value;
		}
		
		private function update():void
		{
//			topBar.graphics.clear();
//			topBar.graphics.beginBitmapFill(BD);
//			topBar.graphics.drawRect(0,0,LayoutManager.stageWidth,BD.height);
//			
			bottomBar.graphics.clear();
			bottomBar.graphics.beginBitmapFill(BD,matrix);
			bottomBar.graphics.drawRect(0,0,LayoutManager.stageWidth,BD.height);
//			
			bottomBar.y = LayoutManager.stageHeight - bottomBar.height;
			
			this.blackScreen(this.isBlackScreen);
		}
		
		public function destroy():void
		{
			LayerManager.singleton.stage.removeEventListener(Event.RESIZE,onResize);
			
			matrix = null;
//			if(topBar.parent)
//			{
//				topBar.parent.removeChild(topBar);
//			}
//			topBar.graphics.clear();
//			topBar = null;
			if(bottomBar.parent)
			{
				bottomBar.parent.removeChild(bottomBar);
			}
			bottomBar.graphics.clear();
			bottomBar = null;
		}
		
		public function blackScreen(isShow:Boolean):void
		{
			if (this.isBlackScreen == isShow)
			{
				return;
			}
			this.isBlackScreen = isShow;
			this.layer.graphics.clear();
			if (isShow)
			{
				this.layer.graphics.beginFill(0);
				this.layer.graphics.drawRect(0, 0, LayerManager.singleton.stage.stageWidth, LayerManager.singleton.stage.stageHeight);
				this.layer.graphics.endFill();
			}
		}
		
	}
}