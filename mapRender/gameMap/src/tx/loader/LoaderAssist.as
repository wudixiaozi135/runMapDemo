package tx.loader
{

	import tx.loader.mission.Mission;
	import flash.events.EventDispatcher;
	import flash.events.NetStatusEvent;
	import flash.net.SharedObject;
	import flash.net.SharedObjectFlushStatus;
	import flash.system.ApplicationDomain;
	import flash.system.System;
	import flash.utils.ByteArray;

	public class LoaderAssist extends EventDispatcher implements ILoader
	{
		static protected var isCachePanel:Boolean;
		
		static protected var sharedObjectMap:Object = {};
		
		static protected function getSharedObject(name:String):SharedObject
		{
			var sharedObject:SharedObject = sharedObjectMap[name];
			if(!sharedObject)
			{
				sharedObject = sharedObjectMap[name] = SharedObject.getLocal(name,"/");
			}
			return sharedObject;
		}
		
		static protected var sharedObjectTempMap:Object = {};
		static protected function getSharedObjectTemp(name:String):Object
		{
			var object:Object = sharedObjectTempMap[name];
			if(!object)
			{
				object = sharedObjectTempMap[name] = {};
			}
			return object;
		}
		
		static protected var memoryMap:Object = {};
		static protected function getMemory(name:String):Object
		{
			var object:Object = memoryMap[name];
			if(!object)
			{
				object = memoryMap[name] = {};
			}
			return object;
		}
		
		static protected function emptyObject(object:Object):void
		{
			if(!object)
			{
				return;
			}
			for(var key:String in object)
			{
				delete object[key];
			}
		}
		

		static public var version:String = "1.44";
		
		
		//加载完成后是否存入特定的缓存空间
		static public var NO_CACHE:uint = 0;		//不保存
		
		static public var MEMORY_CACHE:uint = 1;	//存入内存(当前运行有效)
		
		static public var FLASH_CACHE:uint = 2;		//存入SHAREDOBJECT
		
		private var _applicationDomain:ApplicationDomain = new ApplicationDomain();
		
		
		private var _lazyQueue:Array;
		private var _lazyMission:Object;

		private var _currentLazyMission:Mission;
		//等待任务队列
		protected var _queue:Array;
		
		//完成mission队列
		protected var _completQueue:Array;

		//内存缓存对象
		private var _memory:Object;
		//当前任务
		private var _currentMission:Mission;
		
		//保存ByteArray的SharedObject
		private var _sharedObject:SharedObject;
		
		//临时保存byte的SharedObject
		private var _sharedObjectTemp:Object;


		private var _name:String;
		

		private var _traceFunction:Function;


		private var _base:String = "";

		
		/**
		 * 构造函数
		 * @param name		SharedObject对象名象
		 */		
		public function LoaderAssist(name:String)
		{
			super();
			_name = name;
			
			//SharedObject空间
			_sharedObject = getSharedObject(name);
			_sharedObjectTemp = getSharedObjectTemp(name);
			
			//内存空间
			_memory = getMemory(name);
			
			//等待列表
			_queue = [];
			
			//完成mission队列
			_completQueue = [];
			
			_lazyQueue = [];
			_lazyMission = {};
		}

		public function get traceFunction():Function
		{
			return _traceFunction;
		}
		
		public function set traceFunction(value:Function):void
		{
			_traceFunction = value;
		}

		
		public function get base():String
		{
			return _base;
		}
		
		public function set base(value:String):void
		{
			_base = value||"";
		}
		
		
		public function get applicationDomain():ApplicationDomain
		{
			return _applicationDomain;
		}
		
		public function set applicationDomain(value:ApplicationDomain):void
		{
			_applicationDomain = value||new ApplicationDomain();
		}
		
		
		public function getClass(def:String):Class
		{
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
		
		
		/**
		 * 缓存中是否有指定文件, 
		 * @param path		路径
		 */		
		public function hasBytes(name:String):Boolean
		{
			var bytes:ByteArray = _memory[name] || (_sharedObjectTemp[name] || _sharedObject.data[name]);
			
			return bytes != null;
		}
		
		
		
		/**
		 * 从缓存中获取指定文件
		 * @param path			路径
		 * @param key			如需验证,传key
		 * @param uncompress	是否需要解压
		 * @return 
		 */			
		public function getBytes(name:String,uncompress:Boolean=false):ByteArray
		{
			var bytes:ByteArray = _memory[name] || (_sharedObjectTemp[name] || _sharedObject.data[name]);
			bytes = Mission.copyBytes(bytes);
			if(uncompress)
			{
				Mission.uncompress(bytes);
			}
			return bytes;
		}

		
		public function removeAllBytes():void
		{
			trace("[CACHE]","as_core_1451031566_613_0","as_core_1451031566_613_1");
			emptyObject(_memory);
			emptyObject(_sharedObjectTemp);
			emptyObject(_sharedObject.data);
		}
		
		/**
		 * 从缓存中删除
		 * @param path
		 */
		public function removeBytes(name:String):void
		{
			trace("[CACHE]","as_core_1451031566_614",name);
			delete _sharedObject.data[name];
			delete _sharedObjectTemp[name];
			delete _memory[name];
		}

		
		/**
		 * 剩下任务数
		 */		
		public function get missionCount():uint
		{
			return _queue.length;
		}

		
		
		
		
		public function hasMission(name:String):Boolean
		{
			//PATH正在加载,返回
			if(currentMission && currentMission.name == name)
			{
				//trace("[CACHE]","添加任务","失败","正在进行",mission.name);
				return true;
			}
			
			//PATH已加入列表,返回
			var i:uint;
			for(i=0;i<_queue.length;i++)
			{
				if(Mission(_queue[i]).name == name)
				{
					//trace("[CACHE]","添加任务","失败","已经存在",mission.name);
					return true;
				}
			}
			return false;
		}

		public function missionIsComplete(name:String):Boolean
		{
			var i:uint;
			for(i=0;i<_completQueue.length;i++)
			{
				if(Mission(_completQueue[i]).name == name)
				{
					//trace("[CACHE]","添加任务","失败","已经存在",mission.name);
					return true;
				}
			}
			
			return false;
		}


		public function trace(...alt):void
		{
			if(traceFunction!=null)
			{
				traceFunction.apply(null,alt);
			}
		}
		
		
		public function get currentMission():Mission
		{
			return _currentMission;
		}
		protected function stopCurrentMission():void
		{
			if(!currentMission)
			{
				return;
			}
			
			var mission:Mission = currentMission;
			mission.abort();
			_queue.unshift(mission);
			
			setCurrentMission(null);
		}
		
		
		public function loadMission(mission:Mission):void
		{
			if(!mission.name)
			{
				trace("[CACHE]","as_core_1451031566_615_0","as_core_1451031566_615_1","as_core_1451031566_615_2");
				return;
			}
			if(!mission.path)
			{
				trace("[CACHE]","as_core_1451031566_616_0","as_core_1451031566_616_1","as_core_1451031566_616_2");
				return;
			}
			if(mission.path == "")
			{
				trace("[CACHE]","as_core_1451031566_617_0","as_core_1451031566_617_1","as_core_1451031566_617_2");
				return;
			}
			if(!mission.key)
			{
				mission.key = "";
			}
			
			if(hasMission(mission.name))
			{
				trace("[CACHE]","as_core_1451031566_618_0","as_core_1451031566_618_1","as_core_1451031566_618_2",mission.name);
				return;
			}
			
			if(!mission.applicationDomain)
			{
				mission.applicationDomain = applicationDomain;
			}
			
			if(!mission.base)
			{
				mission.base = base;
			}
			trace("[LOAD]",mission.path);
			
			//加入队列
			switch(mission.priority)
			{
				//立刻加载此任务
				case 2:
					stopCurrentMission();
					_queue.unshift(mission);
					break;
				
				//下一个加载此任务
				case 1:
					_queue.unshift(mission);
					break;
				
				//加到队列尾
				case 0:
					_queue.push(mission);
					break;
			}
			stopLazyQueue();
			//自动开始加载
			loadNextMisson();
		}

		
		/**
		 * 下一个任务
		 */		
		protected function loadNextMisson():void
		{
			//正在加载,返回
			if(currentMission)
			{
				return;
			}
			
			//没有任务了
			if(missionCount < 1)
			{
				trace("[CACHE]","as_core_1451031566_619_0","as_core_1451031566_619_1");
				dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_EMPTY));
				
				//开始懒加载
				startLazyQueue();
				return;
			}

			//获取一个新任务
			var mission:Mission = _queue.shift() as Mission;
			trace("[CACHE]","as_core_1451031566_620",mission.name);

			setCurrentMission(mission);

			if(mission.useCache)
			{
				mission.start(getBytes(mission.name));
			}else
			{
				mission.start(null);
			}
		}
		
		protected function setCurrentMission(mission:Mission):void
		{
			if(currentMission)
			{
				currentMission.removeEventListener(LoaderEvent.MISSION_START,missionHandler);
				currentMission.removeEventListener(LoaderEvent.MISSION_PROGRESS,missionHandler);
				currentMission.removeEventListener(LoaderEvent.MISSION_COMPLETE,missionHandler);
				currentMission.removeEventListener(LoaderEvent.MISSION_ERROR,missionHandler);
				currentMission.removeEventListener(LoaderEvent.MISSION_ABORT,missionHandler);
				_currentMission = null;
			}
			
			if(!mission)
			{
				return;
			}
			_currentMission = mission;
			mission.addEventListener(LoaderEvent.MISSION_START,missionHandler);
			mission.addEventListener(LoaderEvent.MISSION_PROGRESS,missionHandler);
			mission.addEventListener(LoaderEvent.MISSION_COMPLETE,missionHandler);
			mission.addEventListener(LoaderEvent.MISSION_ERROR,missionHandler);
			mission.addEventListener(LoaderEvent.MISSION_ABORT,missionHandler);
		}
		
		
		public function removeAllMission(containCurrentMission:Boolean):void
		{
			trace("[CACHE]","as_core_1451031566_621_0","as_core_1451031566_621_1");
			
			trace(System.totalMemory);
			var mission:Mission;
			if(containCurrentMission && currentMission)
			{
				currentMission.abort();
				
				mission = currentMission;
				setCurrentMission(null);
				dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,mission));
			}

			while(_queue.length > 0)
			{
				mission = _queue.pop() as Mission;
				mission.destroy();
				dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,mission));
			}
			
			while(_completQueue.length > 0)
			{
				mission = _completQueue.pop() as Mission;
				mission.destroy();
				dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,mission));
			}
			trace(System.totalMemory);
		}
		
		public function getMission(name:String):Mission
		{
			//PATH正在加载,返回
			if(currentMission && currentMission.name == name)
			{
				//trace("[CACHE]","添加任务","失败","正在进行",mission.name);
				return currentMission;
			}
			
			var i:uint;
			for(i=0;i<_queue.length;i++)
			{
				if(Mission(_queue[i]).name == name)
				{
					//trace("[CACHE]","添加任务","失败","已经存在",mission.name);
					return _queue[i];
				}
			}
			
			return null;
		}
		
		public function getCompleteMission(name:String):Mission
		{
			var i:uint;
			for(i=0;i<_completQueue.length;i++)
			{
				if(Mission(_completQueue[i]).name == name)
				{
					//trace("[CACHE]","添加任务","失败","已经存在",mission.name);
					return _completQueue[i];
				}
			}
			
			return null;
		}
		
		/**
		 * 删除指定下载任务 
		 * @param name					名称
		 * @param containCurrentMission	是否包括当前任务
		 */
		public function removeMission(name:String,containCurrentMission:Boolean):void
		{
			if(!name)
			{
				return;
			}
			
			trace("[CACHE]","as_core_1451031566_622",name);
			
			//从队列中删除
			var i:uint;
			var mission:Mission;
			for(i=0;i<_queue.length;i++)
			{
				if(Mission(_queue[i]).name == name)
				{
					mission = _queue.splice(i,1)[0] as Mission;
					dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,mission));
					return;
				}
			}
			//从队列中删除
			for(i=0;i<_completQueue.length;i++)
			{
				if(Mission(_completQueue[i]).name == name)
				{
					mission = _completQueue.splice(i,1)[0] as Mission;
					mission.destroy();
					dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,mission));
					return;
				}
			}

			//如果要取消的包括当前任务
			if(containCurrentMission && currentMission && currentMission.name == name)
			{
				mission = currentMission;
				currentMission.abort();
				setCurrentMission(null);
				dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,mission));
				
				// 自动开始下一个任务
				loadNextMisson();
			}
		}
		
		protected function missionHandler(event:LoaderEvent):void
		{
			var mission:Mission;
			switch(event.type)
			{
				case LoaderEvent.MISSION_COMPLETE:
					mission = event.mission;
					trace("[CACHE]","as_core_1451031566_623",mission.name);
					
					saveCache(mission);
					
					setCurrentMission(null);
					
					dispatchEvent(event);
					
					loadNextMisson();
					break;
				
				case LoaderEvent.MISSION_ERROR:
					mission = event.mission;
					trace("[CACHE]","as_core_1451031566_624",mission.name);
					setCurrentMission(null);
					
					dispatchEvent(event);
					
					loadNextMisson();
					break;
				case LoaderEvent.MISSION_START:
				case LoaderEvent.MISSION_PROGRESS:
				case LoaderEvent.MISSION_ABORT:
					dispatchEvent(event);
					break;
			}
			
			
		}
		

		public function saveCache(mission:Mission):void
		{
			//保存类型
			switch(mission.cacheType)
			{
				case LoaderAssist.FLASH_CACHE:
					//先存在临时SO中
					_sharedObjectTemp[mission.name] = mission.bytes;
					_memory[mission.name] = mission.bytes;
					break;
				case LoaderAssist.MEMORY_CACHE:
					_memory[mission.name] = mission.bytes;
					break;
				case LoaderAssist.NO_CACHE:
					break;
			}
			
			_completQueue.push(mission);
		}
		
		
		
		private function onMissionDestroy(evt:LoaderEvent):void
		{
			var mission:Mission;
			
			mission = evt.currentTarget as Mission;
			mission.removeEventListener(LoaderEvent.MISSION_DESTROY, onMissionDestroy);
			_completQueue.splice(_completQueue.indexOf(mission), 1);
			dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE,0,0,mission));
		}
		
		
		
		
		
		
		public function hasLazyMission(name:String):Boolean
		{
			//PATH正在加载,返回
			if(currentLazyMission && currentLazyMission.name == name)
			{
				//trace("[CACHE]","添加任务","失败","正在进行",mission.name);
				return true;
			}
			
			//PATH已加入列表,返回
			var i:uint;
			for(i=0;i<_lazyQueue.length;i++)
			{
				if(Mission(_lazyQueue[i]).name == name)
				{
					//trace("[CACHE]","添加任务","失败","已经存在",mission.name);
					return true;
				}
			}
			return false;
		}
		
		
		public function get lazyMissionCount():uint
		{
			return _lazyQueue.length;
		}
		
		public function get currentLazyMission():Mission
		{
			return _currentLazyMission;
		}
		protected function stopCurrentLazyMission():void
		{
			if(!currentLazyMission)
			{
				return;
			}
			
			var mission:Mission = currentLazyMission;
			mission.abort();
			_lazyQueue.unshift(mission);
			
			setCurrentLazyMission(null);
		}
		
		protected function setCurrentLazyMission(mission:Mission):void
		{
			if(currentLazyMission)
			{
				currentLazyMission.removeEventListener(LoaderEvent.MISSION_COMPLETE,lazyMissionHandler);
				currentLazyMission.removeEventListener(LoaderEvent.MISSION_ERROR,lazyMissionHandler);
				
				_currentLazyMission = null;
			}
			
			if(!mission)
			{
				return;
			}
			_currentLazyMission = mission;

			mission.addEventListener(LoaderEvent.MISSION_COMPLETE,lazyMissionHandler);
			mission.addEventListener(LoaderEvent.MISSION_ERROR,lazyMissionHandler);
		}

		
		public function loadLazyMission(mission:Mission):void
		{
			if(!mission.name)
			{
				trace("[CACHE]","as_core_1451031566_625_0","as_core_1451031566_625_1","as_core_1451031566_625_2");
				return;
			}
			if(!mission.path)
			{
				trace("[CACHE]","as_core_1451031566_626_0","as_core_1451031566_626_1","as_core_1451031566_626_2");
				return;
			}
			
			if(hasMission(mission.name) || hasLazyMission(mission.name))
			{
				trace("[CACHE]","as_core_1451031566_627_0","as_core_1451031566_627_1","as_core_1451031566_627_2",mission.name);
				return;
			}
			
			if(!mission.key)
			{
				mission.key = "";
			}
			
			if(!mission.applicationDomain)
			{
				mission.applicationDomain = applicationDomain;
			}
			
			if(!mission.base)
			{
				mission.base = base;
			}
			
			_lazyQueue.push(mission);
			
			startLazyQueue();
		}
		public function startLazyQueue():void
		{
			if(lazyMissionCount < 1)
			{
				return;
			}
			//当前正在加载正常任务～返回
			if(currentMission)
			{
				return;
			}
			//当前正在加载懒加载任务～返回		
			if(currentLazyMission)
			{
				return;
			}
			
			trace("[CACHE]","as_core_1451031566_628_0","as_core_1451031566_628_1");
			loadNextLazyMission();
		}
		public function stopLazyQueue():void
		{
			if(!currentLazyMission)
			{
				return;
			}
			stopCurrentLazyMission();
			trace("[CACHE]","as_core_1451031566_629_0","as_core_1451031566_629_1");
		}
		
		
		
		
		protected function loadNextLazyMission():void
		{
			//当前正在加载正常任务～返回
			if(currentMission)
			{
				return;
			}
			//当前正在加载懒加载任务～返回		
			if(currentLazyMission)
			{
				return;
			}
			//所有懒加载任务已结束~
			if(lazyMissionCount < 1)
			{
				trace("[CACHE]","as_core_1451031566_630_0","as_core_1451031566_630_1");
				dispatchEvent(new LoaderEvent(LoaderEvent.LAZY_MISSION_EMPTY));
				return;
			}
			
			
			//获取一个新任务
			var mission:Mission = _lazyQueue.shift() as Mission;
			trace("[CACHE]","as_core_1451031566_631_0","as_core_1451031566_631_1",mission.name);
			
			setCurrentLazyMission(mission);
			
			if(mission.useCache)
			{
				mission.start(getBytes(mission.name));
			}else
			{
				mission.start(null);
			}
		}

		protected function lazyMissionHandler(event:LoaderEvent):void
		{
			switch(event.type)
			{
				case LoaderEvent.MISSION_COMPLETE:
					var mission:Mission = event.mission;
					
					saveCache(mission);
					
					_lazyMission[mission.name] = mission;
					setCurrentLazyMission(null);
					loadNextLazyMission();
					break;
				
				case LoaderEvent.MISSION_ERROR:
					setCurrentLazyMission(null);
					loadNextLazyMission();
					break;
			}
			
			
		}
		
		
		
		public function getLazyMission(name:String):Mission
		{
			return _lazyMission[name]
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		public function get flashCacheSize():Number
		{
			return _sharedObject.size;
		}
		
		
		/**
		 * 是否正在显示保存缓存的用户确认面板 
		 */
		public function get isCachePanel():Boolean
		{
			return LoaderAssist.isCachePanel;
		}
		
		
		/**
		 * 将临时SO里的数据转移到SO里.这样并不会产生写硬盘的操作
		 */		
		public function transferCache():void
		{
			for(var i:String in _sharedObjectTemp)
			{
				_sharedObject.data[i] = _sharedObjectTemp[i];
			}
		}
		
		
		/**
		 * 将SO缓存与入硬盘作
		 */		
		public function flushCache():void
		{
			//不需要flush的话~取消
			if(!isNeedFlush)return;
			//已经打开cachePanel,也返回
			if(isCachePanel)return;
			trace("[CACHE]","FLUSH!");
			

			
			//是否弹出了用户确认面板
			var fs:String;
			try
			{
				//申请100M的空间(100M以上将是无限空间)
				fs = _sharedObject.flush(1024*1024*100);
			}catch(err:Error){};
			
			if(fs == SharedObjectFlushStatus.PENDING)
			{
				//弹出了框框
				_sharedObject.addEventListener(NetStatusEvent.NET_STATUS,_netStatusEvent);
				LoaderAssist.isCachePanel = true;
				dispatchEvent(new LoaderEvent(LoaderEvent.SHOW_CACHE_PANEL));
			}else if(fs == SharedObjectFlushStatus.FLUSHED)
			{
				//未弹出框框,直接保存
				transferCache();
				
				emptyObject(_sharedObjectTemp);
				_sharedObject.flush(1024*1024*100);
			}else if(!fs)
			{
				//禁止了FLASHCACHE
				//Security.showSettings(SecurityPanel.LOCAL_STORAGE);
				dispatchEvent(new LoaderEvent(LoaderEvent.DISABLED_CACHE));
			}
		}
		public function get isNeedFlush():Boolean
		{
			for(var key:String in _sharedObjectTemp)
			{
				return true;
			}
			return false;
		}
		
		//是否关闭了面板
		private function _netStatusEvent(e:NetStatusEvent):void
		{
			LoaderAssist.isCachePanel = false;
			switch (e.info.code) 
			{
				//点了确定
				case "SharedObject.Flush.Success":
					flushCache();
					break;
				
				//点了取消
				case "SharedObject.Flush.Failed":
				default:
					trace("[CACHE]","as_core_1451031566_632");
					break;
			}
			dispatchEvent(new LoaderEvent(LoaderEvent.HIDE_CACHE_PANEL));
		}

		public function dumpCompleteMission():void
		{
			for each(var mission:Mission in _completQueue)
			{
				trace("imageLoaderAssets", mission.name, mission.path);
			}
		}
	}
}