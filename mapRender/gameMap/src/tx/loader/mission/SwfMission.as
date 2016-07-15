package tx.loader.mission
{

	import tx.loader.LoaderEvent;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLRequest;
	import flash.system.ImageDecodingPolicy;
	import flash.system.LoaderContext;

	public class SwfMission extends LoaderMission
	{
		public function SwfMission(name:String, path:String, useCache:Boolean=true, cacheType:uint=1, key:String=null, data:Object=null)
		{
			super(name, path, useCache, cacheType, key, data);
		}
		
		override protected function loaderStart(useCache:Boolean):void
		{
			loaderAbort();
			
			retryTime ++;
			
			if(retryTime > MAX_RETRY_COUNT)
			{
				dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_ERROR,0,0,this));
				return;
			}
			
			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,handler);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,handler);
			//loader.loadBytes(useBytes,new LoaderContext(false,applicationDomain));
			var context:LoaderContext = new LoaderContext(false,applicationDomain);
			context.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
			loader.load(new URLRequest(getQaulifiedUrl(path)), context);
		}
		
		override protected function frame(event:Event):void
		{
			sprite.removeEventListener(Event.ENTER_FRAME,frame);
			
			dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_COMPLETE,0,0,this));
		}
		
		override protected function handler(event:Event):void
		{
			loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,handler);
			loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,handler);
			
			if(event.type == Event.COMPLETE)
			{
				complete();	
			}else
			{
				trace("as_core_1451031566_637");
				error();
			}
		}
	}
}