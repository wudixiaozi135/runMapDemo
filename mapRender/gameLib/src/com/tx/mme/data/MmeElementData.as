package com.tx.mme.data
{
	/**
	 * 动画元件数据
	 * @author    Fictiony
	 * @version    2016/7/15
	 */
	public class MmeElementData extends BaseElementData
	{
		/** 动画文件路径 */
		public var url:String;

		/** 播放动作 */
		public var action:String;

		public function MmeElementData()
		{
			super();
		}

		/**
		 * 生成XML
		 */
		override public function encode():XML
		{
			var xml:XML = super.encode();
			xml.setLocalName("mmeElement");

			xml.@url = this.url;
			xml.@action = this.action;

			return xml;
		}

		/**
		 * 从XML解析
		 */
		override public function decode(xml:XML):void
		{
			this.url = String(xml.@url);
			this.action = String(xml.@action);
		}
	}
}