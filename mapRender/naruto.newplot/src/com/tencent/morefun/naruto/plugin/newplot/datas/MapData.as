package com.tencent.morefun.naruto.plugin.newplot.datas
{
	import flash.geom.Point;
	import flash.utils.ByteArray;
	
	import base.MapGridUtil;

	public class MapData
	{
		public function MapData()
		{
		}
		
		
		//////////// 地图数据中定义的  /////////////////
		public var mapTileWidth:int;		//地图网格宽度 
		public var mapTileHeight:int;		//地图网格高度 
		
		public var mapPixelWidth:int; //地图的像素宽
		public var mapPixelHeight:int; //地图的像素高
		
		public var imgPixelWidth:int;//背景图片的单元宽度
		public var imgPixelHeight:int;//背景图片的单元高度
		public var tilePixelWidth:int;		//一个网格的象素宽 
		public var tilePixelHeight:int;		//一个网格的象素高
		public var walkableArray:Array = new Array();
		public var isSign:Array = new Array();
		public var sign:Array = new Array();
		public var block:Array = new Array();
		
		private var _centerPoint:Point = new Point();
		
		public function getWalkable(xtile:int, ytile:int):Boolean
		{
			return walkableArray[ytile*this.mapTileWidth + xtile];
		}
		
		public function getIsSign(xtile:int, ytile:int):Boolean
		{
			return isSign[ytile*this.mapTileWidth + xtile];
		}
		
		public function getSign(xtile:int, ytile:int):Point
		{
			return sign[ytile*this.mapTileWidth + xtile];
		}
		
		public function getBlock(xtile:int, ytile:int):int
		{		
			if (getIsSign(xtile, ytile))
			{
				return block[ytile*this.mapTileWidth + xtile];
			}
			else
			{
				var signPoint:Point = getSign(xtile, ytile);
				return block[signPoint.y*this.mapTileWidth + signPoint.x];
			}
			return -1;
		}
		
		public function setCenter(centerX:int, centerY:int):void
		{
			if(_centerPoint.x == centerX && _centerPoint.y == centerY)
			{
				return ;
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
			walkableArray = new Array();
			isSign = new Array();
			sign = new Array();
			
			_centerPoint = new Point();
		}
		
		
		//求两条直线的交点，其中k,b表示第一条直线的斜率和位移，startPoint和endPoint表示第二条直线经过的两个点
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
				return (new Point(startPoint.x, k * startPoint.x + b));
			}
			else
			{
				x = (b2 - b) / (k - k2);
				y = k * x + b;
			}
			return (new Point(x, y));
		}
		
		//根据起点网格和终点网格得出途中所经过的网格数组	
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
			db = (startB < endB)? tilePixelHeight : -tilePixelHeight;
			b = startB + db / 2;
			while ((b > startB && b <endB) || (b < startB && b > endB))
			{
				crossPoint = getCrossPoint(k, b, startPoint, endPoint);
				(crossPoint) && (pixelPointArr.push(crossPoint));
				b = b + db;
			}
			
			//加入终点
			pixelPointArr.push(endPoint);
			
			var tileX:int = startTilePoint.x;
			var dTileX:int = (endTilePoint.x > startTilePoint.x)? 1:-1;
			var tileY:int;
			var tile1:Point;
			var tile2:Point;
			var minTileY:int;
			var maxTileY:int;
			
			for (var i:int = 0; i < pixelPointArr.length-1; i++)
			{
				tile1 = MapGridUtil.getTilePoint(tilePixelWidth, tilePixelHeight, mapPixelWidth, (pixelPointArr[i] as Point).x, (pixelPointArr[i] as Point).y);
				tile2 = MapGridUtil.getTilePoint(tilePixelWidth, tilePixelHeight, mapPixelWidth, (pixelPointArr[i+1] as Point).x, (pixelPointArr[i+1] as Point).y);
				
				minTileY = Math.min(tile1.y, tile2.y);
				maxTileY = Math.max(tile1.y, tile2.y);
				if (endTilePoint.y > startTilePoint.y)
				{
					for (tileY = minTileY; tileY <= maxTileY; tileY++)
					{
						tilePointArr.push(new Point(tileX, tileY));
					}
				}
				else
				{
					for (tileY = maxTileY; tileY >= minTileY; tileY--)
					{
						tilePointArr.push(new Point(tileX, tileY));
					}
				}
				tileX = tileX + dTileX;
			}
			
			return tilePointArr;
		}
		
		public function setData(bytes:ByteArray):void
		{
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
			
			//读取每个网格是否可行走
			var x:int;
			var y:int;
			var i:int;
			
			while ((bytes.bytesAvailable > 0))	
			{
				x = bytes.readInt();
				y = bytes.readInt();
				i = y*mapTileWidth + x;	
				isSign[i] = bytes.readBoolean();
				sign[i] = new Point(bytes.readInt(), bytes.readInt());
				walkableArray[i] = true;
				(isSign[i] == true) && (block[i] = bytes.readInt());
			}
		}
	}
}