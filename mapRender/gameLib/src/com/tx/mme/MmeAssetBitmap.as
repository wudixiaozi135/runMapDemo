package com.tx.mme
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.PixelSnapping;
	import flash.display.Sprite;
	import flash.geom.ColorTransform;
	import flash.geom.Point;

	/**
	 * 渲染资源位图
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	internal class MmeAssetBitmap extends Sprite
	{
		private var _hitTestPointTemp:Point;			//碰撞检测点
		private var _colorTranform:ColorTransform;	//颜色转换

		protected var bpd:BitmapData;			//位图BitmapData
		protected var bp:Bitmap;				//位图Bitmap

		/**
		 * 构造函数
		 * @param bpd        BitmapData
		 * @param offsetX    x偏移量
		 * @param offsetY    y偏移量
		 *
		 */
		public function MmeAssetBitmap(bpd:BitmapData = null, offsetX:Number = 0, offsetY:Number = 0)
		{
			this.bp = new Bitmap(null, "auto", true);
			this.addChild(this.bp);
			this.setData(bpd, offsetX, offsetY);
		}

		/**
		 * 获取转换颜色
		 * @return    转换颜色
		 *
		 */
		public function get colorTransform():ColorTransform
		{
			return _colorTranform || this.transform.colorTransform;
		}

		/**
		 * 设置转换颜色
		 * @param newct
		 *
		 */
		public function set colorTransform(newct:ColorTransform):void
		{
			if (_colorTranform == null || newct == null
					|| _colorTranform.color != newct.color
					|| _colorTranform.alphaMultiplier != newct.alphaMultiplier
					|| _colorTranform.alphaOffset != newct.alphaOffset
					|| _colorTranform.redMultiplier != newct.redMultiplier
					|| _colorTranform.redOffset != newct.redOffset
					|| _colorTranform.greenMultiplier != newct.greenMultiplier
					|| _colorTranform.greenOffset != newct.greenOffset
					|| _colorTranform.blueMultiplier != newct.blueMultiplier
					|| _colorTranform.blueOffset != newct.blueOffset
			)
			{
				this.transform.colorTransform = newct;
				_colorTranform = newct;
			}
		}

		/**
		 * 设置位图数据
		 * @param bpd        BitmapData
		 * @param offsetX    x偏移量
		 * @param offsetY    y偏移量
		 *
		 */
		internal function setData(bpd:BitmapData, offsetX:Number, offsetY:Number):void
		{
			if (this.bpd == bpd)
			{
				return;
			}
			this.bpd = bpd;
			this.bp.bitmapData = bpd;
			this.bp.pixelSnapping = PixelSnapping.ALWAYS;
			this.bp.smoothing = true;
			this.bp.x = offsetX;
			this.bp.y = offsetY;
		}

		/**
		 * 碰撞检测
		 * @param x            碰撞点x坐标
		 * @param y            碰撞点y坐标
		 * @param shapeFlag
		 * @return            碰撞=true,未碰撞=false
		 *
		 */
		override public function hitTestPoint(x:Number, y:Number, shapeFlag:Boolean = false):Boolean
		{
			if (_hitTestPointTemp == null)
			{
				_hitTestPointTemp = new Point();
			}
			_hitTestPointTemp.setTo(x, y);
			_hitTestPointTemp = this.bp.globalToLocal(_hitTestPointTemp);

			var px:uint = this.bpd.getPixel32(_hitTestPointTemp.x, _hitTestPointTemp.y);
			return px >> 24 != 0;
		}

		/**
		 * 销毁
		 *
		 */
		public function destroy():void
		{
			if (this.parent)
			{
				this.parent.removeChild(this);
			}
			if (this.bp)
			{
				this.bp.bitmapData = null;
				this.bp = null;
			}
			_colorTranform = null;
			this.bpd = null;
		}
	}
}