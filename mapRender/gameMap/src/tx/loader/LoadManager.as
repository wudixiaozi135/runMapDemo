package tx.loader 
{
	import tx.loader.events.LoadEvent;
	import tx.loader.events.LoadNotifyEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.system.ApplicationDomain;
	import flash.utils.Dictionary;
	import flash.utils.getTimer;
	
	/**
	 * 开始加载文件
	 */
	[Event(name = "start", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 进度事件
	 */
	[Event(name = "progress", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 单个文件加载完成时派发
	 */
	[Event(name = "complete", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 所有队列文件加载完毕
	 */
	[Event(name = "queueComplete", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 文件加载失败时派发
	 */
	[Event(name = "error", type = "tx.loader.events.LoadEvent")]	
	
	/**
	 * 加载管理器
	 * @author larryhou
	 * @createTime 2013/12/20 10:31
	 */
	/**
	 * 开始加载文件
	 */
	[Event(name = "start", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 进度事件
	 */
	[Event(name = "progress", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 单个文件加载完成时派发
	 */
	[Event(name = "complete", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 所有队列文件加载完毕
	 */
	[Event(name = "queueComplete", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 文件加载失败时派发
	 */
	[Event(name = "error", type = "tx.loader.events.LoadEvent")]	

	/**
	 * 加载管理器
	 * @author larryhou
	 * @createTime 2013/12/20 10:31
	 */
	public class LoadManager extends EventDispatcher
	{
		/**
		 * 加载全局事件中心
		 */
		public static const notifier:LoaderNotifier = new LoaderNotifier();
		public static const globeErrorDispatcher:EventDispatcher = new EventDispatcher();
		
		// static members
		//*************************************************
		private static const _main:MultiThreadLoader = new MultiThreadLoader("main");
		private static const _lazy:MultiThreadLoader = new MultiThreadLoader("lazy");
		private static const _manager:Dictionary = new Dictionary(false);
		private static var _initialized:Boolean;
		
		/**
		 * 初始化
		 */
		private static function setup():void
		{
			_lazy.lazyType = true;
			_main.addEventListener(LoadEvent.COMPLETE, priorityHandler);
			_lazy.addEventListener(LoadEvent.COMPLETE, priorityHandler);
			
			_main.addEventListener(LoadEvent.START, priorityHandler);
			_lazy.addEventListener(LoadEvent.START, priorityHandler);
		}		
		static private function priorityHandler(e:LoadEvent):void 
		{
			if (e.type == LoadEvent.COMPLETE)
			{
				if (e.currentTarget == _main)
				{
					if (_lazy.length)
					{
						if (!_lazy.running)
						{
							_lazy.start();
						}
						else
						{
							_lazy.update();
						}
					}
					
					notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.MAIN_TASK_COMPLETE));
					if (!_lazy.running)
					{
						notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.ALL_TASK_COMPLETE));
					}
				}
				else
				if (e.currentTarget == _lazy)
				{
					notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.LAZY_TASK_COMPLETE));
					if (!_main.running)
					{
						notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.ALL_TASK_COMPLETE));
					}
				}
			}
			else
			if (e.type == LoadEvent.START)
			{
				if (e.currentTarget == _lazy)
				{
					notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.LAZY_TASK_START));
				}
				else
				if (e.currentTarget == _main)
				{
					notifier.dispatchEvent(new LoadNotifyEvent(LoadNotifyEvent.MAIN_TASK_START));
				}
			}
		}
		
		/**
		 * 注册管理器
		 * @param	loader
		 */
		private static function register(loader:LoadManager):void
		{
			if (loader)
			{
				if (_manager[loader.name])
				{
					throw new Error("as_core_1451031566_641");
				}
				
				_manager[loader.name] = loader;
			}
		}
		
		/**
		 * 判断当前高低优先级资源是否正在加载
		 */
		public static function get running():Boolean { return _main.running || _lazy.running; }
		
		/**
		 * 获取资源管理器
		 * @param	name	管理器名称
		 */
		public static function getManager(name:String = "default"):LoadManager
		{
			if (!_manager[name])
			{
				_manager[name] = new LoadManager(name);
			}
			
			return _manager[name] as LoadManager;
		}
		
		/**
		 * 垃圾回收加载文件
		 * @param	url	被回收资源链接
		 */
		pub static function dispose(url:String):void
		{
			MultiThreadLoader.dispose(url);
		}
		
		/**
		 * 获取全局资源
		 * @param	url	资源链接
		 */
		pub static function getResource(url:String):*
		{
			return MultiThreadLoader.getResource(url);
		}
		
		/**
		 * 垃圾回收加载管理器
		 * @param	loader	文件夹在管理器
		 */
		pub static function gc(loader:LoadManager):void
		{
			if (loader)
			{
				_main.removeEventListener(LoadEvent.PROGRESS, loader.loadEventHandler);
				_lazy.removeEventListener(LoadEvent.PROGRESS, loader.loadEventHandler);
				_main.removeEventListener(LoadEvent.START, loader.loadEventHandler);
				_lazy.removeEventListener(LoadEvent.START, loader.loadEventHandler);
				
				loader.disposeAll();
				delete _manager[loader.name];
			}
		}
		
		/**
		 * 输出所有资源引用计数
		 */
		pub static function toString():String
		{
			var list:Vector.<Object> = MultiThreadLoader.collectResourceRefer();
			var result:String = "[LoaderManager]pub::toString()";
			
			var index:uint;
			
			var item:Object;
			while (list.length)
			{
				item = list.shift();
				result += "\n[" + (++index) + "]" + item.url + ", " + item.referCount;
			}
			
			return result;
		}
		
		/**
		 * 垃圾回收
		 */
		public static function gc():void
		{
			MultiThreadLoader.gc();
		}
		
		// instance members
		//*************************************************
		
		private var _urls:Vector.<String>;
		private var _domain:ApplicationDomain;
		
		private var _progressMap:Dictionary;
		private var _map:Dictionary;
		private var _name:String;
		
		private var _queue:Vector.<String>;
		
		/**
		 * 构造函数
		 * create a [LoadManager] object
		 */
		public function LoadManager(name:String = null, domain:ApplicationDomain = null) 
		{
			_name = name || Math.random().toFixed(6).substr(2);
			_domain = domain || ApplicationDomain.currentDomain;
			
			_queue = new Vector.<String>();
			_urls = new Vector.<String>();
			
			_progressMap = new Dictionary(false);
			_map = new Dictionary(false);
			
			if (!_initialized) setup();
			
			_main.addEventListener(LoadEvent.PROGRESS, loadEventHandler);
			_lazy.addEventListener(LoadEvent.PROGRESS, loadEventHandler);
			_main.addEventListener(LoadEvent.START, loadEventHandler);
			_lazy.addEventListener(LoadEvent.START, loadEventHandler);
			register(this);
		}
		
		/**
		 * 进度事件
		 */
		private function loadEventHandler(e:LoadEvent):void
		{
			if (!_map[e.url]) return;
			if (e.type == LoadEvent.PROGRESS)
			{
				dispatchEvent(e);
				if (_progressMap[e.url])
				{
					var list:Vector.<Function> = _progressMap[e.url] as Vector.<Function>;
					for each(var callback:Function in list) 
					{
						switch (callback.length)
						{
							case 1: callback.call(null, e.data); break;
							case 2: callback.call(null, e.data, e.url); break;
						}
					}
				}
			}
			else
			if (e.type == LoadEvent.START)
			{
				dispatchEvent(e);
			}
		}
		
		/**
		 * 输出log信息方法
		 */
		pub var log:Function;
		private function log(...arg):void
		{
			if (pub::log != null)
			{
				pub::log.call(null, "[" + _name + "]","[LoadManager]" + arg.join(", ")+getTimer());
			}
		}
		
		/**
		 * 注册进度事件
		 * @param	url			被监听资源链接
		 * @param	callback	进度事件回调函数: callback.call(null, url, [ProgressEvent object])
		 */
		public function registerProgressListener(url:String, callback:Function):void
		{
			if (_urls.indexOf(url) >= 0) return;
			
			if (!_progressMap[url])
			{
				_progressMap[url] = new Vector.<Function>();
			}
			
			var list:Vector.<Function> = _progressMap[url] as Vector.<Function>;
			if (callback != null && list.indexOf(callback) < 0)
			{
				list.push(callback);
			}
		}
		
		/**
		 * 取消注册加载进度事件
		 * @param	url			被监听资源链接
		 * @param	callback	进度事件回调函数
		 */
		public function unregisterProgressListener(url:String, callback:Function):void
		{
			if (callback != null && _progressMap[url])
			{
				var list:Vector.<Function> = _progressMap[url] as Vector.<Function>;
				var index:int = list.indexOf(callback);
				if (index >= 0)
				{
					list.splice(index, 1);
				}
			}
		}
		
		/**
		 * 从当前域创建实例对象
		 * @param	linkage		类名
		 */
		public function createObject(linkage:String):Object
		{
			if (_domain.hasDefinition(linkage))
			{
				return new (_domain.getDefinition(linkage) as Class)();
			}
			
			return null;
		}
		
		/**
		 * 加载文件
		 * @param	url			被加载文件URL
		 * @param	callback	文件加载完成回调函数
		 * @param	param		回调函数透传参数: callback(data, url, param)
		 */
		public function loadTask(url:String, callback:Function = null, param:* = null, domain:ApplicationDomain = null, autoUseDefaultDomain:Boolean = true):void
		{
			log("[load]" + url);
			registerTask(url, callback, param);
			
			if (_main.pushTask(url, processTask, autoUseDefaultDomain? (domain || _domain) : domain, "utf-8"))
			{
				_queue.push(url);
			}
			
			if (_main.length)
			{
				_lazy.running && _lazy.stop();
				
				if (!_main.running)
				{
					_main.start();
				}
				else
				{
					_main.update();
				}
			}
			else
			{
				if (!_lazy.running) _lazy.start();
			}
		}
		
		/**
		 * 使用懒加载方式加载文件
		 * @param	url			被加载文件URL
		 * @param	callback	文件加载完成回调函数
		 * @param	param		回调函数透传参数: callback(data, url, param)
		 */
		public function loadLazyTask(url:String, callback:Function = null, param:* = null, domain:ApplicationDomain = null, autoUseDefaultDomain:Boolean = true,sortLevel:int = 0):void
		{
			log("[load::lazy]" + url);
			registerTask(url, callback, param,sortLevel);
			
			if (_lazy.pushTask(url, processTask, autoUseDefaultDomain? (domain || _domain) : domain, "utf-8",sortLevel))
			{
				_queue.push(url);
			}
			
			if (_main.running) return;
			if (_lazy.length)
			{
				if (!_lazy.running)
				{
					_lazy.start();
				}
				else
				{
					_lazy.update();
				}
			}
		}
		
		/**
		 * 注册任务回调函数
		 */
		private function registerTask(url:String, callback:Function = null, param:* = null,sortLevel:int = 0):void
		{
			if (!url)
			{
				throw new Error(this + "as_core_1451031566_642");
			}
			
			var task:LoadTaskInfo = _map[url] as LoadTaskInfo;
			if (!task)
			{
				task = new LoadTaskInfo();
				task.url = url;
			}
			
			if (callback != null && !task.callbacks[callback])
			{
				task.callbacks[callback] = param;
			}
			
			_map[url] = task;
		}
		
		/**
		 * 处理加载数据
		 * @param	data	加载回包数据
		 * @param	url		加载对应链接
		 */
		private function processTask(data:*, url:String):void
		{
			log((data? "[complete]" : "[error]") + url);
			
			var task:LoadTaskInfo = _map[url];
			if (!task)
			{
				log("[LoadManager][" + url + "as_core_1451031566_643");
				return;
			}
			
			task.complete = true;
			finishTask(task, data);
			
			var index:int = _queue.indexOf(url);
			if (index >= 0) 
			{
				_queue.splice(index, 1);
				if (_urls.indexOf(url) < 0) _urls.push(url);
			}
			
			delete _progressMap[url];
			
			if (data)
			{
				dispatchEvent(new LoadEvent(LoadEvent.COMPLETE, url, data));
			}
			else
			{
				globeErrorDispatcher.dispatchEvent(new LoadEvent(LoadEvent.ERROR, url));
				dispatchEvent(new LoadEvent(LoadEvent.ERROR, url));
			}
			
			if (!_queue.length)
			{
				log("done");
				dispatchEvent(new LoadEvent(LoadEvent.QUEUE_COMPLETE, null));
			}
		}
		
		/**
		 * 处理回调函数
		 * @param	task	加载任务信息
		 * @param	data	加载回包数据
		 */
		private function finishTask(task:LoadTaskInfo, data:*):void
		{
			var callback:Function;
			for (var key:* in task.callbacks)
			{
				callback = key as Function;
				if (callback.length)
				{
					task.retain();
					MultiThreadLoader.retainAsset(task.url);
				}
				
				switch(callback.length)
				{
					case 0: callback.call(); break;
					case 1:callback.call(null, data); break;
					case 2:callback.call(null, data, task.url); break;
					case 3:callback.call(null, data, task.url, task.callbacks[callback]); break;
					default:
					{
						var params:Array = [data, task.url];
						while (params.length < callback.length) params.push(null);
						
						callback.apply(null, params);
						break;
					}
				}
				
				delete task.callbacks[callback];
			}
		}
		
		/**
		 * 是否存在资源加载任务
		 * @param	url	资源链接
		 */
		public function hasLoadTask(url:String):Boolean
		{
			var task:LoadTaskInfo = _map[url] as LoadTaskInfo;
			return task && task.complete;
		}
		
		/**
		 * 是否存在对应加载任务
		 * @param	url	资源链接
		 */
		public function hasTask(url:String):Boolean
		{
			var task:LoadTaskInfo = _map[url] as LoadTaskInfo;
			return task != null;
		}
		
		/**
		 * 获取已加载资源
		 * @param	url	资源链接
		 */
		public function getResource(url:String):*
		{
			var task:LoadTaskInfo = _map[url] as LoadTaskInfo;
			if (task && task.complete)
			{
				task.retain();
				return pub::getResource(url);
			}
		}
		
		/**
		 * 手动增加资源引用
		 * @param	url	加载资源路径
		 */
		public function retainAsset(url:String):int
		{
			var task:LoadTaskInfo = _map[url] as LoadTaskInfo;
			if (task)
			{
				MultiThreadLoader.retainAsset(url);
				return task.retain();
			}
			
			return -1;
		}
		
		/**
		 * 手动减少资源引用
		 * @param	url	加载资源路径
		 */
		public function releaseAsset(url:String):int
		{
			var task:LoadTaskInfo = _map[url] as LoadTaskInfo;
			if (task && task.referCount)
			{
				MultiThreadLoader.releaseAsset(url);
				return task.release();
			}
			
			return -1;
		}
		
		/**
		 * 移除回调函数
		 * @param	url			资源链接
		 * @param	callback	加载完成回调函数
		 */
		public function killCompleteCallback(url:String, callback:Function):void
		{
			if (!url || callback == null) return;
			
			var task:LoadTaskInfo = _map[url] as LoadTaskInfo;
			if (task)
			{
				for (var key:* in task.callbacks)
				{
					if (key == callback)
					{
						delete task.callbacks[key];
						break;
					}
				}
			}
		}
		
		/**
		 * 垃圾回收某个资源
		 * @param	url	资源对应链接
		 */
		public function dispose(url:String):void
		{
			var index:int, referCount:int;
			
			index = _queue.indexOf(url);
			if (index >= 0) _queue.splice(index, 1);
			
			var task:LoadTaskInfo = _map[url] as LoadTaskInfo;
			if (task)
			{
				log("[dispose]" + url);
				MultiThreadLoader.dispose(url);
				task.release();
				
				if (!task.referCount)
				{
					index = _urls.indexOf(url);
					index >= 0 && _urls.splice(index, 1);
					
					delete _map[url];
				}
				
				referCount = MultiThreadLoader.getReferCount(url);
				if (referCount <= 0)
				{
					_main.hasTask(url) && _main.removeTask(url);
					_lazy.hasTask(url) && _lazy.removeTask(url);
				}
				
				delete _progressMap[url];
			}
		}
		
		/**
		 * 销毁当前LoadManager里面的所有引用
		 * @param	url	资源对应链接
		 */
		pub function dispose(url:String):void
		{
			var task:LoadTaskInfo = _map[url] as LoadTaskInfo;
			if (task.referCount)
			{
				while (task.referCount)
				{
					public::dispose(url);
				}
			}
			else	
			{
				public::dispose(url);
			}
		}
		
		/**
		 * 释放通过此管理器加载的所有资源
		 */
		public function disposeAll(gc:Boolean = false):void
		{
			if (gc)
			{
				while (_urls.length) this.pub::dispose(_urls.shift());
			}
			else
			{
				while (_urls.length) public::dispose(_urls.shift());
			}
			
			_queue.length = 0;
			_progressMap = new Dictionary();
			_map = new Dictionary();
		}
		
		/**
		 * 停掉当前loader里面的懒加载任务
		 */
		public function killLazyTasks():void
		{
			var list:Vector.<String> = _urls.concat();
			for each(var url:String in list)
			{
				if (_lazy.hasTask(url)) public::dispose(url);
			}
		}
		
		/**
		 * 管理器程序域
		 */
		public function get domain():ApplicationDomain { return _domain; }
		
		/**
		 * 管理器名称
		 */
		public function get name():String { return _name; }
		
		/**
		 * 队列文件长度
		 */
		public function get length():uint { return _queue.length; }
	}
}

import flash.utils.Dictionary;

class LoadTaskInfo
{
	public var url:String;
	public var callbacks:Dictionary;
	public var complete:Boolean;
	
	private var _referCount:uint;
	
	public function LoadTaskInfo()
	{
		callbacks = new Dictionary(false);
	}
	
	/**
	 * 添加一个引用
	 */
	public function retain():uint
	{
		++_referCount;
		return _referCount;
	}
	
	/**
	 * 释放一个引用
	 */
	public function release():uint
	{
		if (_referCount > 0)
		{
			_referCount--;
		}
		
		return _referCount;
	}
	
	/**
	 * 引用计数
	 */
	public function get referCount():uint { return _referCount; }
}