package map.model
{
	import com.tencent.morefun.naruto.model.BaseModel;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	
	import flash.geom.Point;
	
	import base.MapGridUtil;
	
	import def.ModelDef;
	
	import map.def.MapModelKeyDef;

	public class MapInfo extends BaseModel
	{
//		public var drawGrid:Boolean = false;
//		
		public function MapInfo()
		{
			super(ModelDef.SCENE_MAP);
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
		
		private var _mapId:int = -1	//地图id
		
		private var _mapLeftImgX:int;
		private var _mapRightImgX:int;
		private var _mapTopImgY:int;
		private var _mapBottomImgY:int;
		
		private var _mapLeftPixel:int; //左
		private var _mapRightPixel:int; //右
		private var _mapTopPixel:int; //上
		private var _mapBottomPixel:int;//下
		
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
		
		/**
		 *场景变更时 地图ID也会跟着变更 
		 * @param value
		 * 
		 */		
		public function set mapId(value:int):void
		{
			var old:int;
			
			if(value == _mapId)
			{
				return ;
			}
			
			old = _mapId;
			_mapId = value;
			
			this.dispModelEvent(ModelEvent.UPDATE, MapModelKeyDef.MAP_ID, old, _mapId);
		}
		
		public function get mapId():int
		{
			return _mapId;
		}
		
		public function setCenter(centerX:int, centerY:int):void
		{
			if(_centerPoint.x == centerX && _centerPoint.y == centerY)
			{
				return ;
			}
			
			_centerPoint.x = centerX;
			_centerPoint.y = centerY;
			this.dispModelEvent(ModelEvent.UPDATE, MapModelKeyDef.CENTER, _centerPoint, _centerPoint);
		}
		
		public function getCenter():Point
		{
			return _centerPoint;
		}
		
		/**
		 *当前显示窗口的最左边坐标 
		 * @param value
		 * 
		 */		
		public function set mapLeftPixel(value:int):void
		{
			var old:int;
			
			if(value == _mapLeftPixel)
			{
				return ;
			}
			
			if(value < 0)
			{
				value = 0;
			}
			
			old = _mapLeftPixel;
			_mapLeftPixel = value;
			
			this.dispModelEvent(ModelEvent.UPDATE, MapModelKeyDef.MAP_LEFT_PIXEL, old, _mapLeftPixel);
		}
		
		public function get mapLeftPixel():int
		{
			return _mapLeftPixel;
		}
		
		/**
		 * 当前显示窗口的最右边坐标 
		 * @param value
		 * 
		 */		
		public function set mapRightPixel(value:int):void
		{
			var old:int;
			
			if(value > mapPixelWidth)
			{
				value = mapPixelWidth;
			}
			
			old = _mapRightPixel;
			_mapRightPixel = value;
			
			this.dispModelEvent(ModelEvent.UPDATE, MapModelKeyDef.MAP_RIGHT_PIXEL, old, _mapRightPixel);
		}
		
		public function get mapRightPixel():int
		{
			return _mapRightPixel;
		}
		
		/**
		 * 当前显示窗口的最上边坐标 
		 * @param value
		 * 
		 */		
		public function set mapTopPixel(value:int):void
		{
			var old:int;
			
			if(value == _mapTopPixel)
			{
				return ;
			}
			
			if(value < 0)
			{
				value = 0;
			}
			
			old = _mapTopPixel;
			_mapTopPixel = value;
			
			this.dispModelEvent(ModelEvent.UPDATE, MapModelKeyDef.MAP_TOP_PIXEL, old, _mapTopPixel);
		}
		
		public function get mapTopPixel():int
		{
			return _mapTopPixel;
		}
		
		/**
		 * 当前显示窗口的最下边坐标 
		 * @param value
		 * 
		 */		
		public function set mapBottomPixel(value:int):void
		{
			var old:int;
			
			if(value > mapPixelHeight)
			{
				value = mapPixelHeight;
			}
			
			old = _mapBottomPixel;
			_mapBottomPixel = value;
			
			this.dispModelEvent(ModelEvent.UPDATE, MapModelKeyDef.MAP_BOTTOM_PIXEL, old, _mapBottomPixel);
		}
		
		public function get mapBottomPixel():int
		{
			return _mapBottomPixel;
		}
		
		/**
		 *地图的图片坐标StartX值改变  图片坐标是以地图上每个图片单元的宽高为单位的坐标系
		 * @param value
		 * 
		 */		
		public function set mapLeftImgX(value:int):void
		{
			var old:int;
			
			if(value == _mapLeftImgX)
			{
				return ;
			}
			
			old = _mapLeftImgX;
			_mapLeftImgX = value;
			
			this.dispModelEvent(ModelEvent.UPDATE, MapModelKeyDef.MAP_IMG_LEFT_X, old, _mapLeftImgX);
		}
		
		public function get mapLeftImgX():int
		{
			return _mapLeftImgX;
		}
		
		/**
		 *地图的图片坐标EndX值改变  图片坐标是以地图上每个图片单元的宽高为单位的坐标系
		 * @param value
		 * 
		 */		
		public function set mapRightImgX(value:int):void
		{
			var old:int;
			
			if(value == _mapRightImgX)
			{
				return ;
			}
			
			old = _mapRightImgX;
			_mapRightImgX = value;
			
			this.dispModelEvent(ModelEvent.UPDATE, MapModelKeyDef.MAP_IMG_RIGHT_X, old, _mapRightImgX);
		}
		
		public function get mapRightImgX():int
		{
			return _mapRightImgX;
		}
		
		/**
		 *地图的图片坐标StartY值改变  图片坐标是以地图上每个图片单元的宽高为单位的坐标系
		 * @param value
		 * 
		 */		
		public function set mapTopImgY(value:int):void
		{
			var old:int;
			
			if(value == _mapTopImgY)
			{
				return ;
			}
			
			old = _mapTopImgY;
			_mapTopImgY = value;
			
			this.dispModelEvent(ModelEvent.UPDATE, MapModelKeyDef.MAP_IMG_TOP_Y, old, _mapTopImgY);
		}
		
		public function get mapTopImgY():int
		{
			return _mapTopImgY;
		}
		
		/**
		 *地图的图片坐标EndY值改变  图片坐标是以地图上每个图片单元的宽高为单位的坐标系
		 * @param value
		 * 
		 */		
		public function set mapBottomImgY(value:int):void
		{
			var old:int;
			
			if(value == _mapBottomImgY)
			{
				return ;
			}
			
			old = _mapBottomImgY;
			_mapBottomImgY = value;
			
			this.dispModelEvent(ModelEvent.UPDATE, MapModelKeyDef.MAP_IMG_BOTTOM_Y, old, _mapBottomImgY);
		}
		
		public function get mapBottomImgY():int
		{
			return _mapBottomImgY;
		}
		
		public function checkInScreen(x:int, y:int):Boolean
		{
			return x > mapLeftPixel && x < mapRightPixel && y > mapTopPixel && y < mapBottomPixel;	
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
			
			_mapId = 0;		//地图id（未使用）
			
			_mapLeftPixel = 0; //左
			_mapRightPixel = 0; //右
			_mapTopPixel = 0; //上
			_mapBottomPixel = 0;//下
			
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
	}
}