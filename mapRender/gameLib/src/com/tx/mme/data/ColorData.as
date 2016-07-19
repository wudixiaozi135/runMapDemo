package com.tx.mme.data
{
	import flash.geom.ColorTransform;

	/**
	 * 调色数据
	 * @author    Fictiony
	 * @version    2016/7/15
	 */
	public class ColorData
	{
		/** 颜色值 */
		public var color:uint = 0xFFFFFFFF;

		/** 是否为空（即不启用） */
		public var empty:Boolean = true;

		public function ColorData()
		{
		}

		/**
		 * 红色值
		 */
		public function get r():uint
		{
			return (this.color >>> 16) & 0xFF;
		}

		/**
		 * 绿色值
		 */
		public function get g():uint
		{
			return (this.color >>> 8) & 0xFF;
		}

		/**
		 * 蓝色值
		 */
		public function get b():uint
		{
			return this.color & 0xFF;
		}

		/**
		 * 透明度
		 */
		public function get alpha():Number
		{
			return (this.color >>> 24) & 0xFF / 0xFF;
		}

		/**
		 * 颜色变换
		 */
		public function get colorTransform():ColorTransform
		{
			if (!empty)
			{
				var a:Number = this.alpha;
				var ct:ColorTransform = new ColorTransform();

				ct.redMultiplier = 1 - a;
				ct.greenMultiplier = 1 - a;
				ct.blueMultiplier = 1 - a;
				ct.redOffset = r * a;
				ct.greenOffset = g * a;
				ct.blueOffset = b * a;

				return ct;
			}
			return null;
		}

		/**
		 * 生成XML
		 */
		public function encode(xml:XML):void
		{
			if (this.empty) return;

			xml.@color = this.color.toString(16);
		}

		/**
		 * 从XML解析
		 */
		public function decode(xml:XML):void
		{
			var cs:String = String(xml.@color);
			if (cs)
			{
				this.color = uint("0x" + cs);
				this.empty = false;
			}
			else
			{
				this.empty = true;
			}
		}

		public function clone():ColorData
		{
			var color:ColorData = new ColorData();
			color.color = this.color;
			color.empty = this.empty;
			return color;
		}
	}
}