package tx.loader.loaders 
{
	import flash.utils.ByteArray;
	
	import nochump.util.zip.ZipEntry;
	import nochump.util.zip.ZipFile;

	public class ZIPLoader extends RAWLoader
	{
		private var _zip:ZipFile;
		
		/**
		 * 构造函数
		 * create a [ZIPLoader] object
		 */
		public function ZIPLoader()
		{
			
		}
		
		/**
		 * 获取文件二进制
		 * @param	name	压缩文件路径名
		 */
		public function getItem(name:String):ByteArray
		{
			if (!_zip) return null;
			var entry:ZipEntry = _zip.getEntry(name);
			if (entry)
			{
				return _zip.getInput(entry);
			}
			
			return null;
		}
		
		override protected function finish():void 
		{
			if (data)
			{
				_zip = new ZipFile(data);
			}
			
			super.finish();
		}
		
		override public function dispose():void 
		{
			super.dispose();
			
			_zip = null;
		}
		
		/**
		 * ZIP对象
		 */
		public function get zip():ZipFile { return _zip; }
	}

}