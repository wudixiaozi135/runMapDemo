package com.tx.loader.mission
{
	import com.adobe.crypto.MD5;
	import com.tx.loader.FileManager;
	import com.tx.loader.LoaderEvent;

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
	import flash.utils.getDefinitionByName;

	/**
	 * 加载任务基类
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class Mission extends EventDispatcher
	{
		public static var MAX_RETRY_COUNT:uint = 3;	//重新加载最大次数

		protected var ldr:URLLoader;				//加载器

		protected var sprite:Sprite;				//

		protected var original:ByteArray;			//加载内容的二进制数据

		protected var clock:Timer;					//重新加载时间驱动器

		/**
		 * 构造函数
		 * @param name        名称
		 * @param path        路径
		 * @param useCache    是否使用缓存
		 * @param cacheType    缓存类型
		 * @param key        验证码
		 * @param data        附加参数Object
		 *
		 */
		public function Mission(name:String, path:String, useCache:Boolean = true, cacheType:uint = 1, key:String = null, data:Object = null)
		{
			this.name = name;
			this.path = path;
			this.useCache = useCache;
			this.cacheType = cacheType;
			this.key = key;
			this.data = data;
		}

		public var path:String;						//路径
		public var useCache:Boolean;				//是否使用缓存
		public var cacheType:uint;					//缓存类型
		public var key:String;						//验证码
		public var data:Object;						//附加参数

		public var bytesLoaded:uint;				//当前加载量
		public var bytesTotal:uint;					//总加载量
		public var name:String;						//名称
		public var priority:uint;					//加载优先级

		public var retryTime:uint = 0;				//重新加载事件间隔

		public var destroyed:Boolean;				//是否已销毁

		public var completed:Boolean;				//是否加载完成了

		public var base:String = "";				//

		public var applicationDomain:ApplicationDomain;	//程序域

		/**
		 * 加载内容二进制数据
		 * @return 二进制数据
		 *
		 */
		public function get bytes():ByteArray
		{
			return original;
		}

		/**
		 * 转换二进制数据
		 * @param source    二进制数据
		 *
		 */
		public function convert(source:ByteArray):void
		{
			if (this.destroyed)
			{
				return;
			}

			this.original = source;

			this.complete();
		}

		/**
		 * 加载错误，继续加载
		 *
		 */
		protected function error():void
		{
			this.loaderStart(false);
		}

		/**
		 * 加载完成
		 *
		 */
		protected function complete():void
		{
			this.completed = true;

			if (!this.sprite)
			{
				this.sprite = new Sprite();
				this.sprite.addEventListener(Event.ENTER_FRAME, this.frame);
			}
		}

		/**
		 * 事件
		 * @param event
		 *
		 */
		protected function frame(event:Event):void
		{
			this.sprite.removeEventListener(Event.ENTER_FRAME, frame);

			this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_PROGRESS, this.bytes.length, this.bytes.length, this));
			this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_COMPLETE, this.bytes.length, this.bytes.length, this));
		}

		/**
		 * 销毁
		 *
		 */
		public function destroy():void
		{
			if (this.destroyed)
			{
				return;
			}

			this.destroyed = true;

			this.applicationDomain = null;
			this.original = null;
			this.data = null;

			this.loaderAbort();
			if (this.ldr)
			{
				this.ldr.data.clear();
				this.ldr.data = null;
				this.ldr.removeEventListener(Event.COMPLETE, this.loaderHandler);
				this.ldr.removeEventListener(IOErrorEvent.IO_ERROR, this.loaderHandler);
				this.ldr.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, this.loaderHandler);
				this.ldr.removeEventListener(ProgressEvent.PROGRESS, this.loaderHandler);
				this.ldr = null;

				this.clock.reset();
				this.clock.removeEventListener(TimerEvent.TIMER_COMPLETE, this.timeOut);
				this.clock = null;
			}

			if (this.sprite)
			{
				this.sprite.removeEventListener(Event.ENTER_FRAME, this.frame);
				this.sprite = null;
			}
			this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_DESTROY));
		}

		/**
		 * 获取资源公共定义类
		 * @param def    类名称
		 * @return Class
		 *
		 */
		public function getClass(def:String):Class
		{
			if (this.destroyed)
			{
				return null;
			}
			var c:Class;
			try
			{
				c = applicationDomain.getDefinition(def) as Class;
			}
			catch (error:Error)
			{

			}
			return c;
		}

		/**
		 * 创建一个资源公共定义类
		 * @param def    类名称
		 * @return Object
		 *
		 */
		public function createObject(def:String):Object
		{
			var c:Class = getClass(def);
			return c ? new c : null;
		}

		/**
		 * 开始
		 * @param bytes    二进制数据
		 *
		 */
		public function start(bytes:ByteArray):void
		{
			if (this.destroyed)
			{
				return;
			}
			this.retryTime = 0;
			this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_START, 0, 0, this));
			this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_PROGRESS, 0, 0, this));

			this.validate(bytes);
		}

		/**
		 * 中断
		 *
		 */
		public function abort():void
		{
			if (this.destroyed)
			{
				return;
			}
			if (this.sprite)
			{
				this.sprite.removeEventListener(Event.ENTER_FRAME, this.frame);
			}
			this.loaderAbort();
			this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_ABORT, 0, 0, this));
		}

		/**
		 * 获取带有版本号的URL
		 * @param url    资源地址
		 * @return
		 *
		 */
		protected function getQaulifiedUrl(url:String):String
		{
			return FileManager.getQualifiedUrl(url);
		}

		/**
		 * 开始加载
		 * @param useCache    是否使用缓存
		 *
		 */
		protected function loaderStart(useCache:Boolean):void
		{
			this.loaderAbort();

			this.retryTime++;

			if (this.retryTime > MAX_RETRY_COUNT)
			{
				this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_ERROR, 0, 0, this));
				return;
			}

			if (!this.ldr)
			{
				this.ldr = new URLLoader();
				this.ldr.addEventListener(Event.COMPLETE, loaderHandler);
				this.ldr.addEventListener(IOErrorEvent.IO_ERROR, loaderHandler);
				this.ldr.addEventListener(SecurityErrorEvent.SECURITY_ERROR, loaderHandler);
				this.ldr.addEventListener(ProgressEvent.PROGRESS, loaderHandler);
				this.ldr.dataFormat = URLLoaderDataFormat.BINARY;
				//增加一个应答超时,如果1秒内不回包的话发起另一个请求
				this.clock = new Timer(2000, 1);
				this.clock.addEventListener(TimerEvent.TIMER_COMPLETE, this.timeOut);
			}

			if (this.retryTime == MAX_RETRY_COUNT)
			{
				this.clock.delay = 5000;
			}

			this.path = getQaulifiedUrl(this.path);
			//if(useCache)
			//{
			this.ldr.load(new URLRequest(this.path));
			//}else
			//{
			//				var request:URLRequest = new URLRequest(base+path);
			//				request.requestHeaders = [new URLRequestHeader("If-Modified-Since","0")];
			//				ldr.load(request);
			//ldr.load(new URLRequest(path + "?t=" + (new Date()).getTime()));
			//}

			this.clock.reset();
			this.clock.start();
		}

		/**
		 * 超时处理
		 * @param event
		 *
		 */
		protected function timeOut(event:TimerEvent):void
		{
			this.ldr.dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR, false, false, "connect timeout"));
		}

		/**
		 * 中断加载
		 *
		 */
		protected function loaderAbort():void
		{
			if (this.ldr)
			{
				this.clock.stop();
				try
				{
					this.ldr.close();
				}
				catch (error:Error)
				{

				}
			}
		}

		/**
		 * 正式转换
		 * @param bytes
		 *
		 */
		protected function validate(bytes:ByteArray):void
		{
			if (!this.bytes)
			{
				this.loaderStart(this.useCache);
				return;
			}

			//需验证
			if (this.key)
			{
				var checkKey:String = getKey(bytes);
				if (checkKey == this.key)
				{
					//验证通过,开始转换
					this.convert(bytes);
				}
				else
				{
					trace("[CACHE]", "as_core_1451031566_636", name, "s=", this.key, "t=", checkKey);
					//重试
					this.loaderStart(false);
				}
			}
			else
			{
				//开始转换
				this.convert(bytes);
			}
		}

		/**
		 * 加载事件处理
		 * @param event
		 *
		 */
		protected function loaderHandler(event:Event):void
		{
			//任何一个事件,计时结束
			if (this.clock.running)
			{
				this.clock.stop();
			}

			switch (event.type)
			{
				case ProgressEvent.PROGRESS://加载进度
					var pe:ProgressEvent = event as ProgressEvent;
					this.bytesLoaded = pe.bytesLoaded;
					this.bytesTotal = pe.bytesTotal;
					this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_PROGRESS, this.bytesLoaded, this.bytesTotal, this));
					break;

				case Event.COMPLETE://加载完成
					this.validate(this.ldr.data);
					break;

				case IOErrorEvent.IO_ERROR://加载错误
				case SecurityErrorEvent.SECURITY_ERROR://安全域错误
					//重试
					this.loaderStart(false);
					break;
			}
		}

		/**
		 * 获取验证码
		 * @param bytes    二进制数据
		 * @return        验证码
		 *
		 */
		public static function getKey(bytes:ByteArray):String
		{
			if (!bytes)
			{
				return null;
			}
			if (bytes.length < 1024 * 15)
			{
				return MD5.hashBytes(bytes);
			}
			var byte:ByteArray = new ByteArray();
			bytes.position = 0;
			bytes.readBytes(byte, 0, 10 * 1024);
			bytes.position = bytes.length - 5 * 1024;
			bytes.readBytes(byte, byte.length, 0);
			return MD5.hashBytes(byte);
		}

		/**
		 * 拷贝数据
		 * @param bytes    二进制数据
		 * @return        拷贝的二进制数据
		 *
		 */
		public static function copyBytes(bytes:ByteArray):ByteArray
		{
			if (!bytes)
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
		 * @param bytes    二进制数据
		 * @return        二进制数据
		 *
		 */
		public static function decryptSWF(bytes:ByteArray):ByteArray
		{
			return (getDefinitionByName("util.decryptSWF") as Function).call(null, bytes);
		}

		/**
		 * 解压二进制数据
		 * @param bytes    二进制数据
		 *
		 */
		public static function uncompress(bytes:ByteArray):void
		{
			try
			{
				bytes.uncompress();
			}
			catch (error:Error)
			{

			}
		}

		/**
		 * 字符串格式
		 * @return String
		 *
		 */
		override public function toString():String
		{
			return '[Mission(name="' + name + '",path="' + path + '",useCache="' + useCache + '",cacheType="' + cacheType + '",key="' + key + '",data="' + (data ? "<object>" : "null") + '",bytes="' + (original ? "<object>" : "null") + '")]';
		}
	}
}