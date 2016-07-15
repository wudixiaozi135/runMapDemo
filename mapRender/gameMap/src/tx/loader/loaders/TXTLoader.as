package tx.loader.loaders 
{	public class TXTLoader extends RAWLoader
	{
		private var _content:String;
		private var _encoding:String;
		
		/**
		 * 构造函数
		 * create a [TextLoader] object
		 */
		public function TXTLoader(encoding:String = "utf-8") 
		{
			_encoding = encoding;
		}
		
		override protected function finish():void 
		{
			if (data)
			{
				data.position = 0;
				
				_content = data.readMultiByte(data.length, _encoding);
			}
			
			super.dispose();
			super.finish();
		}
		
		override public function dispose():void 
		{
			super.dispose();
			
			_content = null;
		}
		
		public function get content():String { return _content; }
	}

}