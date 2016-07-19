package com.tx.mme.data
{
	import flash.display.BitmapData;

	/**
	 * 资源图片数据
	 * @author    Fictiony
	 * @version    2016/7/16
	 */
	public class AssetData
	{
		/** 资源ID（即序号） */
		public var id:int;

		/** 资源名称 */
		public var assetName:String = "Asset";

		/** 图片X偏移坐标 */
		public var x:int;

		/** 图片Y偏移坐标 */
		public var y:int;

		/** 图片宽度 */
		public var width:uint;

		/** 图片高度 */
		public var height:uint;

		/** 资源类名（不导出） */
		public var className:String;

		/** 资源位图对象（不导出） */
		public var bitmap:BitmapData;

		public function AssetData()
		{
		}

		/**
		 * 生成XML
		 */
		public function encode():XML
		{
			var xml:XML = <asset/>;

			xml.@assetName = this.assetName;
			xml.@x = this.x;
			xml.@y = this.y;
			xml.@width = this.width;
			xml.@height = this.height;

			return xml;
		}

		/**
		 * 从XML解析
		 */
		public function decode(xml:XML, index:int = 0):void
		{
			this.id = index;
			this.assetName = String(xml.@assetName) || String(xml.@name);
			this.x = int(xml.@x);
			this.y = int(xml.@y);
			this.width = uint(xml.@width);
			this.height = uint(xml.@height);

			this.className = "Asset_" + this.id;
		}
	}
}