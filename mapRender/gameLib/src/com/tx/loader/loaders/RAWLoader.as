package com.tx.loader.loaders
{
	import com.tx.loader.FileManager;
	import com.tx.loader.events.LoadEvent;

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

	/**
	 * RAW加载
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class RAWLoader extends EventDispatcher implements IFileLoader
	{
		/** 服务器响应超时 */
		public static const TIME_OUT:uint = 5 * 1000;

		/** 最大重试次数 */
		public static const MAX_RELOAD_COUNT:uint = 2;

		private var _data:ByteArray;		//加载数据
		private var _loader:URLLoader;		//加载器

		protected var _url:String;			//加载地址
		protected var _status:int;			//HTTP网络状态码
		protected var reloadCount:uint;		//重新加载次数

		protected var _loading:Boolean;		//是否正在加载
		protected var timer:uint;			//加载超时事件

		/**
		 * 构造函数
		 * create a [BinaryLoader] object
		 */
		public function RAWLoader()
		{

		}

		/**
		 * 资源url
		 * @return 资源url
		 *
		 */
		public function get url():String
		{
			return _url;
		}

		/**
		 * 资源对应二进制数据
		 * @return 资源二进制数据
		 *
		 */
		public function get data():ByteArray
		{
			return _data;
		}

		/**
		 * HTTP网络状态码
		 * @return HTTP网络状态码
		 *
		 */
		public function get status():int
		{
			return _status;
		}

		/**
		 * 是否正在加载中
		 * @return 是否在加载中
		 *
		 */
		public function get loading():Boolean
		{
			return _loading;
		}

		/**
		 * 获取加载版本号
		 * @return String
		 *
		 */
		private function get _reloadURIComponent():String
		{
			return reloadCount > 0 ? ("?reload=" + reloadCount) : "";
		}

		/**
		 * 加载
		 * @param url    资源地址
		 *
		 */
		public function load(url:String):void
		{
			if (!url) return;

			this._url = url;

			this.reloadCount = 0;
			this._loading = true;

			start();
		}

		/**
		 * 开始加载逻辑
		 *
		 */
		protected function start():void
		{
			_loader && this.dispose();

			_loader = new URLLoader();
			_loader.dataFormat = URLLoaderDataFormat.BINARY;

			clearTimeout(this.timer);
			listen(_loader);

			this.timer = setTimeout(timeout, TIME_OUT * (this.reloadCount + 1));
			_loader.load(new URLRequest(FileManager.getQualifiedUrl(this._url) + _reloadURIComponent));
		}

		/**
		 * 重新加载
		 *
		 */
		private function reload():void
		{
			this.reloadCount++;
			this._status = 0;

			start();
		}

		/**
		 * 服务器响应超时
		 *
		 */
		private function timeout():void
		{
			if (reloadCount >= MAX_RELOAD_COUNT)
			{
				this.log("failure->timeout:", this._url + _reloadURIComponent);
				this.dispose();

				this.finish();
				this.dispatchEvent(new LoadEvent(LoadEvent.TIME_OUT, this._url));
				return;
			}

			this.log("reload->timeout:", this._url + _reloadURIComponent);
			reload();
		}

		/**
		 * 添加事件侦听
		 * @param loader    加载器
		 *
		 */
		protected function listen(loader:URLLoader):void
		{
			if (!loader)return;
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.completeHandler);
			loader.addEventListener(IOErrorEvent.IO_ERROR, this.completeHandler);
			loader.addEventListener(HTTPStatusEvent.HTTP_STATUS, this.statusHandler);
			loader.addEventListener(ProgressEvent.PROGRESS, this.progressHandler);
			loader.addEventListener(Event.COMPLETE, this.completeHandler);
		}

		/**
		 * 取消事件侦听
		 * @param loader    加载器
		 *
		 */
		protected function unlisten(loader:URLLoader):void
		{
			if (!loader)return;
			loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, this.completeHandler);
			loader.removeEventListener(IOErrorEvent.IO_ERROR, this.completeHandler);
			loader.removeEventListener(HTTPStatusEvent.HTTP_STATUS, this.statusHandler);
			loader.removeEventListener(ProgressEvent.PROGRESS, this.progressHandler);
			loader.removeEventListener(Event.COMPLETE, this.completeHandler);
		}

		/**
		 * 加载进度处理
		 * @param e
		 *
		 */
		protected function progressHandler(e:ProgressEvent):void
		{
			clearTimeout(this.timer);

			if (length)
			{
				if (e.bytesTotal > e.bytesLoaded)
				{
					this.timer = setTimeout(timeout, TIME_OUT * (this.reloadCount + 1));
				}
				else
				{
					// 文件加载完成后检查事件派发超时情况
					//timer = setTimeout(completeEventTimeout, TIME_OUT * (reloadCount + 1));
				}
			}

			this.dispatchEvent(new LoadEvent(LoadEvent.PROGRESS, this._url, e));
		}

		/**
		 * 文件加载完成事件派发超时自动运行
		 *
		 */
		private function completeEventTimeout():void
		{
			this.completeHandler(new Event(Event.COMPLETE));
		}

		/**
		 * HTTP状态码
		 * @param e
		 *
		 */
		protected function statusHandler(e:HTTPStatusEvent):void
		{
			this._status = e.status;
		}

		/**
		 * 加载结束处理
		 * @param e
		 *
		 */
		protected function completeHandler(e:Event):void
		{
			if (!_loader)
			{
				this.log("[" + this._url + "as_core_1451031566_638" + e.toString());
				return;
			}

			if (e is ErrorEvent)
			{
				e.preventDefault();
				this.log((e as ErrorEvent).text);
			}

			this._loading = false;

			clearTimeout(this.timer);
			this.unlisten(_loader);

			if (e.type == Event.COMPLETE)
			{
				_data = _loader.data as ByteArray;

				if (!_data && this.reloadCount < MAX_RELOAD_COUNT)
				{
					this.log("reload->invalide:", this._url + _reloadURIComponent);
					reload();
					return;
				}

				try
				{
					_data.uncompress();
				}
				catch (error:Error)
				{

				}

				this.dispatchEvent(new LoadEvent(LoadEvent.COMPLETE, this._url));
				this.finish();
			}
			else if (this.reloadCount < MAX_RELOAD_COUNT)
			{
				this.log("reload->" + e.type + ":", this._url + _reloadURIComponent);
				reload();
			}
			else
			{
				this.log("failure->" + e.type + ":", this._url + _reloadURIComponent);
				this.dispatchEvent(new LoadEvent(LoadEvent.ERROR, this._url, e));
				this.finish();
			}
		}

		/**
		 * 中断进程
		 *
		 */
		public function abort():void
		{
			clearTimeout(this.timer);

			try
			{
				_loader.close();
			}
			catch (err:Error)
			{

			}

			if (this._loading && this._status == 0)
			{
				this.dispatchEvent(new LoadEvent(LoadEvent.ABORT, this._url));
			}
		}

		/**
		 * 垃圾回收
		 *
		 */
		public function dispose():void
		{
			clearTimeout(this.timer);
			if (_loader)
			{
				try
				{
					_loader.close();
				}
				catch (error:Error)
				{

				}

				if (_loader.data)
				{
					_loader.data.clear();
					_loader.data = null;
				}

				this.unlisten(_loader);
			}

			if (_data)
			{
				_data.clear();
				_data = null;
			}

			_loader = null;
		}

		/**
		 * 加载二进制数据
		 * @param data    二进制数据
		 * @param url    资源地址
		 *
		 */
		public function loadBytes(data:ByteArray, url:String):void
		{
			_data = data;
			this._url = url;

			if (!_data || !this._url)
			{
				throw new ArgumentError("as_core_1451031566_639" + (data ? ("bytes:" + data.length) : null) + ", url = " + url);
			}

			try
			{
				_data.uncompress();
			}
			catch (error:Error)
			{

			}

			this.dispatchEvent(new LoadEvent(LoadEvent.COMPLETE, this._url));
			this.finish();
		}

		/**
		 * 加载结束
		 *
		 */
		protected function finish():void
		{
			this.dispatchEvent(new LoadEvent(LoadEvent.FINISH, this._url));
		}

		/**
		 * log输出函数
		 * @param list    输出参数
		 *
		 */
		protected function log(...list):void
		{
			trace("[RAWLoader]", list.join(" "));
		}
	}
}