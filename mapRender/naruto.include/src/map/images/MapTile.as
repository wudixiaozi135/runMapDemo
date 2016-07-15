package map.images
{
	import com.greensock.TweenLite;
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.framework.net.LoadManager;
	import com.tencent.morefun.framework.net.pub;
	import com.tencent.morefun.framework.net.def.LoaderDef;
	import com.tencent.morefun.naruto.util.MathUtil;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObjectContainer;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import map.data.MapBgImgInfo;
	import map.data.MapFgImgInfo;
	
	public class MapTile extends Bitmap 
	{
		private static const _loader:LoadManager = LoadManager.getManager(LoaderDef.MAP);
		private static const tempPoint:Point = new Point(); // 计算前景时用
		private static const tempRectange:Rectangle = new Rectangle();// 计算前景时用
		
		private var _cfg:MapBgImgInfo;
		private var _frontInfo:MapFgImgInfo;
		
		private var _parent:DisplayObjectContainer;
		private var frontMask:Bitmap;
		private var frontLayer:Sprite;
		private var alphaBitmapData:BitmapData;
		private var thumbBitmap:Bitmap;
		protected var isDestroyed:Boolean;
		protected var hasStart:Boolean;
		
		public function MapTile()
		{
		}
		
		public function initialize(cfg:MapBgImgInfo, frontCfg:MapFgImgInfo, parent:DisplayObjectContainer, frontLayer:Sprite=null,
								   alphaBitmapData:BitmapData=null, thumbBitmap:Bitmap=null):void
		{
			this.isDestroyed = false;
			_cfg = cfg;
			_frontInfo = frontCfg;
			_parent = parent;
//			name = ""+cfg.id+","+cfg.x+","+cfg.y;
			this.frontLayer = frontLayer;
			this.alphaBitmapData = alphaBitmapData;
			if (this.alphaBitmapData)
			{
//				this.frontMask = new Bitmap();
			}
			this.thumbBitmap = thumbBitmap;
			
			if (_loader.pub::log == null)
			{
				_loader.pub::log = logger.output;
			}
		}
		
		public function get cfg():MapBgImgInfo
		{
			return _cfg;
		}
		
		public function get url():String
		{
			return this._cfg.url;
		}
		
		public function inViewpoint():void
		{
			if (this.thumbBitmap && !this.thumbBitmap.parent)
			{
				this._parent.addChild(this.thumbBitmap);
			}
			this._parent.addChild(this);
			if (this.frontMask && !this.frontMask.parent)
			{
				this.frontLayer.addChild(this.frontMask);
			}
			
			if (!this.hasStart)
			{
				this.hasStart = true;
				_loader.loadLazyTask(this._cfg.url, processImageRender);
			}
		}
		
		/**
		 * 渲染地图图片展示
		 */
		private function processImageRender(image:Loader, url:String, tween:Boolean = true):void
		{
			if (url != this._cfg.url) return;
			if (!image) return;
			
			var data:BitmapData;//
			if(image.contentLoaderInfo.content is Bitmap)
			{
				data = (image.contentLoaderInfo.content as Bitmap).bitmapData;
			}
			if(data == null)
			{
				return;
			}
			this.bitmapData = data;
			
			if (tween)
			{
				this.alpha = 0;
				TweenLite.killTweensOf(this);
				TweenLite.to(this, 0.2, {alpha:1, onComplete:destroyThumb});
			}
			
			if(_frontInfo)
			{
				this.frontMask = new Bitmap();
			}
			
			if (this.frontMask)
			{
				MapTile.tempPoint.setTo(x + _frontInfo.offsetX, y + _frontInfo.offsetY);
				MapTile.tempRectange.setTo(_frontInfo.offsetX, _frontInfo.offsetY, _frontInfo.width, _frontInfo.height);
				
				this.frontMask.x = x + _frontInfo.offsetX;
				this.frontMask.y = y + _frontInfo.offsetY;
				
				
				var frontBitmapData:BitmapData = new BitmapData(_frontInfo.width, _frontInfo.height, true, 0);
				frontBitmapData.copyPixels(data, MapTile.tempRectange, MathUtil.ZERO_POINT, this.alphaBitmapData, MapTile.tempPoint);
				this.frontMask.bitmapData = frontBitmapData;
				
				if (this.parent && !this.frontMask.parent)
				{
					this.frontLayer.addChild(this.frontMask);
				}
			}
		}
		
		private function destroyThumb():void
		{
			if (this.thumbBitmap)
			{
				if(this.thumbBitmap.parent)
				{
					this.thumbBitmap.parent.removeChild(this.thumbBitmap);
				}
				if(this.thumbBitmap.bitmapData)
				{
					this.thumbBitmap.bitmapData.dispose();
					this.thumbBitmap.bitmapData = null;
				}
				this.thumbBitmap = null;
			}
		}
		
		public function outViewpoint():void
		{
			if (this.thumbBitmap && this.thumbBitmap.parent)
			{
				this.thumbBitmap.parent.removeChild(this.thumbBitmap);
			}
			if (this.parent)
			{
				this.parent.removeChild(this);
			}
			if (this.frontMask && this.frontMask.parent)
			{
				this.frontMask.parent.removeChild(this.frontMask);
			}
		}
		
		public function destroy():void
		{
			if (this.isDestroyed) return;
			
			this.outViewpoint();
			_loader.killCompleteCallback(this._cfg.url, processImageRender);
			_loader.releaseAsset(this._cfg.url);
			this.hasStart = false;
			
			this.destroyThumb();
			if(this.frontMask)
			{
				if(this.frontMask.parent)
				{
					this.frontMask.parent.removeChild(this.frontMask);
				}
				if(this.frontMask.bitmapData)
				{
					this.frontMask.bitmapData.dispose();
					this.frontMask.bitmapData = null;
				}
				this.frontMask = null;
			}
			this.alphaBitmapData = null;
			this.isDestroyed = true;
			this.frontLayer = null;
			this._cfg = null;
			this._frontInfo = null;
			this._parent = null;
			this.bitmapData = null;
		}
		
	}
}