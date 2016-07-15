package tx.loader.loaders 
{
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.UncaughtErrorEvent;
	import flash.system.ApplicationDomain;
	import flash.system.ImageDecodingPolicy;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;
	import flash.utils.clearTimeout;
	import flash.utils.getDefinitionByName;
	import flash.utils.setTimeout;
	
	import tx.loader.events.LoadEvent;
	
	public class SWFLoader extends EventDispatcher implements IFileLoader
	{
		private var _raw:RAWLoader;
		private var _loader:Loader;
		
		protected var _data:ByteArray;
		protected var _domain:ApplicationDomain;
		
		protected var _loading:Boolean;
		protected var _timer:uint;
		
		/**
		 * 构造函数
		 * create a [SWFLoader] object
		 */
		public function SWFLoader(domain:ApplicationDomain = null) 
		{
			_domain = domain;
			_raw = new RAWLoader();
		}
		
		/* INTERFACE com.tencent.morefun.framework.net.loaders.IFileLoader */
		
		public function load(url:String):void 
		{
			if (!url) return;
			dispose();
			
			_loading = true;
			_raw.addEventListener(LoadEvent.FINISH, finishHandler);
			_raw.addEventListener(LoadEvent.PROGRESS, progressHandler);
			_raw.load(url);
		}
		
		/**
		 * 加载进度事件
		 */
		private function progressHandler(e:LoadEvent):void 
		{
			dispatchEvent(e);
		}
		
		/**
		 * 二进制文件加载完成
		 */
		private function finishHandler(e:LoadEvent):void 
		{
			_raw.removeEventListener(LoadEvent.FINISH, finishHandler);
			_raw.removeEventListener(LoadEvent.PROGRESS, progressHandler);
			
			if (!_raw.data || _raw.status == 404)
			{
				dispatchEvent(new LoadEvent(LoadEvent.FINISH, _raw.url));
			}
			else
			{
				_data = _raw.data;
				
				loadSWF();
			}
		}
		
		/**
		 * 加载SWF到内存
		 */
		protected function loadSWF():void
		{
			var context:LoaderContext = new LoaderContext(false, _domain);
			context.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
			if ("allowCodeImport" in context)
			{
				context["allowCodeImport"] = true;
			}
			
			clearTimeout(_timer);
			_timer = setTimeout(responseTimeout, RAWLoader.TIME_OUT * 2);
			
			_loader = new Loader();
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
			_loader.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, uncaughtErrorHandler);
			_loader.loadBytes(decryptSWF(_data), context);
		}
		
		/**
		 * 虚拟机处理SWF二进制失败
		 */
		private function responseTimeout():void
		{
			clearTimeout(_timer);
			trace("as_core_1451031566_640" + _raw.url);
			
			if (_loader)
			{
				_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
				_loader.uncaughtErrorEvents.removeEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, uncaughtErrorHandler);
				_loader = null;
			}
			
			_raw.dispose();
			_data = null;
			
			dispatchEvent(new LoadEvent(LoadEvent.FINISH, _raw.url));
		}
		
		/**
		 * 解密SWF二进制文件
		 */
		protected static function decryptSWF(bytes:ByteArray):ByteArray
		{
			if (ApplicationDomain.currentDomain.hasDefinition("util.decryptSWF"))
			{
				return (getDefinitionByName("util.decryptSWF") as Function).call(null, bytes);
			}
			
			return bytes;
		}
		
		/**
		 * 捕捉全局错误
		 */
		private function uncaughtErrorHandler(e:UncaughtErrorEvent):void 
		{
			//e.preventDefault();
			trace(e);
		}
		
		/**
		 * SWF内存处理完成处理
		 */
		private function completeHandler(e:Event):void 
		{
			_loading = false;
			if(_loader != null)
			{
				_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
				_loader.uncaughtErrorEvents.removeEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, uncaughtErrorHandler);
			}
			
			if (!_domain)
			{
				_domain = _loader.contentLoaderInfo.applicationDomain;
			}
			
			if(_raw)
			{
				_raw.dispose();
			}
			_data = null;
			
			clearTimeout(_timer);
			dispatchEvent(new LoadEvent(LoadEvent.COMPLETE, _raw.url));
			dispatchEvent(new LoadEvent(LoadEvent.FINISH, _raw.url));
		}
		
		/**
		 * 中止进程
		 */
		public function abort():void
		{
			if (_raw.loading && _raw.status == 0)
			{
				_raw.abort();
				dispatchEvent(new LoadEvent(LoadEvent.ABORT, _raw.url));
			}
		}
		
		/**
		 * 垃圾回收
		 */
		public function dispose():void 
		{
			clearTimeout(_timer);
			_loading = false;
			
			if (_raw)
			{
				_raw.removeEventListener(LoadEvent.FINISH, finishHandler);
				_raw.removeEventListener(LoadEvent.PROGRESS, progressHandler);
				_raw.dispose();
			}
			
			if (_loader)
			{
				_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, completeHandler);
				_loader.uncaughtErrorEvents.removeEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, uncaughtErrorHandler);
				
				try
				{
					_loader.unloadAndStop(true);
				}
				catch (error:Error)
				{
					_loader.unload();
				}
				
				_loader = null;
			}
			_data = null;
		}
		
		/* INTERFACE com.tencent.morefun.framework.net.loaders.IFileLoader */
		
		public function loadBytes(data:ByteArray, url:String):void 
		{
			_raw.loadBytes.apply(null, arguments);
			_data = _raw.data; loadSWF();
		}
		
		/**
		 * 程序域
		 */
		public function get domain():ApplicationDomain { return _domain; }
		
		/**
		 * 当前加载文件url
		 */
		public function get url():String { return _raw.url; }
		
		/**
		 * 是否正在加载
		 */
		public function get loading():Boolean { return _loading; }
		
		/**
		 * 加载器信息
		 */
		public function get loader():Loader { return _loader; }
	}
}