package com.tx.mme.data
{
	/**
	 * 元件数据基类
	 * @author    Fictiony
	 * @version    2016/7/15
	 */
	public class BaseElementData
	{
		/** X坐标 */
		public var x:int;

		/** Y坐标 */
		public var y:int;

		public function BaseElementData()
		{
		}

		/**
		 * 生成XML
		 */
		public function encode():XML
		{
			var xml:XML = <element/>;

			if (this.x)
				xml.@x = this.x;
			if (this.y)
				xml.@y = this.y;

			return xml;
		}

		/**
		 * 从XML解析
		 */
		public function decode(xml:XML):void
		{
			this.x = int(xml.@x);
			this.y = int(xml.@y);
		}
	}
}