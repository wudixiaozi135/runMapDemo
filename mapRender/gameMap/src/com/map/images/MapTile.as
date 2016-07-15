package com.map.images
{
	import com.greensock.TweenLite;
	import com.map.data.MapBgImgInfo;
	import com.map.data.MapFgImgInfo;

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObjectContainer;
	import flash.display.Loader;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;

	/*
	 * 地图的平铺块
	 * */
	public class MapTile extends Bitmap
	{
		private var _loader:Loader = new Loader();

		private static const tempPoint:Point = new Point(); // 计算前景时用
		private static const tempRectange:Rectangle = new Rectangle();// 计算前景时用

		private var _cfg:MapBgImgInfo;
		private var _frontInfo:MapFgImgInfo;
		private var _parent:DisplayObjectContainer;
		private var _frontMask:Bitmap;
		private var _frontLayer:Sprite;
		private var _alphaBitmapData:BitmapData;
		private var _thumbBitmap:Bitmap;
		protected var isDestroyed:Boolean;
		protected var hasStart:Boolean;

		private var _redBorder:Shape = new Shape();

		public function MapTile()
		{
			_redBorder.visible = false;
		}

		/**
		 * @param cfg 地图背景配置
		 * @param frontCfg 地图前景配置
		 * @param parent 地图块父容器
		 * @param frontLayer实际是地图块前面的半透明块容器
		 * @param alphaBitmapData 地图半透明层
		 * @param thumbBitmap 马赛克图
		 * */
		public function initialize(cfg:MapBgImgInfo, frontCfg:MapFgImgInfo, parent:DisplayObjectContainer, frontLayer:Sprite = null,
								   alphaBitmapData:BitmapData = null, thumbBitmap:Bitmap = null):void
		{
			this.isDestroyed = false;
			_cfg = cfg;
			_frontInfo = frontCfg;
			_parent = parent;
//			name = ""+cfg.id+","+cfg.x+","+cfg.y;

			this._frontLayer = frontLayer;
			this._alphaBitmapData = alphaBitmapData;

			if (this._alphaBitmapData)
			{
//				this._frontMask = new Bitmap();
			}
			this._thumbBitmap = thumbBitmap;
		}

		public function get cfg():MapBgImgInfo
		{
			return _cfg;
		}

		public function get url():String
		{
			return this._cfg.url;
		}

		/***
		 * 在地图可视范围内显示
		 */
		public function inViewpoint():void
		{
			if (this._thumbBitmap && !this._thumbBitmap.parent)
			{
				this._parent.addChild(this._thumbBitmap);
			}
			this._parent.addChild(this);
			this._parent.addChild(_redBorder);
			_redBorder.graphics.clear();
			_redBorder.graphics.lineStyle(2, 0xff0000);
			_redBorder.graphics.drawRect(0, 0, width, height);
			_redBorder.graphics.endFill();
			_redBorder.x = x;
			_redBorder.y = y;

			if (this._frontMask && !this._frontMask.parent)
			{
				this._frontLayer.addChild(this._frontMask);
			}
			if (!this.hasStart)
			{
				this.hasStart = true;

				_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function ():void
				{
					_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
					processImageRender(_loader, url);
				});
				_loader.load(new URLRequest(url));
			}
		}

		/***
		 * 渲染地图图片展示
		 */
		private function processImageRender(image:Loader, url:String, tween:Boolean = true):void
		{
			if (url != this.url) return;
			if (!image) return;

			var data:BitmapData;//
			if (image.contentLoaderInfo.content is Bitmap)
			{
				data = (image.contentLoaderInfo.content as Bitmap).bitmapData;
			}
			if (data == null)
			{
				return;
			}
			this.bitmapData = data;

			if (tween)
			{
				this.alpha = 0;
				TweenLite.killTweensOf(this);
				TweenLite.to(this, 0.2, {alpha: 1, onComplete: destroyThumb});
			}

			if (_frontInfo)
			{
				this._frontMask = new Bitmap();
			}

			if (this._frontMask)
			{
				MapTile.tempPoint.setTo(x + _frontInfo.offsetX, y + _frontInfo.offsetY);
				MapTile.tempRectange.setTo(_frontInfo.offsetX, _frontInfo.offsetY, _frontInfo.width, _frontInfo.height);

				this._frontMask.x = x + _frontInfo.offsetX;
				this._frontMask.y = y + _frontInfo.offsetY;

				var frontBitmapData:BitmapData = new BitmapData(_frontInfo.width, _frontInfo.height, true, 0);
				this._alphaBitmapData.lock();
				frontBitmapData.copyPixels(data, MapTile.tempRectange, new Point(), this._alphaBitmapData, MapTile.tempPoint);
				this._alphaBitmapData.unlock();
				this._frontMask.bitmapData = frontBitmapData;

				if (this.parent && !this._frontMask.parent)
				{
					this._frontLayer.addChild(this._frontMask);
				}
			}
		}

		/***
		 * 销毁地图的马赛克效果图
		 * */
		private function destroyThumb():void
		{
			if (this._thumbBitmap)
			{
				if (this._thumbBitmap.parent)
				{
					this._thumbBitmap.parent.removeChild(this._thumbBitmap);
				}
				if (this._thumbBitmap.bitmapData)
				{
					this._thumbBitmap.bitmapData.dispose();
					this._thumbBitmap.bitmapData = null;
				}
				this._thumbBitmap = null;
			}
		}

		/***
		 * 可视范围外显示
		 * */
		public function outViewpoint():void
		{
			if (this._thumbBitmap && this._thumbBitmap.parent)
			{
				this._thumbBitmap.parent.removeChild(this._thumbBitmap);
			}
			if (this.parent)
			{
				this.parent.removeChild(_redBorder);
				this.parent.removeChild(this);
			}
			if (this._frontMask && this._frontMask.parent)
			{
				this._frontMask.parent.removeChild(this._frontMask);
			}
		}

		/***
		 * 析构地图块
		 * */
		public function destroy():void
		{
			if (this.isDestroyed) return;

			if (_loader)
			{
				_loader.unload();
				_loader = null;
			}
			this.outViewpoint();

			this.hasStart = false;

			this.destroyThumb();
			if (this._frontMask)
			{
				if (this._frontMask.parent)
				{
					this._frontMask.parent.removeChild(this._frontMask);
				}
				if (this._frontMask.bitmapData)
				{
					this._frontMask.bitmapData.dispose();
					this._frontMask.bitmapData = null;
				}
				this._frontMask = null;
			}
			if (this._alphaBitmapData)
			{
				this._alphaBitmapData = null;
			}
			this.isDestroyed = true;
			this._frontLayer = null;
			this._cfg = null;
			this._frontInfo = null;
			this._parent = null;

			if (this.bitmapData)
			{
				this.bitmapData.dispose();
				this.bitmapData = null;
			}
		}

	}
}