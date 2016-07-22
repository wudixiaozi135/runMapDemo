package com.tx.mme.data
{
	/**
	 * 帧数据基类
	 * @author    Fictiony
	 * @version    2016/7/15
	 */
	public class BaseFrameData
	{
		/** 帧序号（从0开始） */
		public var index:uint;

		/** 持续帧数 */
		public var length:uint = 1;

		public function BaseFrameData()
		{
		}

		/**
		 * 生成XML
		 */
		public function encode():XML
		{
			var xml:XML = <frame/>;

			xml.@index = this.index;
			xml.@length = this.length;

			return xml;
		}

		/**
		 * 从XML解析
		 */
		public function decode(xml:XML):void
		{
			this.index = uint(xml.@index);
			this.length = Math.max(1, uint(xml.@length));
		}
	}
}