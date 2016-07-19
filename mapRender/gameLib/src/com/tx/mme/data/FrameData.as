package com.tx.mme.data
{
	/**
	 * 帧数据
	 * @author    Fictiony
	 * @version    2016/7/16
	 */
	public class FrameData extends BaseFrameData
	{
		/** 元件数据 */
		public var element:BaseElementData;

		/** 是否渐变 */
		public var tween:Boolean;

		/** 事件列表 */
		public var events:Array;

		/** 声音数据 */
		public var sound:SoundData = new SoundData;

		public function FrameData()
		{
			super();
		}

		/**
		 * 生成XML
		 */
		override public function encode():XML
		{
			var xml:XML = super.encode();

			if (this.element)
				xml.appendChild(element.encode());
			if (this.tween)
				xml.@tween = this.tween;
			if (this.events && this.events.length > 0)
				xml.@event = this.events.join(",");
			this.sound.encode(xml);

			return xml;
		}

		/**
		 * 从XML解析
		 */
		override public function decode(xml:XML):void
		{
			super.decode(xml);

			if (xml.element.length() > 0)
			{
				this.element = new ElementData();
				this.element.decode(xml.element[0]);
			}
			else if (xml.mmeElement.length() > 0)
			{
				this.element = new MmeElementData();
				element.decode(xml.mmeElement[0]);
			}
			else if (xml.pointElement.length() > 0)
			{
				this.element = new PointElementData();
				this.element.decode(xml.pointElement[0]);
			}

			this.tween = String(xml.@tween) == "true";
			this.events = String(xml.@event) ? String(xml.@event).split(",") : null;
			this.sound.decode(xml);
		}
	}
}