package tx.loader 
{
	import tx.loader.data.LoadTaskAssetInfo;
	import tx.loader.def.FileTypeDef;
	import tx.loader.def.LoadStatusDef;
	import tx.loader.events.LoadEvent;
	import tx.loader.loaders.IFileLoader;
	import tx.loader.loaders.PKGLoader;
	import tx.loader.loaders.RAWLoader;
	import tx.loader.loaders.SWCLoader;
	import tx.loader.loaders.SWFLoader;
	import tx.loader.loaders.TXTLoader;
	import tx.loader.loaders.XMLLoader;
	import tx.loader.loaders.ZIPLoader;
	
	import flash.events.EventDispatcher;
	import flash.events.TimerEvent;
	import flash.system.ApplicationDomain;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	import flash.utils.Timer;
	import flash.utils.clearTimeout;
	import flash.utils.getQualifiedClassName;
	import flash.utils.setTimeout;

	internal class MultiThreadLoader extends EventDispatcher
	{
		// static members
		//*************************************************
		/**
		 * 最大线程数
		 */
		private static const MAX_THREAD_COUNT:uint = 4;
		
		/**
		 * 运行状态打印最小时间间隔
		 */
		private static const STATUS_PRINT_INTERVAL:uint = 5 * 1000;
		
		/**
		 * 工厂方法创建文件加载器
		 */
		public static function create(url:String, domain:ApplicationDomain = null, encoding:String = "utf-8"):IFileLoader
		{
			if (!url) return null;
			
			url = url.split("?").shift();
			
			var extension:String;
			var list:Array = url.match(/\.([^\.]+)$/);
			if (list)
			{
				extension = list[1];
			}
			
			extension ||= "";
			extension.toLowerCase();
			
			var loader:IFileLoader;
			switch(extension)
			{
				case FileTypeDef.T_TXT:loader = new TXTLoader(encoding); break;
				case FileTypeDef.T_SWC:loader = new SWCLoader(domain); break;
				case FileTypeDef.T_XML:loader = new XMLLoader(); break;
				case FileTypeDef.T_ZIP:loader = new ZIPLoader(); break;
				case FileTypeDef.T_PKG:loader = new PKGLoader(); break;
				case FileTypeDef.T_PNG:case FileTypeDef.T_JPG:
				case FileTypeDef.T_GIF:case FileTypeDef.T_SWF:
				{
					loader = new SWFLoader(domain); break;
				}
				
				default:loader = new RAWLoader(); break;
			}
			
			return loader;
		}
		
		/**
		 * 垃圾回收
		 * @param	url	被释放资源
		 */
		public static function dispose(url:String):void
		{
			var task:LoadTaskAssetInfo = _map[url] as LoadTaskAssetInfo;
			if (task)
			{
				task.dispose();
				if (!task.referCount)
				{
					delete _resources[url];
					delete _map[url];
				}
			}
		}
		
		/**
		 * 一步到位清理加载资源
		 * @usage 慎用
		 */
		public static function kill(url:String):void
		{
			var task:LoadTaskAssetInfo = _map[url] as LoadTaskAssetInfo;
			if (task)
			{
				while (task.referCount) task.release();
				
				task.dispose();
				if (!task.referCount)
				{
					delete _resources[url];
					delete _map[url];
				}
			}
		}
		
		/**
		 * 回收所有资源
		 */
		public static function disposeAll():void
		{
			var list:Vector.<String> = new Vector.<String>;
			for (var url:String in _map) list.push(url);
//			MemoryDisposeRunner.start(list, dispose);
		}
		
		/**
		 * 根据引用计数垃圾回收
		 * @usage 所有引用计数为0的资源都会统一释放
		 */
		public static function gc():void
		{
			//var list:Vector.<String> = new Vector.<String>();
			
			var task:LoadTaskAssetInfo;
			for (var url:String in _map)
			{
				task = _map[url];
				if (task && !task.referCount && _resources[url])
				{
					if (task.callbacks && !task.callbacks.length)
					{
						//list.push(url);
						dispose(url);
					}
				}
			}
			
			//MemoryDisposeRunner.start(list, dispose);
		}
		
		/**
		 * 手动增加资源引用
		 * @param	url	加载资源路径
		 */
		public static function retainAsset(url:String):int
		{
			var task:LoadTaskAssetInfo = _map[url] as LoadTaskAssetInfo;
			return task? task.retain() : -1;
		}
		
		/**
		 * 手动减少资源引用
		 * @param	url	加载资源路径
		 */
		public static function releaseAsset(url:String):int
		{
			var task:LoadTaskAssetInfo = _map[url] as LoadTaskAssetInfo;
			return task? task.release() : -1;
		}
		
		/**
		 * 获取资源引用计数
		 * @param	url	加载资源路径
		 * @return	-1:资源不存在 0:无引用且可以被释放 >0:资源被占用且不能被释放
		 */
		public static function getReferCount(url:String):int
		{
			var task:LoadTaskAssetInfo = _map[url] as LoadTaskAssetInfo;
			return task? task.referCount : -1;
		}
		
		/**
		 * 收集当前资源池所有文件引用列表
		 */
		public static function collectResourceRefer():Vector.<Object>
		{
			var result:Vector.<Object> = new Vector.<Object>;
			
			var asset:LoadTaskAssetInfo;
			for (var url:String in _map)
			{
				asset = _map[url] as LoadTaskAssetInfo;
				result.push( { url:asset.url, referCount:asset.referCount } );
			}
			
			result.sort(function(r1:Object, r2:Object):int
			{
				if (r1.referCount != r2.referCount)
				{
					return r1.referCount > r2.referCount? -1 : 1;
				}
				
				return r1.url > r2.url? -1 : 1;
			});
			return result;
		}
		
		/**
		 * 检测管理器是否包含特定资源
		 * @param	url	资源对应链接
		 */
		public static function hasResource(url:String):Boolean
		{
			return _resources[url] != null;
		}
		
		/**
		 * 获取资源对象
		 * @param	url	资源对应链接
		 */
		public static function getResource(url:String):*
		{
			var data:* = _resources[url];
			if (data)
			{
				var task:LoadTaskAssetInfo = _map[url] as LoadTaskAssetInfo;
				if (!task) 
				{
					throw new Error("as_core_1451031566_644" + url);
				}
				else
				{
					task.retain();
				}
			}
			
			return data;
		}
		
		/**
		 * 资源映射表
		 */
		private static const _resources:Dictionary = new Dictionary(false);
		private static const _bytes:Dictionary = new Dictionary(false);
		private static const _map:Dictionary = new Dictionary(false);
		
		// 等待队列的加载任务
		private static const _waitings:Vector.<LoadTaskAssetInfo> = new Vector.<LoadTaskAssetInfo>();
		
		// instance members
		//*************************************************
		private var _currents:Vector.<LoadTaskAssetInfo>;
		private var _queue:Vector.<LoadTaskAssetInfo>;
		private var _running:Boolean;
		private var _name:String;
		
		private var _record:PrintRecord;
		private var _timer:Timer;
		
		/**
		 * 构造函数
		 * create a [LoadManager] object
		 */
		public function MultiThreadLoader(name:String = null) 
		{
			_name = name;
			_currents = new Vector.<LoadTaskAssetInfo>();
			_queue = new Vector.<LoadTaskAssetInfo>();
			
			_record = new PrintRecord();
			_timer = new Timer(STATUS_PRINT_INTERVAL);
			_timer.addEventListener(TimerEvent.TIMER, logLoadingStatus);
			_timer.start();
		}
		
		/**
		 * 是否存在加载任务
		 * @param	url	资源URL
		 */
		public function hasTask(url:String):Boolean
		{
			var task:LoadTaskAssetInfo = _map[url] as LoadTaskAssetInfo;
			return task && (task.status == LoadStatusDef.LOADING || task.status == LoadStatusDef.WAIT);
		}
		
		/**
		 * 添加加载任务
		 * @param	url			资源链接
		 * @param	callback	加载完成回调函数
		 * @param	domain		程序域
		 * @param	encoding	文本编码
		 */
		public function pushTask(url:String, callback:Function = null, domain:ApplicationDomain = null, encoding:String = "utf-8",sortLevel:int = 0):Boolean
		{
			var task:LoadTaskAssetInfo = _map[url] as LoadTaskAssetInfo;
			
			if (task && task.status == LoadStatusDef.COMPLETE)
			{
				
				if (_resources[url])
				{
					if (callback != null)
					{
						if (task.callbacks.indexOf(callback) < 0)
						{
							task.callbacks.push(callback);
						}
					}
					
					task.callbacks.length && finishTask(task);
					return false;
				}
				else
				{
					kill(url); // 对于加载失败的资源再次加载的时候重新加载
				}
			}
			
			var success:Boolean;
			
			task = _map[url] as LoadTaskAssetInfo;
			if (!task)
			{
				task = new LoadTaskAssetInfo();
				task.loader = MultiThreadLoader.create(url, domain, encoding);
				task.url = url;
				task.sortLevel = sortLevel;
			}
			
			if (callback != null)
			{
				if (task.callbacks.indexOf(callback) < 0)
				{
					task.callbacks.push(callback);
				}
			}
			
			task.mirror = FileManager.getArchiveUrl(url);
			
			if (!_map[url])
			{
				success = true;
				
				_map[url] = task;
				
				if (task.mirror)
				{
					if (_bytes[url])
					{
						_queue.push(task);//这块是小文件打包的
					}
					else
					{
						_waitings.push(task);
						
						pushTask(task.mirror, processArchive, null, "utf-8");
					}
				}
				else
				{
					_queue.push(task);
					if(this.lazyType == true){
						_queue = _queue.sort(sortLevelfun);//加载排序
					}
				}
			}
			else
			{
				log("pushTask->skip:" + url + ", cause:" + task.status);
			}
			
			update();
			return success;
		}
		
		
		/**
		 * 低到高排序
		 */
		private function sortLevelfun(x:LoadTaskAssetInfo,y:LoadTaskAssetInfo):int{  
			if(x.sortLevel > y.sortLevel){  
				return 1;
			}else if(x.sortLevel < y.sortLevel){
				return -1;
			}else{  
				return 0;
			}
		}
		
		/**
		 * 处理小文件压缩包
		 */
		private function processArchive(loader:PKGLoader, url:String):void
		{
			log(">>=" + url);
			
			var task:LoadTaskAssetInfo;
			for (var i:int = 0; i < _waitings.length; i++)
			{
				task = _waitings[i];
				if (task.mirror == url)
				{
					if (!_bytes[task.url])
					{
						task.mirror = null;
					}
					
					_queue.push(task);
					_waitings.splice(i--, 1);
				}
			}
			
			dispose(url); update();
		}
		
		/**
		 * 删除加载任务
		 * @param	url	资源链接
		 */
		public function removeTask(url:String):void
		{
			var task:LoadTaskAssetInfo = _map[url];
			
			var index:int = _queue.indexOf(task);
			if (index >= 0) _queue.splice(index, 1);
			
			index = _currents.indexOf(task);
			if (index >= 0)
			{
				task = _currents.splice(index, 1).pop();
				unlisten(task.loader);
			}
			
			dispose(url); update();
		}
		
		/**
		 * 添加事件侦听
		 */
		private function listen(loader:IFileLoader):void
		{
			loader.addEventListener(LoadEvent.FINISH, finishHandler);
			loader.addEventListener(LoadEvent.PROGRESS, progressHandler);
		}
		
		/**
		 * 取消事件侦听
		 */
		private function unlisten(loader:IFileLoader):void
		{
			loader.removeEventListener(LoadEvent.FINISH, finishHandler);
			loader.removeEventListener(LoadEvent.PROGRESS, progressHandler);
		}
		
		/**
		 * 进度处理
		 */
		private function progressHandler(e:LoadEvent):void
		{
			dispatchEvent(e);
		}
		
		/**
		 * 单个任务完成时派发
		 */
		private function finishHandler(e:LoadEvent):void 
		{
			var loader:IFileLoader = e.currentTarget as IFileLoader;
			unlisten(loader);
			
			var task:LoadTaskAssetInfo = _map[loader.url] as LoadTaskAssetInfo;
			task.status = LoadStatusDef.COMPLETE;
			
			// 存储资源
			switch(getQualifiedClassName(loader))
			{
				case getQualifiedClassName(RAWLoader):
				{
					_resources[task.url] = (task.loader as RAWLoader).data;
					break;
				}
				
				case getQualifiedClassName(XMLLoader):
				{
					_resources[task.url] = (task.loader as XMLLoader).xml;
					break;
				}
				
				case getQualifiedClassName(TXTLoader):
				{
					_resources[task.url] = (task.loader as TXTLoader).content;
					break;
				}
				
				case getQualifiedClassName(SWCLoader):
				case getQualifiedClassName(SWFLoader):
				{
					_resources[task.url] = (task.loader as SWFLoader).loader;
					break;
				}
				
				case getQualifiedClassName(ZIPLoader):
				{
					_resources[task.url] = (task.loader as ZIPLoader).zip;
					break;
				}
				
				case getQualifiedClassName(PKGLoader):
				{
					var assets:Dictionary = (task.loader as PKGLoader).assets;
					for (var url:String in assets) 
					{
						_bytes[url] = assets[url];
					}
					
					_resources[task.url] = task.loader as PKGLoader;
					break;
				}
			}
			
			// 清理当前列表
			var index:int = _currents.indexOf(task);
			if (index >= 0) _currents.splice(index, 1);
			
			// 处理回调函数
			finishTask(task);
			update();
			
			if (!_currents.length && !_queue.length)
			{
				_running = false;
				
				log("queueComplete");
				dispatchEvent(new LoadEvent(LoadEvent.COMPLETE, null));
			}
		}
		
		/**
		 * 存储数据
		 */
		private function finishTask(task:LoadTaskAssetInfo):void
		{	
			var callback:Function;
			while (task.callbacks && task.callbacks.length)
			{
				callback = task.callbacks.shift();
				switch(callback.length)
				{
					case 0:callback.call(); break;
					case 1:callback.call(null, _resources[task.url]); break;
					case 2:callback.call(null, _resources[task.url], task.url); break;
					default:
					{
						var params:Array = [_resources[task.url], task.url];
						while (params.length < callback.length) params.push(null);
						
						callback.apply(null, params);
						break;
					}
				}
			}
		}
		
		/**
		 * 启动加载器
		 */
		public function start():void
		{
			_queue.length && update();
		}
		
		/**
		 * 打印运行时信息
		 */
		private function logLoadingStatus(instant:Boolean = false):void
		{
			var flag:Boolean = _queue.length > 0 || _currents.length > 0;
			if (!flag)
			{
				flag ||= ++_record.count % Math.round(30 * 1000 / STATUS_PRINT_INTERVAL) == 0;
				flag &&= ++_record.freeCount <= 2;
			}
			else
			{
				_record.freeCount = 0;
			}
			
			flag &&= instant;
			
			if (flag)
			{
				log("--------------------<LoadingStatus>--------------------");
				for (var i:int = 0; i < _currents.length; i++)
				{
					log((i + 1) + "." + _currents[i].toString());
				}
				
				log("idle:" + (MAX_THREAD_COUNT - _currents.length) + ", queue:" + _queue.length);
			}
		}
				
		/**
		 * 刷新加载器
		 */
		public function update():void
		{
			var task:LoadTaskAssetInfo;
			for (var i:int = 0; i < _currents.length; i++)
			{
				if (_currents[i].status != LoadStatusDef.LOADING)
				{
					_currents.splice(i--, 1);
				}
			}
						
			var url:String;
			while (_currents.length < MAX_THREAD_COUNT && _queue.length)
			{
				task = _queue.shift();
				if (!task.loader) continue;
				
				listen(task.loader);
				task.status = LoadStatusDef.LOADING;
				dispatchEvent(new LoadEvent(LoadEvent.START, task.url));
				
				if (!task.mirror)
				{
					task.loader.load(task.url);
				}
				else
				{
					task.loader.loadBytes(duplicateFileBytes(_bytes[task.url]), task.url);
				}
				
				if (task.status == LoadStatusDef.LOADING)
				{
					_currents.push(task);
				}
				
				_running = true;
			}
		}
		
		private function duplicateFileBytes(data:ByteArray):ByteArray
		{
			var bytes:ByteArray = new ByteArray();
			bytes.writeBytes(data);
			bytes.position = 0;
			return bytes;
		}
		
		public var lazyType:Boolean = false;
		
		/**
		 * 停止加载逻辑
		 */
		public function stop():void
		{
			_running = false;
			
			var task:LoadTaskAssetInfo;
			while (_currents.length)
			{
				task = _currents.pop();
				task.loader.abort();
				task.status = LoadStatusDef.WAIT;
				unlisten(task.loader);
				
				_queue.unshift(task);
			}
			if(this.lazyType == true){
				_queue = _queue.sort(sortLevelfun);//加载排序
			}
		}
		
		/**
		 * 封装log打印
		 */
		private function log(...msg):void
		{
			trace("[thread::" + _name + "]", msg.join(", "));
		}
		
		/**
		 * 是否正在加载资源
		 */
		public function get running():Boolean { return _running; }
		
		/**
		 * 管理器名字
		 */
		public function get name():String { return _name; }
		
		/**
		 * 加载队列长度
		 */
		public function get length():uint { return _queue.length; }
	}
}

class PrintRecord
{
	/**
	 * 计数器
	 */
	public var count:uint;
	
	/**
	 * 定时器
	 */
	public var timer:uint;
	
	/**
	 * 加载器空闲计数器
	 */
	public var freeCount:uint;
	
	public function PrintRecord()
	{
		
	}
}