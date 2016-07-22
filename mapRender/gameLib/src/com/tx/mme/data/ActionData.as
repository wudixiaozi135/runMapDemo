package com.tx.mme.data
{
	/**
	 * 角色动作数据
	 * @author    Fictiony
	 * @version    2016/7/15
	 */
	public class ActionData
	{
		/** 动作名称 */
		public var name:String = "Action";

		/** 是否不导出（编辑模式） */
		public var hide:Boolean;

		/** 图层信息列表 */
		public var layerDatas:Vector.<LayerData> = new Vector.<LayerData>;

		public function ActionData()
		{
		}

		/**
		 * 生成XML
		 */
		public function encode():XML
		{
			var xml:XML = <action/>;

			xml.@name = this.name;
			if (this.hide)
				xml.@hide = this.hide;

			for each (var layer:LayerData in this.layerDatas)
			{
				xml.appendChild(layer.encode());
			}

			return xml;
		}

		/**
		 * 从XML解析
		 */
		public function decode(xml:XML, index:int = 0):void
		{
			this.name = String(xml.@name) || "Action_" + (index + 1);
			this.hide = String(xml.@hide) == "true";

			this.layerDatas.splice(0, this.layerDatas.length);
			for each (var layer_xml:XML in xml.layer)
			{
				var layer:LayerData = new LayerData();
				layer.decode(layer_xml, this.layerDatas.length);
				this.layerDatas.push(layer);
			}
		}
	}
}