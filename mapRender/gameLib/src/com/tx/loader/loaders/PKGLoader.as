package com.tx.loader.loaders
{
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;

	/**
	 * PKG文件加载
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class PKGLoader extends RAWLoader
	{
		private var _assets:Dictionary;	//资源列表

		/**
		 * 构造函数
		 * create a [PKGLoader] object
		 */
		public function PKGLoader()
		{

		}

		/**
		 * 资源列表
		 * @return 资源列表
		 *
		 */
		public function get assets():Dictionary
		{
			return _assets;
		}

		/**
		 * 加载完成
		 *
		 */
		override protected function finish():void
		{
			if (this.data)
			{
				_assets = new Dictionary(true);

				this.data.position = 0;

				var url:String;
				var bytes:ByteArray, length:uint;
				while (this.data.bytesAvailable)
				{
					url = this.data.readUTF();
					length = this.data.readUnsignedInt();
					if (this.data.bytesAvailable >= length)
					{
						bytes = new ByteArray();
						this.data.readBytes(bytes, 0, length);

						_assets[url] = bytes;
					}
				}
			}

			super.finish();
		}

		/**
		 * 垃圾回收
		 *
		 */
		override public function dispose():void
		{
			super.dispose();
			_assets = null;
		}
	}
}