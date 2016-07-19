package com.tx.mme.data
{
	/**
	 * 图层数据
	 * @author    Fictiony
	 * @version    2016/7/15
	 */
	public class LayerData
	{
		/** 图层名称 */
		public var name:String = "Layer";

		/** 是否可见（编辑模式） */
		public var visible:Boolean = true;

		/** 是否锁定（编辑模式） */
		public var lock:Boolean = false;

		/** 帧信息列表 */
		public var frameDatas:Vector.<FrameData> = new Vector.<FrameData>;

		public function LayerData()
		{
		}

		/**
		 * 生成XML
		 */
		public function encode():XML
		{
			var xml:XML = <layer/>;

			if (this.name)
				xml.@name = this.name;
			if (!this.visible)
				xml.@visible = this.visible;
			if (this.lock)
				xml.@lock = this.lock;

			for each (var frame:FrameData in this.frameDatas)
			{
				xml.appendChild(frame.encode());
			}

			return xml;
		}

		/**
		 * 从XML解析
		 */
		public function decode(xml:XML, index:int = 0):void
		{
			this.name = String(xml.@name) || "Layer_" + (index + 1);
			this.visible = !String(xml.@visible) || String(xml.@visible) == "true";
			this.lock = String(xml.@lock) == "true";

			this.frameDatas.splice(0, this.frameDatas.length);
			for each (var frame_xml:XML in xml.frame)
			{
				var frame:FrameData = new FrameData();
				frame.decode(frame_xml);
				this.frameDatas.push(frame);
			}
		}
	}
}