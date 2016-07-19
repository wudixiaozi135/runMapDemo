package com.tx.loader.loaders
{
	import com.tx.loader.events.LoadEvent;

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

	/**
	 * SWF文件加载
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class SWFLoader extends EventDispatcher implements IFileLoader
	{
		private var _raw:RAWLoader;					//RAW加载器
		private var _loader:Loader;					//加载器

		protected var data:ByteArray;				//二进制数据
		protected var _domain:ApplicationDomain;	//程序域

		protected var _loading:Boolean;				//是否正在加载
		protected var timer:uint;					//加载超时时间

		/**
		 * 构造函数
		 * create a [SWFLoader] object
		 * @param domain    程序域
		 *
		 */
		public function SWFLoader(domain:ApplicationDomain = null)
		{
			_domain = domain;
			_raw = new RAWLoader();
		}

		/**
		 * 获取程序域
		 * @return 程序域
		 *
		 */
		public function get domain():ApplicationDomain
		{
			return _domain;
		}

		/**
		 * 获取当前加载文件url
		 * @return 当前加载文件url
		 *
		 */
		public function get url():String
		{
			return _raw.url;
		}

		/**
		 * 是否正在加载
		 * @return 是否正在加载
		 *
		 */
		public function get loading():Boolean
		{
			return _loading;
		}

		/**
		 * 获取加载器信息
		 * @return 加载器信息
		 *
		 */
		public function get loader():Loader
		{
			return _loader;
		}

		/**
		 * 加载
		 * @param url    资源地址
		 *
		 */
		public function load(url:String):void
		{
			if (!url)return;
			this.dispose();

			this._loading = true;
			_raw.addEventListener(LoadEvent.FINISH, finishHandler);
			_raw.addEventListener(LoadEvent.PROGRESS, progressHandler);
			_raw.load(url);
		}

		/**
		 * 加载进度事件
		 * @param e
		 *
		 */
		private function progressHandler(e:LoadEvent):void
		{
			this.dispatchEvent(e);
		}

		/**
		 * 二进制文件加载完成
		 * @param e
		 *
		 */
		private function finishHandler(e:LoadEvent):void
		{
			_raw.removeEventListener(LoadEvent.FINISH, finishHandler);
			_raw.removeEventListener(LoadEvent.PROGRESS, progressHandler);

			if (!_raw.data || _raw.status == 404)
			{
				this.dispatchEvent(new LoadEvent(LoadEvent.FINISH, _raw.url));
			}
			else
			{
				this.data = _raw.data;

				this.loadSWF();
			}
		}

		/**
		 * 加载SWF到内存
		 *
		 */
		protected function loadSWF():void
		{
			var context:LoaderContext = new LoaderContext(false, this._domain);
			context.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
			if ("allowCodeImport" in context)
			{
				context["allowCodeImport"] = true;
			}

			clearTimeout(this.timer);
			this.timer = setTimeout(responseTimeout, RAWLoader.TIME_OUT * 2);

			_loader = new Loader();
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
			_loader.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, uncaughtErrorHandler);
			_loader.loadBytes(decryptSWF(this.data), context);
		}

		/**
		 * 虚拟机处理SWF二进制失败
		 *
		 */
		private function responseTimeout():void
		{
			clearTimeout(this.timer);
			trace("as_core_1451031566_640" + _raw.url);

			if (_loader)
			{
				_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
				_loader.uncaughtErrorEvents.removeEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, uncaughtErrorHandler);
				_loader = null;
			}

			_raw.dispose();
			this.data = null;

			this.dispatchEvent(new LoadEvent(LoadEvent.FINISH, _raw.url));
		}

		/**
		 * 捕捉全局错误
		 * @param e
		 *
		 */
		private function uncaughtErrorHandler(e:UncaughtErrorEvent):void
		{
			//e.preventDefault();
			trace(e);
		}

		/**
		 * SWF内存处理完成处理
		 * @param e
		 *
		 */
		private function completeHandler(e:Event):void
		{
			this._loading = false;
			if (_loader != null)
			{
				_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, arguments.callee);
				_loader.uncaughtErrorEvents.removeEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, uncaughtErrorHandler);
			}

			if (!this._domain)
			{
				this._domain = _loader.contentLoaderInfo.applicationDomain;
			}

			if (_raw)
			{
				_raw.dispose();
			}
			this.data = null;

			clearTimeout(this.timer);
			this.dispatchEvent(new LoadEvent(LoadEvent.COMPLETE, _raw.url));
			this.dispatchEvent(new LoadEvent(LoadEvent.FINISH, _raw.url));
		}

		/**
		 * 中止进程
		 *
		 */
		public function abort():void
		{
			if (_raw.loading && _raw.status == 0)
			{
				_raw.abort();
				this.dispatchEvent(new LoadEvent(LoadEvent.ABORT, _raw.url));
			}
		}

		/**
		 * 垃圾回收
		 *
		 */
		public function dispose():void
		{
			clearTimeout(this.timer);
			this._loading = false;

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
			this.data = null;
		}

		/**
		 * 加载二进制数据
		 * @param data    二进制数据
		 * @param url    资源地址
		 *
		 */
		public function loadBytes(data:ByteArray, url:String):void
		{
			_raw.loadBytes.apply(null, arguments);
			this.data = _raw.data;
			loadSWF();
		}

		/**
		 * 解密SWF二进制文件
		 * @param bytes    二进制数据
		 * @return        二进制数据
		 *
		 */
		protected static function decryptSWF(bytes:ByteArray):ByteArray
		{
			if (ApplicationDomain.currentDomain.hasDefinition("util.decryptSWF"))
			{
				return (getDefinitionByName("util.decryptSWF") as Function).call(null, bytes);
			}

			return bytes;
		}
	}
}