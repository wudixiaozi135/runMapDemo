package com.tx.mme.data
{
	/**
	 * 标记点数据
	 * @author    Fictiony
	 * @version    2016/7/15
	 */
	public class PointElementData extends BaseElementData
	{
		/** 标记点名称 */
		public var name:String;

		public function PointElementData()
		{
			super();
		}

		/**
		 * 生成XML
		 */
		override public function encode():XML
		{
			var xml:XML = super.encode();
			xml.setLocalName("pointElement");

			if (this.name)
				xml.@name = this.name;

			return xml;
		}

		/**
		 * 从XML解析
		 */
		override public function decode(xml:XML):void
		{
			super.decode(xml);

			this.name = xml.@name;
		}
	}
}