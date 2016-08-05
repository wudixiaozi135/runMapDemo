package com.map.controls
{
	import com.map.consDef.MapLayerDef;
	import com.map.data.MapBgImgInfo;
	import com.map.data.MapData;
	import com.map.data.MapFgImgInfo;
	import com.map.data.MapMgImgInfo;
	import com.map.images.MapMme;
	import com.map.images.MapTile;

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.utils.Dictionary;

	/**
	 * 地图控制器
	 * */
	public class MapControl
	{
		private static var tempRect:Rectangle = new Rectangle(); 	//计算缩略图用的

		public var mapData:MapData;									//地图数据
		public var baseBitmap:Bitmap;								//缩略图

		private var _mapBgImgInfos:Dictionary;
		private var _mapMgImgInfos:Dictionary;
		private var _mapFgImgInfos:Dictionary;

		private var _baseBitmapImgPixelWidth:Number; 				//缩略图的单元宽度
		private var _baseBitmapImgPixelHeight:Number; 				//缩略图的单元高度

		private var _alphaBitmapData:BitmapData;
		private var _layers:Vector.<Sprite>;

		private var _mapTiles:Dictionary;
		private var _mapMmes:Dictionary;
		private var _boundsX:Vector.<int> = new Vector.<int>();
		private var _boundsY:Vector.<int> = new Vector.<int>();
		private var _checkOutViewpointArr:Array = [];

		public function MapControl(layers:Vector.<Sprite>)
		{
			this._layers = layers;

			this._mapTiles = new Dictionary();
			this._mapMmes = new Dictionary();
		}

		/**
		 * 激活地图上动画元素
		 * */
		public function play():void
		{
			for each(var mmes:Vector.<MapMme> in _mapMmes)
			{
				for each(var mme:MapMme in mmes)
				{
					mme.isActive = true;
				}
			}
		}

		/**
		 * 停止地图上动画元素
		 * */
		public function stop():void
		{
			for each(var mmes:Vector.<MapMme> in _mapMmes)
			{
				for each(var mme:MapMme in mmes)
				{
					mme.isActive = false;
				}
			}
		}

		/**
		 * 析构
		 * */
		public function dispose():void
		{
			for each(var tile:MapTile in _mapTiles)
			{
				tile.destroy();
			}
			this._mapTiles = new Dictionary();
			for each(var mmes:Vector.<MapMme> in _mapMmes)
			{
				for each(var mme:MapMme in mmes)
				{
					mme.destroy();
				}
				mmes.fixed = false;
				mmes.length = 0;
			}
			this._mapMmes = new Dictionary();
			this._alphaBitmapData = null;
			this.baseBitmap = null;
			this.mapData = null;
			this._mapBgImgInfos = null;
			this._mapMgImgInfos = null;
			this._mapFgImgInfos = null;
		}

		public function destroy():void
		{
			dispose();
			this._mapTiles = null;
			this._mapMmes = null;
			this._layers = null;
		}

		/**
		 *初始化地图数据
		 *@param mapBgImgInfos    地图背景配置
		 *@param mapMgImgInfos    地图Mme配置
		 *@param mapFgImgInfos    地图前景配置
		 *@param mapData          地图数据
		 *@param baseBitmap       地图的一个缩略图
		 *@param alphaBitmapData  地图的半透明图
		 * */
		public function setData(mapBgImgInfos:Dictionary, mapMgImgInfos:Dictionary, mapFgImgInfos:Dictionary, mapData:MapData, baseBitmap:Bitmap, alphaBitmapData:BitmapData):void
		{
			this._mapBgImgInfos = mapBgImgInfos;
			this._mapMgImgInfos = mapMgImgInfos;
			this._mapFgImgInfos = mapFgImgInfos;
			this.mapData = mapData;
			this.baseBitmap = baseBitmap;
			this._alphaBitmapData = alphaBitmapData;

			this._baseBitmapImgPixelWidth = this.baseBitmap.width / this.mapData.mapPixelWidth * this.mapData.imgPixelWidth;
			this._baseBitmapImgPixelHeight = this.baseBitmap.height / this.mapData.mapPixelHeight * this.mapData.imgPixelHeight;
		}

		/**
		 * 根据可视范围更新地图上的地图块和mme块
		 * @param viewpoint 地图可视范围
		 * */
		public function update(viewpoint:Rectangle):void
		{
			var bx:int = (viewpoint.x - 100) / mapData.imgPixelWidth;
			var by:int = (viewpoint.y - 100) / mapData.imgPixelHeight;
			var ex:int = (viewpoint.right + 100) / mapData.imgPixelWidth;
			var ey:int = (viewpoint.bottom + 100) / mapData.imgPixelHeight;
			checkOutViewpoint(bx, by, ex, ey);
			checkInViewpoint(bx, by, ex, ey);
		}

		/**
		 * 检测离开视围时
		 * */
		private function checkOutViewpoint(bx:int, by:int, ex:int, ey:int):void
		{
			for each(var layer:Sprite in _layers)
			{
				for (var i:int = layer.numChildren - 1; i >= 0; i--)
				{
					var dobj:DisplayObject = layer.getChildAt(i);
					if (dobj is MapTile)
					{
						var tile:MapTile = dobj as MapTile;
						if (tile.cfg.imgX < bx || tile.cfg.imgX > ex || tile.cfg.imgY < by || tile.cfg.imgY > ey)
						{
//							tile.outViewpoint();
							_checkOutViewpointArr.push(tile);
						}
					}
					else if (dobj is MapMme)
					{
						var mme:MapMme = dobj as MapMme;
						if (mme.cfg.imgX < bx || mme.cfg.imgX > ex || mme.cfg.imgY < by || mme.cfg.imgY > ey)
						{
//							mme.outViewpoint();
							_checkOutViewpointArr.push(mme);
						}
					}
				}
			}

			for each(var obj:Object in _checkOutViewpointArr)
			{
				obj.outViewpoint();
			}
			_checkOutViewpointArr.length = 0;
		}

		/**
		 * 检测进入视野内
		 * */
		private function checkInViewpoint(bx:int, by:int, ex:int, ey:int):void
		{
			var ox:int = (bx + ex) >> 1;
			var oy:int = (by + ey) >> 1;
			var lenx:int = (ex - bx + 1) >> 1;
			var leny:int = (ey - by + 1) >> 1;
			var ix:int;
			var iy:int;

			for (; ix <= lenx || iy <= leny; ix++, iy++)
			{
				this.getBounds(ox, oy, ix, iy);
				var num:int = this._boundsX.length;
				for (var i:int = 0; i < num; i++)
				{
					var x:int = this._boundsX[i];
					var y:int = this._boundsY[i];
					if (bx <= x && x <= ex && by <= y && y <= ey)
					{
						checkInViewpointGridBg(x, y);

						//屏蔽地图中的动画元素，否则现行的环境会报错
						checkInViewpointGridMg(x, y);
					}

					if (ix == 0 && iy == 0)
					{
						break;
					}
				}
			}
		}


		private function getBounds(x:int, y:int, offsetX:int, offsetY:int):void
		{
			this._boundsX.length = 0;
			this._boundsY.length = 0;
			if (offsetX == 0 && offsetY == 0)
			{
				this._boundsX.push(x);
				this._boundsY.push(y);
				return;
			}

			var dx:int = x - offsetX;
			var addX:int = x + offsetX;
			var dy:int = y - offsetY;
			var addY:int = y + offsetY;
			for (var i:int = dx; i <= addX; i++)
			{
				for (var j:int = dy; j <= addY; j++)
				{
					if (i == dx || i == addX || j == dy || j == addY)
					{
						this._boundsX.push(i);
						this._boundsY.push(j);
					}
				}
			}
		}

		private static const MME_EXT:String = ".swf";

		/**
		 * 检测进入屏幕的背景网格
		 * @param ix
		 * @param iy
		 */
		private function checkInViewpointGridBg(ix:int, iy:int):void
		{
			var info:MapBgImgInfo = _mapBgImgInfos[ix * 1000 + iy];
			if (info == null)
			{
				return;
			}
			var tile:MapTile = _mapTiles[ix * 1000 + iy];
			if (tile == null)
			{
				var frontInfo:MapFgImgInfo = _mapFgImgInfos[ix * 1000 + iy];
				var toX:int = info.imgX * mapData.imgPixelWidth;
				var toY:int = info.imgY * mapData.imgPixelHeight;

				var thumbBmd:BitmapData = new BitmapData(this._baseBitmapImgPixelWidth, this._baseBitmapImgPixelHeight, true, 0);
				MapControl.tempRect.x = int(ix * this._baseBitmapImgPixelWidth);
				MapControl.tempRect.y = int(iy * this._baseBitmapImgPixelHeight);
				MapControl.tempRect.width = this._baseBitmapImgPixelWidth;
				MapControl.tempRect.height = this._baseBitmapImgPixelWidth;
				thumbBmd.copyPixels(this.baseBitmap.bitmapData, MapControl.tempRect, new Point());

				//制作类似马赛克效果图
				var thumbBmp:Bitmap = new Bitmap();
				thumbBmp.bitmapData = thumbBmd;
				thumbBmp.width = this.mapData.imgPixelWidth;
				thumbBmp.height = this.mapData.imgPixelHeight;
				thumbBmp.x = toX;
				thumbBmp.y = toY;

				tile = new MapTile();
				tile.x = toX;
				tile.y = toY;
				(tile as MapTile).initialize(info, frontInfo, _layers[MapLayerDef.BOTTOM_MAP], _layers[MapLayerDef.FRONT_MAP], _alphaBitmapData, thumbBmp);
				_mapTiles[ix * 1000 + iy] = tile;
			}
			tile.inViewpoint();
		}


		/**
		 * 检测移出屏幕的背景网格
		 * @param ix
		 * @param iy
		 */
		private function checkOutViewpointGridBg(ix:int, iy:int):void
		{
			var info:MapBgImgInfo = _mapBgImgInfos[ix * 1000 + iy];
			if (info == null)
			{
				return;
			}

			var tile:MapTile = _mapTiles[ix * 1000 + iy];
			if (tile)
			{
				tile.outViewpoint();
			}
		}

		/**
		 * 检测进入屏幕的中景网格
		 * @param ix
		 * @param iy
		 */
		private function checkInViewpointGridMg(ix:int, iy:int):void
		{
			var infos:Array = _mapMgImgInfos[ix * 1000 + iy];
			if (infos == null)
			{
				return;
			}

			var mapSwfVector:Vector.<MapMme> = _mapMmes[ix * 1000 + iy];
			if (mapSwfVector == null)
			{
				_mapMmes[ix * 1000 + iy] = mapSwfVector = new Vector.<MapMme>(infos.length, true);
			}

			for (var i:int = 0; i < mapSwfVector.length; i++)
			{
				var info:MapMgImgInfo = infos[i];
				var mme:MapMme = mapSwfVector[i];
				if (mme == null)
				{
					mapSwfVector[i] = mme = new MapMme(info, _layers[info.subLayerIndex + 1]);
				}
				mme.transform.matrix = info.matrix;
//				mme.x = info.imgX * mapData.imgPixelWidth + info.offsetX;
//				mme.y = info.imgY * mapData.imgPixelHeight + info.offsetY;

				mme.x=info.offsetX;
				mme.y=info.offsetY;
				mme.inViewpoint();
			}
		}

		/**
		 * 检测移出屏幕的中景网格
		 * @param ix
		 * @param iy
		 */
		private function checkOutViewpointGridMg(ix:int, iy:int):void
		{
			var infos:Array = _mapMgImgInfos[ix * 1000 + iy];
			if (infos == null)
			{
				return;
			}

			var mapSwfVector:Vector.<MapMme> = _mapMmes[ix * 1000 + iy];
			if (mapSwfVector == null)
			{
				return;
			}

			for (var i:int = 0; i < mapSwfVector.length; i++)
			{
				var mme:MapMme = mapSwfVector[i];
				if (mme)
				{
					mme.outViewpoint();
				}
			}
		}
	}
}