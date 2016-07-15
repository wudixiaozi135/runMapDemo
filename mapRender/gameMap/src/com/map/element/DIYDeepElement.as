package com.map.element
{

	import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;

	import flash.geom.Matrix;
	import flash.geom.Point;

	public class DIYDeepElement
	{
		private var _deepPoints:Array = [];

		public function DIYDeepElement()
		{
		}

		public function get deepPoints():Array
		{
			return _deepPoints || createDefaultPoints();
		}

		public function set deepPoints(value:Array):void
		{
			_deepPoints = value;
		}

		public function transformMMePoints(mmePoints:Array, matrix:Matrix, x:int, y:int):void
		{
			var point:Point;

			if (mmePoints.length == 0)
			{
				if (!_deepPoints[0])
				{
					point = new Point();
					_deepPoints.push(point);
				}
				point = _deepPoints[0];
				point.x = x;
				point.y = y;
				return;
			}

			for each(var pointData:PointElementData in mmePoints)
			{
				point = new Point();
				point.x = pointData.x;
				point.y = pointData.y;
				point = matrix.transformPoint(point);
				point.x += x;
				point.y += y;
				_deepPoints.push(point);
			}
		}

		public function updateMMePoints(mmePoints:Array, matrix:Matrix, x:int, y:int):void
		{
			var point:Point;

			for each(var pointData:PointElementData in mmePoints)
			{
				point.x = pointData.x;
				point.y = pointData.y;
				point = matrix.transformPoint(point);
				point.x += x;
				point.y += y;
			}
		}

		private function createDefaultPoints():Array
		{
			return [new Point(0, 0)];
		}
	}
}