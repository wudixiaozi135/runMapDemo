package tx.loader.mission
{

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.system.ImageDecodingPolicy;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;

	public class ImageMission extends Mission
	{
		public var bitmap:Bitmap;
		private var loader:Loader;
		public function ImageMission(name:String, path:String, useCache:Boolean=true, cacheType:uint=1, key:String=null, data:Object=null)
		{
			super(name, path, useCache, cacheType, key, data);
		}
		
		override public function convert(source:ByteArray):void
		{
			if(destroyed)
			{
				return;
			}
			
			if(original)
			{
				var bitmapData:BitmapData = original.readObject() as BitmapData;
				bitmap = new Bitmap(bitmapData);
				complete();
				return;
			}
			
			var useBytes:ByteArray = copyBytes(source);
			uncompress(useBytes);
			
			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,handler);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,handler);
			var context:LoaderContext = new LoaderContext(false,applicationDomain);
			context.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
			context.allowCodeImport = true;
			loader.loadBytes(useBytes,context);
		}
		
		override public function get bytes():ByteArray
		{
			return original;
		}
		
		protected function handler(event:Event):void
		{
			loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,handler);
			loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,handler);
			
			if(event.type == Event.COMPLETE)
			{
				bitmap = loader.content as Bitmap;
				
				var ba:ByteArray = new ByteArray();
				ba.writeObject(bitmap.bitmapData);
				
				original = ba;
				
				complete();	
			}else
			{
				trace("as_core_1451031566_633");
				error();
			}
		}
	}
}