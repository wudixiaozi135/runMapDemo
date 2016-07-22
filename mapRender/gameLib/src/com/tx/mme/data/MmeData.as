package com.tx.mme.data
{
	/**
	 * MME动画数据
	 * @author    Fictiony
	 * @version    2016/7/16
	 */
	public class MmeData
	{
		/** MME文件版本 */
		static public const VERSION:String = "3.0.0";

		/** 帧率 */
		public var frameRate:int = 24;	//rem 似乎没用？

		/** 是否高级模式（支持残影） */
		public var advanced:Boolean;	//todo

		/** 外部资源库路径（编辑模式） */
		public var external:String;

		/** 压缩类型（编辑模式） */
		public var compressType:String = "PNG";

		/** 压缩参数（编辑模式） */
		public var compressParam:int;

		/** 动作数据列表 */
		public var actionDatas:Vector.<ActionData> = new Vector.<ActionData>;

		/** 资源数据列表 */
		public var assetDatas:Vector.<AssetData> = new Vector.<AssetData>;

		private var _srcXML:XML;				//来源XML数据
		private var _assetMap:Object = {};		//资源映射表：{资源类名: 资源数据}

		public function MmeData()
		{
		}

		/**
		 * 来源XML数据
		 */
		public function get srcXML():XML
		{
			return _srcXML;
		}

		/**
		 * 获取资源数据
		 * @param className    资源类名
		 * @return            若找到，则返回资源数据对象，否则返回null
		 */
		public function getAssetData(className:String):AssetData
		{
			return _assetMap[className];
		}

		/**
		 * 生成XML
		 * @param includeAssets    是否包含资源列表
		 */
		public function encode(includeAssets:Boolean = true):XML
		{
			var xml:XML = <actions/>;

			xml.@version = VERSION;
			xml.@frameRate = this.frameRate;
			if (this.advanced)
				xml.@advanced = this.advanced;
			if (this.external)
				xml.@external = this.external;
			if (this.compressType)
				xml.@compressType = this.compressType;
			if (this.compressParam)
				xml.@compressParam = this.compressParam;

			//动作列表
			for each (var action:ActionData in this.actionDatas)
			{
				xml.appendChild(action.encode());
			}

			//资源列表
			if (includeAssets)
			{
				for each (var asset:AssetData in this.assetDatas)
				{
					xml.appendChild(asset.encode());
				}
			}

			return xml;
		}

		/**
		 * 从XML解析
		 */
		public function decode(xml:XML):void
		{
			_srcXML = xml;

			this.frameRate = int(xml.@frameRate) || 24;
			this.advanced = String(xml.@advanced) == "true";
			this.external = String(xml.@external);
			this.compressType = String(xml.@compressType) || "PNG";
			this.compressParam = int(xml.@compressParam);

			//动作列表
			this.actionDatas.splice(0, this.actionDatas.length);
			for each (var action_xml:XML in xml.action)
			{
				var action:ActionData = new ActionData();
				action.decode(action_xml, this.actionDatas.length);
				this.actionDatas.push(action);
			}

			//资源列表
			if (xml.asset.length() > 0)
			{
				this.assetDatas.splice(0, this.assetDatas.length);
				for each (var asset_xml:XML in xml.asset)
				{
					var asset:AssetData = new AssetData();
					asset.decode(asset_xml, this.assetDatas.length);
					this.assetDatas.push(asset);
					_assetMap[asset.className] = asset;
				}

				//补全元件资源名称
				for each (var ad:ActionData in this.actionDatas)
				{
					for each (var ld:LayerData in ad.layerDatas)
					{
						for each (var fd:FrameData in ld.frameDatas)
						{
							if (!(fd.element is ElementData)) continue;
							var element:ElementData = fd.element as ElementData;
							if (element.assetName) continue;
							if (!(element.assetClassName in _assetMap)) continue;
							element.assetName = (_assetMap[element.assetClassName] as AssetData).assetName;
						}
					}
				}
			}
		}

		/**
		 * 生成库XML
		 */
		public function encodeLibrary():XML
		{
			var xml:XML = <library/>;

			for each (var asset:AssetData in this.assetDatas)
			{
				var item:XML = <item/>;
				item.@name = asset.assetName;
				item.@x = asset.x;
				item.@y = asset.y;
				item.@width = asset.width;
				item.@height = asset.height;
				xml.appendChild(item);
			}

			return xml;
		}

		/**
		 * 从库XML解析
		 */
		public function decodeLibrary(xml:XML):void
		{
			this.assetDatas.splice(0, this.assetDatas.length);
			for each (var item_xml:XML in xml.item)
			{
				if (String(item_xml.@isBranch) == "true") continue;

				var asset:AssetData = new AssetData();
				asset.decode(item_xml, this.assetDatas.length);
				this.assetDatas.push(asset);
				_assetMap[asset.className] = asset;
			}
		}
	}
}
