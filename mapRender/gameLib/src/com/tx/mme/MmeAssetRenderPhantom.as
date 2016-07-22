package com.tx.mme
{
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Shape;
	import flash.geom.ColorTransform;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;

	/**
	 * 幻影类
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class MmeAssetRenderPhantom extends Shape
	{
		private var _dAlpha:int;		//幻影透明度
		private var _bd:BitmapData;	//位图

		/**
		 * 构造函数
		 * @param display    需要添加幻影的对象
		 * @param color        颜色值
		 * @param dAlpha    透明度
		 *
		 */
		public function MmeAssetRenderPhantom(display:DisplayObject, color:uint = 0xFF0000FF, dAlpha:int = 5)
		{
			_dAlpha = dAlpha;

			draw(display, color);
		}

		/**
		 * 绘制幻影
		 * @param display    需要添加幻影的对象
		 * @param color        颜色值
		 *
		 */
		private function draw(display:DisplayObject, color:uint):void
		{
			var bound:Rectangle = display.getBounds(null);
			var fx:int = 0;
			if (bound.x != Math.floor(bound.x))
			{
				fx = 1;
				bound.x = Math.floor(bound.x);
			}
			var fy:int = 0;
			if (bound.y != Math.floor(bound.y))
			{
				fy = 1;
				bound.y = Math.floor(bound.y);
			}
			bound.width = Math.ceil(bound.width) + fx;
			bound.height = Math.ceil(bound.height) + fy;

			_bd = new BitmapData(bound.width, bound.height, true, 0);

			var a:Number = (color >> 24) & 0xFF / 0xFF;
			var r:int = (color >> 16) & 0xFF;
			var g:int = (color >> 8) & 0xFF;
			var b:int = (color) & 0xFF;
			var ct:ColorTransform = new ColorTransform();
//			ct.color = color;
//			ct.alphaOffset = -100;
			ct.redMultiplier = 1 - a;
			ct.greenMultiplier = 1 - a;
			ct.blueMultiplier = 1 - a;
//			ct.alphaMultiplier = a;
			ct.redOffset = r * a;
			ct.greenOffset = g * a;
			ct.blueOffset = b * a;
//			ct.alphaOffset = a;

			_bd.draw(display, new Matrix(1, 0, 0, 1, -bound.x, -bound.y), ct);

			graphics.beginBitmapFill(_bd, new Matrix(1, 0, 0, 1, bound.x, bound.y));
			graphics.drawRect(bound.x, bound.y, _bd.width, _bd.height);
//			graphics.drawRect(bound.left,bound.top,_bd.width,_bd.height);
			graphics.endFill();

			this.x = display.x;
			this.y = display.y;

//			this.x = -bound.left;
//			this.y = -bound.top;
			this.scaleX = display.scaleX;
			this.scaleY = display.scaleY;
			this.rotation = display.rotation;
		}

		/**
		 * 刷新透明度
		 *
		 */
		public function update():void
		{
			alpha -= _dAlpha * 0.01;
		}

		/**
		 * 销毁
		 *
		 */
		public function destroy():void
		{
			if (_bd)
			{
				_bd.dispose();
				_bd = null;
			}
			this.graphics.clear();
			if (this.parent)
			{
				this.parent.removeChild(this);
			}
		}
	}
}