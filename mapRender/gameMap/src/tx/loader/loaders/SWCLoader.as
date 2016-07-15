package tx.loader.loaders 
{	import flash.system.ApplicationDomain;
	import nochump.util.zip.ZipFile;

	public class SWCLoader extends SWFLoader
	{
		
		/**
		 * 构造函数
		 * create a [SWCLoader] object
		 */
		public function SWCLoader(domain:ApplicationDomain = null) 
		{
			super(domain);
		}
		
		override protected function loadSWF():void 
		{
			var zip:ZipFile = new ZipFile(_data);
			
			_data = zip.getInput(zip.getEntry("library.swf"));
			
			super.loadSWF();
		}
	}

}