package com.tx.loader.loaders
{
	import flash.system.System;

	/**
	 * XML文件加载
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class XMLLoader extends RAWLoader
	{
		private var _xml:XML;	//xml数据

		/**
		 * 构造函数
		 * create a [XMLLoader] object
		 *
		 */
		public function XMLLoader()
		{

		}

		/**
		 * 获取xml数据
		 * @return xml数据
		 *
		 */
		public function get xml():XML
		{
			return _xml;
		}

		/**
		 * 加载结束
		 *
		 */
		override protected function finish():void
		{
			if (this.data)
			{
				_xml = new XML(this.data);
			}

			super.dispose();
			super.finish();
		}

		/**
		 * 垃圾回收
		 *
		 */
		override public function dispose():void
		{
			super.dispose();

			_xml && System.disposeXML(_xml);
			_xml = null;
		}
	}
}