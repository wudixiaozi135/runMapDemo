package com.map.utils
{
	import flash.display.BitmapData;
	import flash.display.Shape;
	import flash.geom.Point;

	/***
	 * 地图格子工具
	 * */
	public class MapGridUtil
	{
		private static var pointPool:Vector.<Point> = new Vector.<Point>();
		private static var pointPoolIndex:int = -1;

		private static function newPoint(x:int, y:int):Point
		{
			pointPoolIndex++;
			if (pointPoolIndex >= pointPool.length)
			{
				pointPool.push(new Point());
			}
//			if(pointPool[pointPoolIndex]==null)
//			{
//				pointPool[pointPoolIndex] = new Point();
//			}
			pointPool[pointPoolIndex].x = x;
			pointPool[pointPoolIndex].y = y;
			return pointPool[pointPoolIndex];
		}

		public static function resetPoint():void
		{
			pointPoolIndex = -1;
		}

		/**
		 * 根据网格坐标取得象素坐标
		 * tileWidth  tile的象素宽
		 * tileHeight tile的象素高
		 * mapPixelWidth 地图的像素宽度
		 * tx 网格坐标x
		 * ty 网格坐标x
		 * return 象素坐标的点
		 */
		public static function getPixelPoint(tileWidth:int, tileHeight:int, mapPixelWidth:int, tx:int, ty:int):Point
		{
			return getPixelPointEx(tileWidth,tileHeight,tx,ty);

			var tileEdge:Number = Math.sqrt(tileWidth * tileWidth + tileHeight * tileHeight) / 2;
			var tan:Number = tileHeight / tileWidth;
			var sin:Number = (tileHeight / 2) / tileEdge;
			var cos:Number = (tileWidth / 2) / tileEdge;

			var x:int = mapPixelWidth / 2 - (ty - tx) * tileEdge * cos;
			var y:int = -tan * mapPixelWidth / 2 + (ty + tx + 1) * tileEdge * sin;

			return new Point(x, y);
		}

		public static function getPixelPointEx(tileWidth:int, tileHeight:int, tx:int, ty:int):Point
		{
			//偶数行tile中心
			var tileCenter:int = (tx * tileWidth) + tileWidth / 2;
			// x象素  如果为奇数行加半个宽
			var xPixel:int = tileCenter + (ty & 1) * tileWidth / 2;

			// y象素
			var yPixel:int = (ty + 1) * tileHeight / 2;

			return new Point(xPixel, yPixel);
		}

		/**
		 * 根据屏幕象素坐标取得网格的坐标
		 * tileWidth  tile的象素宽
		 * tileHeight tile的象素高
		 * mapPixelWidth 地图的像素宽度
		 * px 象素坐标x
		 * py 象素坐标x
		 * return 网格坐标的点
		 */
		public static function getTilePoint(tilePixelWidth:int, tilePixelHeight:int, mapPixelWidth:int, px:int, py:int):Point
		{
			return getTilePointEx(tilePixelWidth,tilePixelHeight,px,py);

			var tileEdge:Number = Math.sqrt(tilePixelWidth * tilePixelWidth + tilePixelHeight * tilePixelHeight) / 2;
			var tan:Number = tilePixelHeight / tilePixelWidth;
			var sin:Number = (tilePixelHeight / 2) / tileEdge;
			var cos:Number = (tilePixelWidth / 2) / tileEdge;

			var tempA:Number = (py + tan * mapPixelWidth / 2) / sin;
			var tempB:Number = (mapPixelWidth / 2 - px) / cos;

			var ly:Number = (tempA + tempB) / 2;
			var lx:Number = (tempA - tempB) / 2;

			var tx:int = lx / tileEdge;
			var ty:int = ly / tileEdge;

//			var tempX:Number;
//			var tempY:Number;
//			tempX = py / tileHeight + px / tileWidth;
//			tempY = py / tileHeight + mapPixelWidth / tileWidth - px / tileWidth;
//			logger.output("getTilePoint", tempX, tempY, tx, ty);

			return newPoint(tx, ty);
		}

		public static function getTilePointEx(tileWidth:int, tileHeight:int, px:int, py:int):Point
		{
			var xtile:int = 0;	//网格的x坐标
			var ytile:int = 0;	//网格的y坐标

			var cx:int, cy:int, rx:int, ry:int;
			cx = int(px / tileWidth) * tileWidth + tileWidth / 2;	//计算出当前X所在的以tileWidth为宽的矩形的中心的X坐标
			cy = int(py / tileHeight) * tileHeight + tileHeight / 2;//计算出当前Y所在的以tileHeight为高的矩形的中心的Y坐标

			rx = (px - cx) * tileHeight / 2;
			ry = (py - cy) * tileWidth / 2;

			if (Math.abs(rx) + Math.abs(ry) <= tileWidth * tileHeight / 4)
			{
				//xtile = int(pixelPoint.x / tileWidth) * 2;
				xtile = int(px / tileWidth);
				ytile = int(py / tileHeight) * 2;
			}
			else
			{
				px = px - tileWidth / 2;
				//xtile = int(pixelPoint.x / tileWidth) * 2 + 1;
				xtile = int(px / tileWidth) + 1;

				py = py - tileHeight / 2;
				ytile = int(py / tileHeight) * 2 + 1;
			}

			return new Point(xtile - (ytile & 1), ytile);
		}


		public static function getWalkableSignMap(tilePixelWidth:int, tilePixelHeight:int):BitmapData
		{
			//菱形
			var shape:Shape = new Shape();
			//外框
			shape.graphics.lineStyle(1, 0xff0000, 0.6);
			shape.graphics.moveTo(0, tilePixelHeight / 2);
			shape.graphics.lineTo(tilePixelWidth / 2, 0);
			shape.graphics.lineTo(tilePixelWidth, tilePixelHeight / 2);
			shape.graphics.lineTo(tilePixelWidth / 2, tilePixelHeight);
			shape.graphics.lineTo(0, tilePixelHeight / 2);
			//里框
			var hoff:Number = tilePixelHeight / 4;
			var woff:Number = hoff * tilePixelWidth / tilePixelHeight;
			shape.graphics.moveTo(woff, tilePixelHeight / 2);
			shape.graphics.lineTo(tilePixelWidth / 2, hoff);
			shape.graphics.lineTo(tilePixelWidth - woff, tilePixelHeight / 2);
			shape.graphics.lineTo(tilePixelWidth / 2, tilePixelHeight - hoff);
			shape.graphics.lineTo(woff, tilePixelHeight / 2);
			//交叉线
			shape.graphics.moveTo(0, tilePixelHeight / 2);
			shape.graphics.lineTo(tilePixelWidth, tilePixelHeight / 2);
			shape.graphics.moveTo(tilePixelWidth / 2, 0);
			shape.graphics.lineTo(tilePixelWidth / 2, tilePixelHeight);

			//保存到BitmapData
			var wb:BitmapData = new BitmapData(tilePixelWidth, tilePixelHeight, true, 0x00000000);
			wb.draw(shape);

			return wb;
		}


		public static function getShadowSignMap(tilePixelWidth:int, tilePixelHeight:int):BitmapData
		{
			//菱形
			var shape:Shape = new Shape();
			shape.graphics.lineStyle(1, 0x0000ff, 0.5);
			shape.graphics.beginFill(0xffff00, 0.2);
			shape.graphics.moveTo(0, tilePixelHeight / 2);
			shape.graphics.lineTo(tilePixelWidth / 2, 0);
			shape.graphics.lineTo(tilePixelWidth, tilePixelHeight / 2);
			shape.graphics.lineTo(tilePixelWidth / 2, tilePixelHeight);
			shape.graphics.endFill();

			//保存到BitmapData
			var wb:BitmapData = new BitmapData(tilePixelWidth, tilePixelHeight, true, 0x00000000);
			wb.draw(shape);

			return wb;
		}

		/***
		 * 调整到格子中心
		 * */
		public static function adjustToGridCenter(gridWidth:int, gridHeight:int, mapPixelWidth:int, point:Point):Point
		{
			//如果是NPC，则它的坐标只能是某个网格的中心点
			var gridPoint:Point = MapGridUtil.getTilePoint(gridWidth, gridHeight, mapPixelWidth, point.x, point.y);
			var gridCenter:Point = MapGridUtil.getPixelPoint(gridWidth, gridHeight, mapPixelWidth, gridPoint.x, gridPoint.y);
			return gridCenter;
		}
	}
}