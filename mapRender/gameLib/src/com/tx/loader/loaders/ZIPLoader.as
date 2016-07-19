package com.tx.loader.loaders
{
	import flash.utils.ByteArray;

	import nochump.util.zip.ZipEntry;
	import nochump.util.zip.ZipFile;

	/**
	 * ZIP文件加载
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class ZIPLoader extends RAWLoader
	{
		private var _zip:ZipFile;	//zip文件

		/**
		 * 构造函数
		 * create a [ZIPLoader] object
		 */
		public function ZIPLoader()
		{

		}

		/**
		 * 获取ZIP对象
		 * @return ZIP对象
		 *
		 */
		public function get zip():ZipFile
		{
			return _zip;
		}

		/**
		 * 获取文件二进制
		 * @param name    压缩文件路径名
		 * @return        文件二进制
		 *
		 */
		public function getItem(name:String):ByteArray
		{
			if (!_zip)
			{
				return null;
			}

			var entry:ZipEntry = _zip.getEntry(name);
			if (entry)
			{
				return _zip.getInput(entry);
			}

			return null;
		}

		/**
		 * 加载结束
		 *
		 */
		override protected function finish():void
		{
			if (this.data)
			{
				_zip = new ZipFile(this.data);
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

			_zip = null;
		}
	}
}