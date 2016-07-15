package tx.loader.loaders 
{	import flash.utils.ByteArray;
	import flash.utils.Dictionary;

	public class PKGLoader extends RAWLoader
	{
		private var _assets:Dictionary;
		
		/**
		 * 构造函数
		 * create a [PKGLoader] object
		 */
		public function PKGLoader() 
		{
			
		}
		
		override protected function finish():void 
		{
			if (data)
			{
				_assets = new Dictionary(true);
				
				data.position = 0;
				
				var url:String;
				var bytes:ByteArray, length:uint;
				while (data.bytesAvailable)
				{
					url = data.readUTF();
					length = data.readUnsignedInt();
					if (data.bytesAvailable >= length)
					{
						bytes = new ByteArray();
						data.readBytes(bytes, 0, length);
						
						_assets[url] = bytes;
					}
				}
			}
			
			super.finish();
		}
		
		override public function dispose():void 
		{
			super.dispose();
			_assets = null;
		}
		
		/**
		 * 文件列表
		 */
		public function get assets():Dictionary { return _assets; }
	}

}