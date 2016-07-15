package tx.mme
{

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.PixelSnapping;
	import flash.display.Sprite;
	import flash.geom.ColorTransform;
	import flash.geom.Point;

	internal class MmeAssetBitmap extends Sprite
	{
		protected var bpd:BitmapData;
		protected var bp:Bitmap;
		
		public function MmeAssetBitmap(bpd:BitmapData, offsetX:Number, offsetY:Number)
		{
			bp = new Bitmap(null,"auto",true);
			addChild(bp);
			setData(bpd,offsetX,offsetY);
		}
		
		internal function setData(bpd:BitmapData,offsetX:Number,offsetY:Number):void
		{
			if(this.bpd == bpd)
			{
				return;
			}
			this.bpd = bpd;
			bp.bitmapData = bpd;
			bp.pixelSnapping = PixelSnapping.ALWAYS;
			bp.smoothing = true;
			bp.x = offsetX;
			bp.y = offsetY;
		}
		private var hitTestPointTemp:Point;
		override public function hitTestPoint(x:Number,y:Number,shapeFlag:Boolean=false):Boolean
		{
			if(hitTestPointTemp==null)
			{
				hitTestPointTemp = new Point();
			}
			hitTestPointTemp.setTo(x,y);
			hitTestPointTemp = bp.globalToLocal(hitTestPointTemp);
			
			var px:uint = bpd.getPixel32(hitTestPointTemp.x,hitTestPointTemp.y);
			return px>>24!=0;
		}
		
		public function destroy():void
		{
			if(parent)
			{
				parent.removeChild(this);
			}
			if(bp)
			{
				bp.bitmapData = null;
				bp = null;
			}
			_colorTranform = null;
			bpd = null;
		}
		private var _colorTranform:ColorTransform;
		public function get colorTransform():ColorTransform
		{
			return _colorTranform || transform.colorTransform;
		}
		public function set colorTransform(newct:ColorTransform):void
		{
			if(_colorTranform == null || newct == null
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
				transform.colorTransform = newct;
				_colorTranform = newct;
			}
		}
	}
}