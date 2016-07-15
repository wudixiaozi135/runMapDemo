package tx.loader.mission
{

	import flash.display.DisplayObjectContainer;
	import flash.display.Loader;
	
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.system.ImageDecodingPolicy;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;

	public class LoaderMission extends Mission
	{
		public var loader:Loader;
		public function LoaderMission(name:String, path:String, useCache:Boolean=true, cacheType:uint=1, key:String=null, data:Object=null)
		{
			super(name, path, useCache, cacheType, key, data);
		}
		
		override public function convert(source:ByteArray):void
		{
			if(destroyed)
			{
				return;
			}
			
			original = source;
			
			var useBytes:ByteArray = bytes;
			uncompress(useBytes);
			
			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,handler);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,handler);
			var context:LoaderContext = new LoaderContext(false,applicationDomain);
			context.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
			context.allowCodeImport = true;
			loader.loadBytes(decryptSWF(useBytes), context);
		}
		
		protected function handler(event:Event):void
		{
			loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,handler);
			loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,handler);
			
			if(event.type == Event.COMPLETE)
			{
				if((loader.content is DisplayObjectContainer) && (loader.content as DisplayObjectContainer).numChildren != 0)
				{
					throw new Error(path + "as_core_1451031566_634");
				}
				complete();	
			}else
			{
				trace("as_core_1451031566_635");
				error();
			}
		}
		
		override public function destroy():void
		{
			loader.unloadAndStop();
			loader = null;
			
			super.destroy();
		}
	}
}