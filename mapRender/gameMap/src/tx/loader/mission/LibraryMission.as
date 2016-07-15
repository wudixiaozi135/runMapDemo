package tx.loader.mission
{

	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;
	import nochump.util.zip.ZipEntry;
	import nochump.util.zip.ZipFile;

	public class LibraryMission extends LoaderMission
	{
		public function LibraryMission(name:String, path:String, useCache:Boolean=true, cacheType:uint=1, key:String=null, data:Object=null)
		{
			super(name, path, useCache, cacheType, key, data);
		}
		
		override public function convert(source:ByteArray):void
		{
			original = source;
			
			var useBytes:ByteArray = bytes;
			
			uncompress(useBytes);
			
			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,handler);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,handler);
			
			useBytes.position = 0;
			var zipFile:ZipFile = new ZipFile(useBytes);
			var zipEntry:ZipEntry = zipFile.getEntry("library.swf");
			useBytes = zipFile.getInput(zipEntry);
			
			loader.loadBytes(useBytes,new LoaderContext(false,applicationDomain));
		}
	}
}