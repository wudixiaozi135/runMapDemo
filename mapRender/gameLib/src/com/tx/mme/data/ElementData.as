package com.tx.mme.data
{
	/**
	 * 元件数据
	 * @author    Fictiony
	 * @version    2016/7/16
	 */
	public class ElementData extends BaseElementData
	{
		/** 资源ID（<0表示外部引用资源） */
		public var assetId:int;

		/** 资源名称 */
		public var assetName:String;

		/** 横向缩放比例 */
		public var scaleX:Number = 1;

		/** 纵向缩放比例 */
		public var scaleY:Number = 1;

		/** 旋转角度 */
		public var rotation:Number = 0;

		/** 透明度 */
		public var alpha:Number = 1;

		/** 混合模式 */
		public var blendMode:String;

		/** 调色数据 */
		public var color:ColorData = new ColorData;

		/** 资源类名（不导出） */
		public var assetClassName:String;

		public function ElementData()
		{
			super();
		}

		/**
		 * 生成XML
		 */
		override public function encode():XML
		{
			var xml:XML = super.encode();

			xml.@assetId = this.assetId;
			if (this.assetName)
				xml.@filename = this.assetName;
			if (this.scaleX != 1)
				xml.@scaleX = this.scaleX.toFixed(2);
			if (this.scaleY != 1)
				xml.@scaleY = this.scaleY.toFixed(2);
			if (this.rotation)
				xml.@rotation = this.rotation.toFixed(2);
			if (this.alpha != 1)
				xml.@alpha = this.alpha.toFixed(2);
			if (this.blendMode)
				xml.@blendMode = this.blendMode;
			this.color.encode(xml);

			return xml;
		}

		/**
		 * 从XML解析
		 */
		override public function decode(xml:XML):void
		{
			super.decode(xml);

			this.assetId = String(xml.@extname) ? -1 : int(xml.@assetId);		//若有外部引用资源，则资源ID取-1
			this.assetName = String(xml.@filename) || String(xml.@extname);		//兼容外部引用资源
			this.scaleX = String(xml.@scaleX) ? Number(xml.@scaleX) || 1 : 1;
			this.scaleY = String(xml.@scaleY) ? Number(xml.@scaleY) || 1 : 1;
			this.rotation = String(xml.@rotation) ? Number(xml.@rotation) || 0 : 0;
			this.alpha = String(xml.@alpha) ? Number(xml.@alpha) || 1 : 1;
			this.blendMode = String(xml.@blendMode);
			this.color.decode(xml);

			this.assetClassName = this.assetId >= 0 ? "Asset_" + this.assetId : null;
		}
	}

}