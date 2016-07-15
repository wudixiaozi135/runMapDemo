package tx.loader.loaders 
{	import flash.system.System;

	public class XMLLoader extends RAWLoader
	{
		private var _xml:XML;
		
		/**
		 * 构造函数
		 * create a [XMLLoader] object
		 */
		public function XMLLoader() 
		{
			
		}
		
		override protected function finish():void 
		{
			if (data)
			{
				_xml = new XML(data);
			}
			
			super.dispose();
			super.finish();
		}
		
		override public function dispose():void 
		{
			super.dispose();
			
			_xml && System.disposeXML(_xml);
			_xml = null;
		}
		
		public function get xml():XML { return _xml; }
	}

}