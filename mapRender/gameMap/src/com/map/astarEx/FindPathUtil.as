package com.map.astarEx
{
	import flash.geom.Point;

	/**
	 * 寻路算法中使用到的数学方法
	 * @author S_eVent
	 *
	 */
	public class FindPathUtil
	{
		/**
		 * 根据两点确定这两点连线的二元一次方程 y = ax + b或者 x = ay + b
		 * @param ponit1
		 * @param point2
		 * @param type        指定返回函数的形式。为0则根据x值得到y，为1则根据y得到x
		 *
		 * @return 由参数中两点确定的直线的二元一次函数
		 */
		public static function getLineFunc(ponit1:Point, point2:Point, type:int = 0):Function
		{
			var resultFuc:Function;


			// 先考虑两点在一条垂直于坐标轴直线的情况，此时直线方程为 y = a 或者 x = a 的形式
			if (ponit1.x == point2.x)
			{
				if (type == 0)
				{
					throw new Error("两点所确定直线垂直于y轴，不能根据x值得到y值");
				}
				else if (type == 1)
				{
					resultFuc = function (y:Number):Number
					{
						return ponit1.x;
					}

				}
				return resultFuc;
			}
			else if (ponit1.y == point2.y)
			{
				if (type == 0)
				{
					resultFuc = function (x:Number):Number
					{
						return ponit1.y;
					}
				}
				else if (type == 1)
				{
					throw new Error("两点所确定直线垂直于y轴，不能根据x值得到y值");
				}
				return resultFuc;
			}

			// 当两点确定直线不垂直于坐标轴时直线方程设为 y = ax + b
			var a:Number;

			// 根据
			// y1 = ax1 + b
			// y2 = ax2 + b
			// 上下两式相减消去b, 得到 a = ( y1 - y2 ) / ( x1 - x2 )
			a = (ponit1.y - point2.y) / (ponit1.x - point2.x);

			var b:Number;

			//将a的值代入任一方程式即可得到b
			b = ponit1.y - a * ponit1.x;

			//把a,b值代入即可得到结果函数
			if (type == 0)
			{
				resultFuc = function (x:Number):Number
				{
					return a * x + b;
				}
			}
			else if (type == 1)
			{
				resultFuc = function (y:Number):Number
				{
					return (y - b) / a;
				}
			}

			return resultFuc;
		}

		/**
		 * 得到两点间连线的斜率
		 * @param ponit1
		 * @param point2
		 * @return            两点间连线的斜率
		 *
		 */
		public static function getSlope(ponit1:Point, point2:Point):Number
		{
			return (point2.y - ponit1.y) / (point2.x - ponit1.x);
		}

		public static function getTwoPointShort(startP:Point, endP:Point, dis:int = 100):Point
		{
			var diff:Number;
			if (Point.distance(startP, endP) <= dis)
			{
				return startP;
			}
			var paths:Array = bresenham(startP.x, startP.y, endP.x, endP.y);
			if (paths && paths.length > 0)
			{
				var isSmall:Boolean = startP.equals(paths[0]);
				for (var i:int = 0, len:int = paths.length; i < len; i++)
				{
					diff = Point.distance(paths[i], endP);
					if (isSmall)
					{
						if (diff <= dis)
						{
							return paths[i];
						}
					} else
					{
						if (diff >= dis)
						{
							return paths[i];
						}
					}
				}
			}
			return endP;
		}


		public static function bresenham(x1:int, y1:int, x2:int, y2:int):Array
		{
			var touched:Array = [];
			var steep:Boolean = Math.abs(y2 - y1) > Math.abs(x2 - x1);
			if (steep)
			{
				var tmp:int;
				tmp = x1;
				x1 = y1;
				y1 = tmp;
				tmp = x2;
				x2 = y2;
				y2 = tmp;
			}
			if (x1 > x2)
			{
				var x1_old:int = x1;
				var y1_old:int = y1;
				x1 = x2;
				x2 = x1_old;
				y1 = y2;
				y2 = y1_old;
			}
			var deltax:int = x2 - x1;
			var deltay:int = Math.abs(y2 - y1);
			var error:int = deltax / 2;
			var ystep:int;
			var y:int = y1;
			if (y1 < y2)
			{
				ystep = 1;
			}
			else
			{
				ystep = -1;
			}
			for (var x:int = x1; x <= x2; ++x)
			{
				if (steep)
				{
					touched.push(new Point(y, x));
				}
				else
				{
					touched.push(new Point(x, y));
				}
				error = error - deltay;
				if (error < 0)
				{
					y = y + ystep;
					error = error + deltax;
				}
			}
			return touched;
		}

		/**
		 * 寻路分段点
		 * */
		public static function getSegmentPoints(arr:Array, dis:int = 150):Array
		{
			var data:Array = [];
			for (var i:int = 0; i < arr.length; i++)
			{
				if (i + 1 < arr.length)
				{
					var a1:Point = arr[i];
					var a2:Point = arr[i + 1];
					var span:Number = Point.distance(a1, a2);
					var rate:int;
					var scale:Number;
					var direction:Number;
					if (span > dis)
					{
						rate = span / dis;
						scale = 1 / rate;
						var factor:Number = 0;
						for (var t:int = 0; t < rate; t++)
						{
							factor += scale;
							direction = getDirection(a1, a2);
							data.push({point: Point.interpolate(a1, a2, factor), direction: direction});
						}
					} else
					{
						direction = getDirection(a1, a2);
						data.push({point: Point.interpolate(a1, a2, 0), direction: direction});
					}
				}
			}
			if (arr.length > 1)
			{
				direction = getDirection(arr[arr.length - 2], arr[arr.length - 1]);
			} else
			{
				direction = getDirection(arr[0], arr[arr.length - 1]);
			}
			return data;
		}

		public static function getDirection(p1:Point, p2:Point):int
		{
			var dy:Number = p2.y - p1.y;
			var dx:Number = p2.x - p1.x;
			var angle:Number = Math.atan2(dy, dx);
			var a360:int = angle * 180 / Math.PI;
			return a360;
//			a360 = (a360 + 270 + 22) % 360;
//			var dir:int = a360 / 45;
//			return dir;
		}
	}
}