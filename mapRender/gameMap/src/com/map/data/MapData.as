package com.map.data
{
	import com.map.utils.MapGridUtil;

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.PixelSnapping;
	import flash.filters.GlowFilter;
	import flash.geom.Point;
	import flash.utils.ByteArray;

	public class MapData
	{
		public function MapData()
		{
		}

		//////////// 地图数据中定义的  /////////////////
		public var mapTileWidth:int;		//地图网格列
		public var mapTileHeight:int;		//地图网格行
		public var mapPixelWidth:int; 		//地图的像素宽
		public var mapPixelHeight:int; 		//地图的像素高

		public var imgPixelWidth:int;		//背景图片的单元宽度
		public var imgPixelHeight:int;		//背景图片的单元高度
		public var tilePixelWidth:int;		//一个网格的象素宽 
		public var tilePixelHeight:int;		//一个网格的象素高

		public var walkableArray:Vector.<Vector.<Boolean>>; 	// 二维数组[ytile][xtile] = walkable
		public var isSign:Vector.<Vector.<Boolean>>; 			// 二维数组[ytile][xtile]
		public var sign:Vector.<Vector.<Point>>; 				// 二维数组[ytile][xtile]
		public var block:Vector.<Vector.<int>>; 				// 二维数组[ytile][xtile]

		private var _centerPoint:Point = new Point();

		public function getWalkable(xtile:int, ytile:int):Boolean
		{
//			return walkableArray ? walkableArray[ytile][xtile] : false;
			return walkableArray ? walkableArray[xtile][ytile] : false;
		}

		public function getIsSign(xtile:int, ytile:int):Boolean
		{
			return isSign ? isSign[ytile][xtile] : false;
		}

		public function getSign(xtile:int, ytile:int):Point
		{
			return sign ? sign[ytile][xtile] : null;
		}

		public function getBlock(xtile:int, ytile:int):int
		{
			if (getWalkable(xtile, ytile))
			{
				if (getIsSign(xtile, ytile))
				{
					return block[ytile][xtile];
				}
				else
				{
					var signPoint:Point = getSign(xtile, ytile);
					return block[signPoint.y][signPoint.x];
				}
			}
			return -1;
		}

		public function setCenter(centerX:int, centerY:int):void
		{
			if (_centerPoint.x == centerX && _centerPoint.y == centerY)
			{
				return;
			}

			_centerPoint.x = centerX;
			_centerPoint.y = centerY;
		}

		public function getCenter():Point
		{
			return _centerPoint;
		}

		private var relativityCenterPoint:Point = new Point();

		public function getRelativityCenter(screenWidth:int, screenHeight:int):Point
		{
			var centerX:int;
			var centerY:int;
			var visbleWidth:int;
			var visbleHeight:int;

			visbleWidth = Math.min(screenWidth, mapPixelWidth);
			visbleHeight = Math.min(screenHeight, mapPixelHeight);
			centerX = Math.max(_centerPoint.x, visbleWidth / 2);
			centerX = Math.min(centerX, mapPixelWidth - visbleWidth / 2);
			centerY = Math.max(_centerPoint.y, visbleHeight / 2);
			centerY = Math.min(centerY, mapPixelHeight - visbleHeight / 2);

			relativityCenterPoint.x = centerX;
			relativityCenterPoint.y = centerY;
			return relativityCenterPoint;
		}

		public function reset():void
		{
			mapTileWidth = 0;
			mapTileHeight = 0;

			mapPixelWidth = 0; //地图的像素宽
			mapPixelHeight = 0; //地图的像素高

			imgPixelWidth = 0;//背景图片的单元宽度
			imgPixelHeight = 0;//背景图片的单元高度
			tilePixelWidth = 0;		//一个网格的象素宽 
			tilePixelHeight = 0;		//一个网格的象素高
			walkableArray = new Vector.<Vector.<Boolean>>();
			isSign = new Vector.<Vector.<Boolean>>();
			sign = new Vector.<Vector.<Point>>();
			block = new Vector.<Vector.<int>>();

			_centerPoint = new Point();
		}


		/**
		 * 求两条直线的交点
		 *@param k 第一条直线斜率
		 * @param b 第一条直线位移
		 * @param startPoint 第二条直线直线起点
		 * @param endPoint   第二条直线直线末点
		 * */
		private function getCrossPoint(k:Number, b:Number, startPoint:Point, endPoint:Point):Point
		{
			var k2:Number = (endPoint.y - startPoint.y) / (endPoint.x - startPoint.x);
			var b2:Number = startPoint.y - (k2 * startPoint.x);
			var x:Number;
			var y:Number;
			if (k2 == k)    //两条直线平行
			{
				return null;
			}
			if (k2 == Infinity || k2 == -Infinity) //斜率无限大
			{
				return (newPoint(startPoint.x, k * startPoint.x + b));
			}
			else
			{
				x = (b2 - b) / (k - k2);
				y = k * x + b;
			}
			return (newPoint(x, y));
		}

		private static var pointPool:Vector.<Point> = new Vector.<Point>();
		private static var pointPoolIndex:int = -1;

		private static function newPoint(x:int, y:int):Point
		{
			pointPoolIndex++;
			if (pointPoolIndex >= pointPool.length)
			{
				pointPool.push(new Point());
			}
			pointPool[pointPoolIndex].x = x;
			pointPool[pointPoolIndex].y = y;
			return pointPool[pointPoolIndex];
		}

		public static function resetPoint():void
		{
			pointPoolIndex = -1;
		}

		/***
		 * 根据起点网格和终点网格得出途中所经过的网格数组
		 * @param startTilePoint 起点
		 * @param endTilePoint   终点
		 * @return
		 */
		public function passedTile2(startTilePoint:Point, endTilePoint:Point):Array
		{
			var startPoint:Point = MapGridUtil.getPixelPoint(tilePixelWidth, tilePixelHeight, mapPixelWidth, startTilePoint.x, startTilePoint.y);
			var endPoint:Point = MapGridUtil.getPixelPoint(tilePixelWidth, tilePixelHeight, mapPixelWidth, endTilePoint.x, endTilePoint.y);
			var k:Number;
			var b:Number;
			var startB:Number;
			var endB:Number;
			var db:int;
			var crossPoint:Point;
			var pixelPointArr:Array = new Array();
			var tilePointArr:Array = new Array();
			var yRangeArr:Array = new Array();
			var inTilePointArr:Boolean;

			//加入起点
			pixelPointArr.push(startPoint);

			//与网格坐标系y轴平行的直线与起点终点练成直线的交点
			k = -tilePixelHeight / tilePixelWidth;
			startB = startPoint.y - k * startPoint.x;
			endB = endPoint.y - k * endPoint.x;
			db = (startB < endB) ? tilePixelHeight : -tilePixelHeight;
			b = startB + db / 2;
			while ((b > startB && b < endB) || (b < startB && b > endB))
			{
				crossPoint = getCrossPoint(k, b, startPoint, endPoint);
				(crossPoint) && (pixelPointArr.push(crossPoint));
				b = b + db;
			}

			//加入终点
			pixelPointArr.push(endPoint);

			var tileX:int = startTilePoint.x;
			var dTileX:int = (endTilePoint.x > startTilePoint.x) ? 1 : -1;
			var tileY:int;
			var tile1:Point;
			var tile2:Point;
			var minTileY:int;
			var maxTileY:int;

			for (var i:int = 0; i < pixelPointArr.length - 1; i++)
			{
				tile1 = MapGridUtil.getTilePoint(tilePixelWidth, tilePixelHeight, mapPixelWidth, (pixelPointArr[i] as Point).x, (pixelPointArr[i] as Point).y);
				tile2 = MapGridUtil.getTilePoint(tilePixelWidth, tilePixelHeight, mapPixelWidth, (pixelPointArr[i + 1] as Point).x, (pixelPointArr[i + 1] as Point).y);

				minTileY = Math.min(tile1.y, tile2.y);
				maxTileY = Math.max(tile1.y, tile2.y);
				if (endTilePoint.y > startTilePoint.y)
				{
					for (tileY = minTileY; tileY <= maxTileY; tileY++)
					{
						tilePointArr.push(newPoint(tileX, tileY));
					}
				}
				else
				{
					for (tileY = maxTileY; tileY >= minTileY; tileY--)
					{
						tilePointArr.push(newPoint(tileX, tileY));
					}
				}
				tileX = tileX + dTileX;
			}
			pixelPointArr = null;
			yRangeArr = null;
			return tilePointArr;
		}

		public function setData(bytes:ByteArray):void
		{
			bytes.position = 0;

			reset();
			//文件头信息
			mapPixelWidth = bytes.readInt();
			mapPixelHeight = bytes.readInt();
			imgPixelWidth = bytes.readInt();
			imgPixelHeight = bytes.readInt();

			mapTileWidth = bytes.readShort();
			mapTileHeight = bytes.readShort();

			tilePixelWidth = bytes.readShort();
			tilePixelHeight = bytes.readShort();

//			this.walkableArray.length = mapTileHeight;
//			this.isSign.length = mapTileHeight;
//			this.sign.length = mapTileHeight;
//			this.block.length = mapTileHeight;
//			for (var i:int = 0; i < mapTileHeight; i++)
//			{
//				this.walkableArray[i] = new Vector.<Boolean>();
//				this.isSign[i] = new Vector.<Boolean>();
//				this.sign[i] = new Vector.<Point>();
//				this.block[i] = new Vector.<int>();
//				this.walkableArray[i].length = mapTileWidth;
//				this.isSign[i].length = mapTileWidth;
//				this.sign[i].length = mapTileWidth;
//				this.block[i].length = mapTileWidth;
//			}

			this.walkableArray.length = mapTileWidth;
			for (var i:int = 0; i < mapTileWidth; i++)
			{
				this.walkableArray[i] = new Vector.<Boolean>(mapTileHeight);
			}

			//读取每个网格是否可行走
			var x:int;
			var y:int;

//			var t1:int,t2:int;
//			while ((bytes.bytesAvailable > 0))
//			{
//				y = bytes.readInt();
//				x = bytes.readInt();
//				isSign[y][x] = bytes.readBoolean();
//				t1=bytes.readInt();
//				t2=bytes.readInt();
//				sign[y][x] = new Point(t2,t1);
//				walkableArray[y][x] = true;
//				(isSign[y][x] == true) && (block[y][x] = bytes.readInt());
//			}


//			for (var y:int = 0; y < data.layerData.gridRows; y++)
//				for (var x:int = 0; x < data.layerData.gridColumns; x++)
//					stream.writeBoolean((gridLayer[x] && gridLayer[x][y] != null) ? gridLayer[x][y] : true);


			var sum:int = 0;
			for (y = 0; y < mapTileHeight; y++)
			{
				for (x = 0; x < mapTileWidth; x++)
				{
					walkableArray[x][y] = bytes.readBoolean();
					if (walkableArray[x][y])
					{
						sum++;
					}
				}
			}
			trace(sum);
		}

		public function drawMiniMap():Bitmap
		{
			var tileEdge:int = Math.sqrt(this.tilePixelWidth * this.tilePixelWidth + this.tilePixelHeight * this.tilePixelHeight) / 2;
			var tan:Number = this.tilePixelHeight / this.tilePixelWidth;
			var sin:Number = (this.tilePixelHeight / 2) / tileEdge;
			var cos:Number = (this.tilePixelWidth / 2) / tileEdge;

			var size:int = Math.min(this.tilePixelWidth, this.tilePixelHeight);
			var w:int = int(this.mapPixelWidth / size);
			var h:int = int(this.mapPixelHeight / size);
			var bmd:BitmapData = new BitmapData(w, h, true, 0);
			for (var y:int = 0; y < h; y++)
			{
				for (var x:int = 0; x < w; x++)
				{
					var px:int = x * size;
					var py:int = y * size;

					// 坐标换算参见 MapGridUtil.getPixelPoint()
					var tempA:int = (py + tan * this.mapPixelWidth / 2) / sin;
					var tempB:int = (this.mapPixelWidth / 2 - px) / cos;
					var ty:int = (tempA + tempB) / 2 / tileEdge;
					var tx:int = (tempA - tempB) / 2 / tileEdge;

					if (this.getWalkable(tx, ty))
					{
						bmd.setPixel32(x, y, 0xF070EFFE);
					}
				}
			}

			var bmp:Bitmap = new Bitmap(bmd, PixelSnapping.AUTO, true);
			bmp.alpha = 0.6;
			var filterList:Array = [];
			filterList.push(new GlowFilter(0x43CBDA, 1, 12, 12, 3, 1, true)); // 内侧线
			filterList.push(new GlowFilter(0xFFFFFF, 1, 4, 4, 12)); // 外侧白线
			filterList.push(new GlowFilter(0, 0.3, 6, 6, 6)); // 黑发光
			bmp.filters = filterList;
			return bmp;
		}

	}
}