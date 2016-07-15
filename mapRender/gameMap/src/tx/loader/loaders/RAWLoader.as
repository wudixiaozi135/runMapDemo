package tx.loader.loaders 
{
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.HTTPStatusEvent;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;
	import flash.utils.clearTimeout;
	import flash.utils.setTimeout;
	
	import tx.loader.FileManager;
	import tx.loader.events.LoadEvent;

	public class RAWLoader extends EventDispatcher implements IFileLoader
	{
		// static members
		//*************************************************
		/**
		 * 服务器响应超时
		 */
		public static const TIME_OUT:uint = 5 * 1000;
		
		/**
		 * 最大重试次数
		 */
		public static const MAX_RELOAD_COUNT:uint = 2;
		
		// instance members
		//*************************************************
		protected var _url:String;
		
		private var _data:ByteArray;
		private var _loader:URLLoader;
		
		protected var _status:int;
		protected var _reloadCount:uint;
		
		protected var _loading:Boolean;
		protected var _timer:uint;
		
		/**
		 * 构造函数
		 * create a [BinaryLoader] object
		 */
		public function RAWLoader()
		{
			
		}
		
		/* INTERFACE com.tencent.morefun.framework.net.loaders.IFileLoader */
		
		public function load(url:String):void 
		{
			if (!url) return;
			
			_url = url;
			
			_reloadCount = 0;
			_loading = true;
			
			start();
		}
		
		/**
		 * 开始加载逻辑
		 */
		protected function start():void
		{
			_loader && dispose();
			
			_loader = new URLLoader();
			_loader.dataFormat = URLLoaderDataFormat.BINARY;
			
			clearTimeout(_timer);
			listen(_loader);
			
			_timer = setTimeout(timeout, TIME_OUT * (_reloadCount + 1));
			_loader.load(new URLRequest(FileManager.getQualifiedUrl(_url) + _reloadURIComponent));
		}
		
		private function get _reloadURIComponent():String
		{
			return _reloadCount > 0? ("?reload=" + _reloadCount) : "";
		}
		
		/**
		 * 重新加载
		 */
		private function reload():void
		{
			_reloadCount++;
			_status = 0;
			
			start();
		}
		
		/**
		 * 服务器响应超时
		 */
		private function timeout():void
		{
			if (_reloadCount >= MAX_RELOAD_COUNT)
			{
				log("failure->timeout:", _url + _reloadURIComponent);
				dispose();
				
				finish();
				dispatchEvent(new LoadEvent(LoadEvent.TIME_OUT, _url));
				return;
			}
			
			log("reload->timeout:", _url + _reloadURIComponent);
			reload();
		}
		
		/**
		 * 添加事件侦听
		 */
		protected function listen(loader:URLLoader):void
		{
			if (!loader) return;
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, completeHandler);
			loader.addEventListener(IOErrorEvent.IO_ERROR, completeHandler);
			loader.addEventListener(HTTPStatusEvent.HTTP_STATUS, statusHandler);
			loader.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			loader.addEventListener(Event.COMPLETE, completeHandler);
		}
		
		/**
		 * 取消事件侦听
		 */
		protected function unlisten(loader:URLLoader):void
		{
			if (!loader) return;
			loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, completeHandler);
			loader.removeEventListener(IOErrorEvent.IO_ERROR, completeHandler);
			loader.removeEventListener(HTTPStatusEvent.HTTP_STATUS, statusHandler);
			loader.removeEventListener(ProgressEvent.PROGRESS, progressHandler);
			loader.removeEventListener(Event.COMPLETE, completeHandler);
		}
		
		/**
		 * 加载进度处理
		 */
		protected function progressHandler(e:ProgressEvent):void 
		{			
			clearTimeout(_timer);
			
			if (length)
			{
				if (e.bytesTotal > e.bytesLoaded)
				{
					_timer = setTimeout(timeout, TIME_OUT * (_reloadCount + 1));
				}
				else
				{
					// 文件加载完成后检查事件派发超时情况
					//_timer = setTimeout(completeEventTimeout, TIME_OUT * (_reloadCount + 1));
				}
			}
			
			dispatchEvent(new LoadEvent(LoadEvent.PROGRESS, _url, e));
		}
		
		/**
		 * 文件加载完成事件派发超时自动运行
		 */
		private function completeEventTimeout():void
		{
			completeHandler(new Event(Event.COMPLETE));
		}
		
		/**
		 * HTTP状态码
		 */
		protected function statusHandler(e:HTTPStatusEvent):void 
		{
			_status = e.status;
		}
		
		/**
		 * 加载结束处理
		 */
		protected function completeHandler(e:Event):void 
		{
			if (!_loader) 
			{
				log("[" + _url + "as_core_1451031566_638" + e.toString());
				return;
			}
			
			if (e is ErrorEvent) 
			{
				e.preventDefault();
				log((e as ErrorEvent).text);
			}
			
			_loading = false;
			
			clearTimeout(_timer);
			unlisten(_loader);
			
			if (e.type == Event.COMPLETE)
			{
				_data = _loader.data as ByteArray;
				
				if (!_data && _reloadCount < MAX_RELOAD_COUNT)
				{
					log("reload->invalide:", _url + _reloadURIComponent);
					reload(); return;
				}
				
				try
				{
					_data.uncompress();
				}
				catch (error:Error) { }
				
				dispatchEvent(new LoadEvent(LoadEvent.COMPLETE, _url));
				finish();
			}
			else
			if (_reloadCount < MAX_RELOAD_COUNT)
			{
				log("reload->" + e.type + ":", _url + _reloadURIComponent);
				reload();
			}
			else
			{
				log("failure->" + e.type + ":", _url + _reloadURIComponent);
				dispatchEvent(new LoadEvent(LoadEvent.ERROR, _url, e));
				finish();
			}
		}
		
		/**
		 * 中断进程
		 */
		public function abort():void 
		{
			clearTimeout(_timer);
			
			try
			{
				_loader.close();
			}
			catch (err:Error) { }
			
			if (_loading && _status == 0)
			{
				dispatchEvent(new LoadEvent(LoadEvent.ABORT, _url));
			}
		}
		
		/**
		 * 垃圾回收
		 */
		public function dispose():void 
		{
			clearTimeout(_timer);
			if (_loader)
			{
				try
				{
					_loader.close();
				}
				catch (error:Error) { }
				
				if (_loader.data)
				{
					_loader.data.clear();
					_loader.data = null;
				}
				
				unlisten(_loader);
			}
			
			if (_data)
			{
				_data.clear();
				_data = null;
			}
			
			_loader = null;
		}
		
		/* INTERFACE com.tencent.morefun.framework.net.loaders.IFileLoader */
		
		public function loadBytes(data:ByteArray, url:String):void 
		{
			_data = data; _url = url;
			
			if (!_data || !_url)
			{
				throw new ArgumentError("as_core_1451031566_639" + (data? ("bytes:" + data.length) : null) + ", url = " + url );
			}
			
			try
			{
				_data.uncompress();
			}
			catch (error:Error) { }
			
			dispatchEvent(new LoadEvent(LoadEvent.COMPLETE, _url));
			finish();
		}
		
		/* INTERFACE com.tencent.morefun.framework.net.loaders.IFileLoader */
		
		protected function finish():void 
		{
			dispatchEvent(new LoadEvent(LoadEvent.FINISH, _url));
		}
		
		/**
		 * log输出函数
		 */
		protected function log(...list):void
		{
			trace("[RAWLoader]", list.join(" "));
		}
		
		/**
		 * 文件对应url
		 */
		public function get url():String { return _url; }
		
		/**
		 * 文件对应二进制数据
		 */
		public function get data():ByteArray { return _data; }
		
		/**
		 * HTTP网络状态码
		 */
		public function get status():int { return _status; }
		
		/**
		 * 是否正在加载中
		 */
		public function get loading():Boolean { return _loading; }
	}
}