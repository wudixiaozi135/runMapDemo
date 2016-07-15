package com.map.utils
{
	import flash.geom.ColorTransform;

	/***
	 * 地图里元素的一天时间颜色的变化
	 * */
	public class MapTimeTypeUtil
	{
		public function MapTimeTypeUtil()
		{
		}

		/***
		 * @param type 1正常  2黄昏  3夜晚
		 * */
		public static function getColorTransform(type:int):ColorTransform
		{
			var ct:ColorTransform;
			switch (type)
			{
				case 1://正常
					ct = new ColorTransform();
					break;
				case 2://黄昏
					ct = create(0xff6600, 0.11);
					break;
				case 3://夜晚
					ct = create(0x171155, 0.3);
					break;
			}
			return ct;
		}

		private static function create(color:uint, alpha:Number):ColorTransform
		{
			var a:Number;
			var r:Number;
			var g:Number;
			var b:Number;
			var cl:ColorTransform = new ColorTransform();
			a = alpha;
			r = ((color & 0xff0000) >> 16);
			g = ((color & 0x00ff00) >> 8);
			b = (color & 0x0000ff);
			cl.redMultiplier = 1 - a;
			cl.greenMultiplier = 1 - a;
			cl.blueMultiplier = 1 - a;
			cl.redOffset = Math.ceil(r * a);
			cl.greenOffset = Math.ceil(g * a);
			cl.blueOffset = Math.ceil(b * a);
			return cl;
		}
	}
}