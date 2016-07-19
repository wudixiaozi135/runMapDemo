package com.tx.loader.loaders
{
	/**
	 * TXT文件加载
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class TXTLoader extends RAWLoader
	{
		private var _content:String;	//文本内容
		private var _encoding:String;	//字符格式

		/**
		 * 构造函数
		 * create a [TextLoader] object
		 * @param encoding    字符格式（默认utf-8）
		 *
		 */
		public function TXTLoader(encoding:String = "utf-8")
		{
			_encoding = encoding;
		}

		/**
		 * 获取文本内容
		 * @return 文本内容
		 *
		 */
		public function get content():String
		{
			return _content;
		}

		/**
		 * 加载结束
		 *
		 */
		override protected function finish():void
		{
			if (this.data)
			{
				this.data.position = 0;

				_content = this.data.readMultiByte(this.data.length, _encoding);
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

			_content = null;
		}
	}
}