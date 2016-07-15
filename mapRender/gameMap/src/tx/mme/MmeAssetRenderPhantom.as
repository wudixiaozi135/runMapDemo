package tx.mme
{

	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Shape;
	import flash.geom.ColorTransform;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;

	public class MmeAssetRenderPhantom extends Shape
	{
		private var dAlpha:int;
		private var bd:BitmapData;
		
		public function MmeAssetRenderPhantom(display:DisplayObject, color:uint=0xFF0000FF, dAlpha:int=5)
		{
			this.dAlpha = dAlpha;
			
			draw(display,color);
		}
		
		private function draw(display:DisplayObject,color:uint):void
		{
			var bound:Rectangle = display.getBounds(null);
			var fx:int = 0;
			if(bound.x != Math.floor(bound.x))
			{
				fx = 1;
				bound.x = Math.floor(bound.x);
			}
			var fy:int = 0;
			if(bound.y != Math.floor(bound.y))
			{
				fy = 1;
				bound.y = Math.floor(bound.y);
			}
			bound.width = Math.ceil(bound.width) + fx;
			bound.height = Math.ceil(bound.height) + fy;
			
			bd = new BitmapData(bound.width,bound.height,true,0);
			
			var a:Number = (color>>24)&0xFF / 0xFF;
			var r:int = (color>>16)&0xFF;
			var g:int = (color>>8)&0xFF;
			var b:int = (color)&0xFF;
			var ct:ColorTransform = new ColorTransform();
//			ct.color = color;
//			ct.alphaOffset = -100;
			ct.redMultiplier = 1-a;
			ct.greenMultiplier = 1-a;
			ct.blueMultiplier = 1-a;
//			ct.alphaMultiplier = a;
			ct.redOffset = r*a;
			ct.greenOffset = g*a;
			ct.blueOffset = b*a;
//			ct.alphaOffset = a;
			
			bd.draw(display,new Matrix(1,0,0,1,-bound.x,-bound.y),ct);
			
			graphics.beginBitmapFill(bd,new Matrix(1,0,0,1,bound.x,bound.y));
			graphics.drawRect(bound.x,bound.y,bd.width,bd.height);
//			graphics.drawRect(bound.left,bound.top,bd.width,bd.height);
			graphics.endFill();
			
			this.x = display.x;
			this.y = display.y;
			
//			this.x = -bound.left;
//			this.y = -bound.top;
			this.scaleX = display.scaleX;
			this.scaleY = display.scaleY;
			this.rotation = display.rotation;
		}
		
		public function update():void
		{
			alpha -= dAlpha * 0.01;
		}
		
		public function destroy():void
		{
			if(bd)
			{
				bd.dispose();
				bd = null;
			}
			graphics.clear();
			if(parent)
			{
				parent.removeChild(this);
			}
		}
	}
}