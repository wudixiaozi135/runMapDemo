package tx.loader.mission
{

	import com.adobe.crypto.MD5;
	import tx.loader.FileManager;
	import tx.loader.LoaderEvent;
	import flash.utils.getDefinitionByName;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.SecurityErrorEvent;
	import flash.events.TimerEvent;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.utils.ByteArray;
	import flash.utils.Timer;

	public class Mission extends EventDispatcher
	{
		static public var MAX_RETRY_COUNT:uint = 3;
		
		public var path:String;
		public var useCache:Boolean;
		public var cacheType:uint;
		public var key:String;
		public var data:Object;
		
		public var bytesLoaded:uint;
		public var bytesTotal:uint;
		public var name:String;
		public var priority:uint;
		
		protected var sprite:Sprite;
		
		public var retryTime:uint = 0;
		
		public var destroyed:Boolean;
		
		public var completed:Boolean;
		
		public var base:String = "";
		
		public var applicationDomain:ApplicationDomain;
		
		protected var original:ByteArray;
		
		protected var clock:Timer;
		
		public function Mission(name:String, path:String, useCache:Boolean=true, cacheType:uint=1, key:String=null, data:Object=null)
		{
			this.name		= name;
			this.path 		= path;
			this.useCache	= useCache;
			this.cacheType	= cacheType;
			this.key		= key;
			this.data		= data;
		}
		
		
		override public function toString():String
		{
			return '[Mission(name="'+name+'",path="'+path+'",useCache="'+useCache+'",cacheType="'+cacheType+'",key="'+key+'",data="'+(data?"<object>":"null")+'",bytes="'+(original?"<object>":"null")+'")]';
		}
		
		public function get bytes():ByteArray
		{
			return original;
		}
		
		public function convert(source:ByteArray):void
		{
			if(destroyed)
			{
				return;
			}
			
			original = source;
			
			complete();
		}
		protected function error():void
		{
			loaderStart(false);
		}
		protected function complete():void
		{
			completed = true;
			
			if(!sprite)
			{
				sprite = new Sprite();
				sprite.addEventListener(Event.ENTER_FRAME,frame);
			}
		}
		protected function frame(event:Event):void
		{
			sprite.removeEventListener(Event.ENTER_FRAME,frame);
			
			dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_PROGRESS,bytes.length,bytes.length,this));
			dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_COMPLETE,bytes.length,bytes.length,this));
		}
		
		public function destroy():void
		{
			if(destroyed)
			{
				return;
			}
			
			destroyed = true;
			
			applicationDomain = null;
			original = null;
			data = null;
			
			loaderAbort();
			if(ldr)
			{
				ldr.data.clear();
				ldr.data = null;
				ldr.removeEventListener(Event.COMPLETE,loaderHandler);
				ldr.removeEventListener(IOErrorEvent.IO_ERROR,loaderHandler);
				ldr.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,loaderHandler);
				ldr.removeEventListener(ProgressEvent.PROGRESS,loaderHandler);
				ldr = null;
				
				clock.reset();
				clock.removeEventListener(TimerEvent.TIMER_COMPLETE,timeOut);
				clock = null;
			}
			
			if(sprite)
			{
				sprite.removeEventListener(Event.ENTER_FRAME,frame);
				sprite = null;
			}
			this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_DESTROY));
		}
		
		public function getClass(def:String):Class
		{
			if(destroyed)
			{
				return null;
			}
			var c:Class;
			try
			{
				c = applicationDomain.getDefinition(def) as Class;
			}catch(error:Error){};
			return c;
		}
		
		public function createObject(def:String):Object
		{
			var c:Class = getClass(def);
			return c?new c:null;
		}
		
		
		
		
		
		
		
		
		protected var ldr:URLLoader;
		public function start(bytes:ByteArray):void
		{
			if(destroyed)
			{
				return;
			}
			retryTime = 0;
			dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_START,0,0,this));
			dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_PROGRESS,0,0,this));
			
			validate(bytes);
		}
		
		public function abort():void
		{
			if(destroyed)
			{
				return;
			}
			if(sprite)
			{
				sprite.removeEventListener(Event.ENTER_FRAME,frame);
			}
			loaderAbort();
			dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_ABORT,0,0,this));
		}
		
		/**
		 * 获取带有版本号的URL
		 */
		protected function getQaulifiedUrl(url:String):String
		{
			return FileManager.getQualifiedUrl(url);
		}
		
		protected function loaderStart(useCache:Boolean):void
		{
			loaderAbort();
			
			retryTime ++;
			
			if(retryTime > MAX_RETRY_COUNT)
			{
				dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_ERROR,0,0,this));
				return;
			}
			
			if(!ldr)
			{
				ldr = new URLLoader();
				ldr.addEventListener(Event.COMPLETE,loaderHandler);
				ldr.addEventListener(IOErrorEvent.IO_ERROR,loaderHandler);
				ldr.addEventListener(SecurityErrorEvent.SECURITY_ERROR,loaderHandler);
				ldr.addEventListener(ProgressEvent.PROGRESS,loaderHandler);
				ldr.dataFormat = URLLoaderDataFormat.BINARY;
				//增加一个应答超时,如果1秒内不回包的话发起另一个请求
				clock = new Timer(2000,1);
				clock.addEventListener(TimerEvent.TIMER_COMPLETE,timeOut);
			}
			if(retryTime == MAX_RETRY_COUNT)
			{
				clock.delay = 5000;
			}
			
			path = getQaulifiedUrl(path);
			//if(useCache)
			//{
			ldr.load(new URLRequest(path));
			//}else
			//{
			//				var request:URLRequest = new URLRequest(base+path);
			//				request.requestHeaders = [new URLRequestHeader("If-Modified-Since","0")];
			//				ldr.load(request);
			//ldr.load(new URLRequest(path + "?t=" + (new Date()).getTime()));
			//}
			
			clock.reset();
			clock.start();
		}
		protected function timeOut(event:TimerEvent):void
		{
			ldr.dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR,false,false,"connect timeout"));
		}
		protected function loaderAbort():void
		{
			if(ldr)
			{
				clock.stop();
				try
				{
					ldr.close();
				}catch(error:Error){};
			}
		}
		protected function validate(bytes:ByteArray):void
		{
			if(!bytes)
			{
				loaderStart(useCache);
				return;
			}
			//需验证
			if(key)
			{
				var checkKey:String = getKey(bytes);
				if(checkKey == key)
				{
					//验证通过,开始转换
					convert(bytes);
				}else
				{
					trace("[CACHE]","as_core_1451031566_636",name,"s=",key,"t=",checkKey);
					//重试
					loaderStart(false);
				}
			}else
			{
				//开始转换
				convert(bytes);
			}
		}
		protected function loaderHandler(event:Event):void
		{
			//任何一个事件,计时结束
			if(clock.running)
			{
				clock.stop();
			}
			switch(event.type)
			{
				case ProgressEvent.PROGRESS:
					var pe:ProgressEvent = event as ProgressEvent;
					bytesLoaded = pe.bytesLoaded;
					bytesTotal = pe.bytesTotal;
					dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_PROGRESS,bytesLoaded,bytesTotal,this));
					break;
				
				case Event.COMPLETE:
					validate(ldr.data);
					break;
				
				case IOErrorEvent.IO_ERROR:
				case SecurityErrorEvent.SECURITY_ERROR:
					//重试
					loaderStart(false);
					break;
			}
		}
		
		static public function getKey(bytes:ByteArray):String
		{
			if(!bytes)
			{
				return null;
			}
			if(bytes.length<1024*15)
			{
				return MD5.hashBytes(bytes);
			}
			var byte:ByteArray = new ByteArray();
			bytes.position = 0;
			bytes.readBytes(byte,0,10*1024);
			bytes.position = bytes.length-5*1024;
			bytes.readBytes(byte,byte.length,0);
			return MD5.hashBytes(byte);
		}
		static public function copyBytes(bytes:ByteArray):ByteArray
		{
			if(!bytes)
			{
				return null;
			}
			var newBytes:ByteArray = new ByteArray();
			bytes.position = 0;
			bytes.readBytes(newBytes);
			return newBytes;
		}
		
		/**
		 * 解密SWF二进制文件
		 */
		public static function decryptSWF(bytes:ByteArray):ByteArray
		{
			return (getDefinitionByName("util.decryptSWF") as Function).call(null, bytes);
		}
		
		static public function uncompress(bytes:ByteArray):void
		{
			try
			{
				bytes.uncompress();
			}catch(error:Error){};
		}
	}
}