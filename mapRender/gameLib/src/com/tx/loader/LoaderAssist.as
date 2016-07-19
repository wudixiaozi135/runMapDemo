package com.tx.loader
{
	import com.tx.loader.mission.Mission;

	import flash.events.EventDispatcher;
	import flash.events.NetStatusEvent;
	import flash.net.SharedObject;
	import flash.net.SharedObjectFlushStatus;
	import flash.system.ApplicationDomain;
	import flash.system.System;
	import flash.utils.ByteArray;

	/**
	 * 加载Assist
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class LoaderAssist extends EventDispatcher implements ILoader
	{
		static protected var isCachePanel:Boolean;				//是否是缓存界面

		static protected var sharedObjectMap:Object = {};		//保存在本地的资源列表

		static protected var sharedObjectTempMap:Object = {};	//保存在本地的临时资源列表

		static protected var memoryMap:Object = {};				//资源存储列表

		/** 版本号 */
		static public var version:String = "1.44";

		/** 加载完成后是否存入特定的缓存空间 0:不保存  1:存入内存(当前运行有效) 2:存入SHAREDOBJECT */
		static public var NO_CACHE:uint = 0;
		static public var MEMORY_CACHE:uint = 1;
		static public var FLASH_CACHE:uint = 2;

		private var _applicationDomain:ApplicationDomain = new ApplicationDomain();	//程序域

		private var _lazyQueue:Array;				//懒惰加载列表
		private var _lazyMission:Object;			//懒惰加载器Object
		private var _currentLazyMission:Mission;	//当前懒惰加载器
		private var _memory:Object;					//内存缓存对象
		private var _currentMission:Mission;		//当前任务
		private var _sharedObject:SharedObject;		//保存ByteArray的SharedObject
		private var _sharedObjectTemp:Object;		//临时保存byte的SharedObject
		private var _name:String;					//名称
		private var _traceFunction:Function;		//输出函数
		private var _base:String = "";				//base

		protected var queue:Array;					//等待任务队列
		protected var completQueue:Array;			//完成mission队列

		/**
		 * 构造函数
		 * @param name        SharedObject对象名象
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
			this.queue = [];

			//完成mission队列
			this.completQueue = [];

			_lazyQueue = [];
			_lazyMission = {};
		}

		/**
		 * 获取输出函数
		 * @return 输出函数
		 *
		 */
		public function get traceFunction():Function
		{
			return _traceFunction;
		}

		/**
		 * 设置输出函数
		 * @param value    输出函数
		 *
		 */
		public function set traceFunction(value:Function):void
		{
			_traceFunction = value;
		}

		/**
		 * 获取base
		 * @return base(String)
		 *
		 */
		public function get base():String
		{
			return _base;
		}

		/**
		 * 设置base
		 * @value    base(String)
		 *
		 */
		public function set base(value:String):void
		{
			_base = value || "";
		}

		/**
		 * 获取程序域
		 * @return 程序域
		 *
		 */
		public function get applicationDomain():ApplicationDomain
		{
			return _applicationDomain;
		}

		/**
		 * 设置程序域
		 * @param value    程序域
		 *
		 */
		public function set applicationDomain(value:ApplicationDomain):void
		{
			_applicationDomain = value || new ApplicationDomain();
		}

		/**
		 * 剩下任务数
		 * @return 剩下任务数
		 *
		 */
		public function get missionCount():uint
		{
			return this.queue.length;
		}

		/**
		 * 获取当前加载任务
		 * @return    当前加载任务
		 *
		 */
		public function get currentMission():Mission
		{
			return _currentMission;
		}

		/**
		 * 获取懒惰加载任务数量
		 * @return    懒惰加载任务数量
		 *
		 */
		public function get lazyMissionCount():uint
		{
			return _lazyQueue.length;
		}

		/**
		 * 当前懒惰加载任务
		 * @return 当前懒惰加载任务
		 *
		 */
		public function get currentLazyMission():Mission
		{
			return _currentLazyMission;
		}

		/**
		 * flash缓存大小
		 * @return flash缓存大小
		 *
		 */
		public function get flashCacheSize():Number
		{
			return _sharedObject.size;
		}

		/**
		 * 是否正在显示保存缓存的用户确认面板
		 * @return 是=true
		 *
		 */
		public function get isCachePanel():Boolean
		{
			return LoaderAssist.isCachePanel;
		}

		/**
		 * 是否要将SO缓存与入硬盘中
		 * @return 是=true
		 *
		 */
		public function get isNeedFlush():Boolean
		{
			for (var key:String in _sharedObjectTemp)
			{
				return true;
			}
			return false;
		}

		/**
		 * 获取公共定义类
		 * @param def    类名称
		 * @return        CLASS
		 *
		 */
		public function getClass(def:String):Class
		{
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
		 * 创建公共定义类
		 * @param def    类名称
		 * @return        Object
		 *
		 */
		public function createObject(def:String):Object
		{
			var c:Class = getClass(def);
			return c ? new c : null;
		}

		/**
		 * 缓存中是否有指定文件
		 * @param name    路径
		 * @return        有=true
		 *
		 */
		public function hasBytes(name:String):Boolean
		{
			var bytes:ByteArray = _memory[name] || (_sharedObjectTemp[name] || _sharedObject.data[name]);

			return bytes != null;
		}

		/**
		 * 从缓存中获取指定文件
		 * @param name            路径
		 * @param key            如需验证,传key
		 * @param uncompress    是否需要解压
		 * @return                二进制数据
		 */
		public function getBytes(name:String, uncompress:Boolean = false):ByteArray
		{
			var bytes:ByteArray = _memory[name] || (_sharedObjectTemp[name] || _sharedObject.data[name]);
			bytes = Mission.copyBytes(bytes);
			if (uncompress)
			{
				Mission.uncompress(bytes);
			}
			return bytes;
		}

		/**
		 * 从缓存中删除所有
		 * @param containCurrentMission    是否包含当前的加载任务
		 *
		 */
		public function removeAllBytes():void
		{
			trace("[CACHE]", "as_core_1451031566_613_0", "as_core_1451031566_613_1");
			emptyObject(_memory);
			emptyObject(_sharedObjectTemp);
			emptyObject(_sharedObject.data);
		}

		/**
		 * 从缓存中删除
		 * @param name    路径
		 *
		 */
		public function removeBytes(name:String):void
		{
			trace("[CACHE]", "as_core_1451031566_614", name);
			delete _sharedObject.data[name];
			delete _sharedObjectTemp[name];
			delete _memory[name];
		}

		/**
		 * 根据路径检测是否 有该任务
		 * @param name    路径
		 * @return        有=true
		 *
		 */
		public function hasMission(name:String):Boolean
		{
			//PATH正在加载,返回
			if (this.currentMission && this.currentMission.name == name)
			{
				//trace("[CACHE]","添加任务","失败","正在进行",mission.name);
				return true;
			}

			//PATH已加入列表,返回
			var i:uint;
			for (i = 0; i < this.queue.length; i++)
			{
				if (Mission(this.queue[i]).name == name)
				{
					//trace("[CACHE]","添加任务","失败","已经存在",mission.name);
					return true;
				}
			}
			return false;
		}

		/**
		 * 根据指定路径获取任务是否加载完成
		 * @param name    路径
		 * @return        完成=true
		 *
		 */
		public function missionIsComplete(name:String):Boolean
		{
			var i:uint;
			for (i = 0; i < this.completQueue.length; i++)
			{
				if (Mission(this.completQueue[i]).name == name)
				{
					//trace("[CACHE]","添加任务","失败","已经存在",mission.name);
					return true;
				}
			}

			return false;
		}

		/**
		 * 停止当前加载任务
		 *
		 */
		protected function stopCurrentMission():void
		{
			if (!this.currentMission)
			{
				return;
			}

			var mission:Mission = this.currentMission;
			mission.abort();
			this.queue.unshift(mission);

			this.setCurrentMission(null);
		}

		/**
		 * 加载任务
		 * @param mission    加载任务基类
		 *
		 */
		public function loadMission(mission:Mission):void
		{
			if (!mission.name)
			{
				trace("[CACHE]", "as_core_1451031566_615_0", "as_core_1451031566_615_1", "as_core_1451031566_615_2");
				return;
			}
			if (!mission.path)
			{
				trace("[CACHE]", "as_core_1451031566_616_0", "as_core_1451031566_616_1", "as_core_1451031566_616_2");
				return;
			}
			if (mission.path == "")
			{
				trace("[CACHE]", "as_core_1451031566_617_0", "as_core_1451031566_617_1", "as_core_1451031566_617_2");
				return;
			}
			if (!mission.key)
			{
				mission.key = "";
			}

			if (this.hasMission(mission.name))
			{
				trace("[CACHE]", "as_core_1451031566_618_0", "as_core_1451031566_618_1", "as_core_1451031566_618_2", mission.name);
				return;
			}

			if (!mission.applicationDomain)
			{
				mission.applicationDomain = this.applicationDomain;
			}

			if (!mission.base)
			{
				mission.base = this.base;
			}
			trace("[LOAD]", mission.path);

			//加入队列
			switch (mission.priority)
			{
				case 2://立刻加载此任务
					stopCurrentMission();
					queue.unshift(mission);
					break;

				case 1://下一个加载此任务
					queue.unshift(mission);
					break;

				case 0://加到队列尾
					queue.push(mission);
					break;
			}
			this.stopLazyQueue();
			//自动开始加载
			this.loadNextMisson();
		}

		/**
		 * 下一个任务
		 *
		 */
		protected function loadNextMisson():void
		{
			//正在加载,返回
			if (this.currentMission)
			{
				return;
			}

			//没有任务了
			if (this.missionCount < 1)
			{
				trace("[CACHE]", "as_core_1451031566_619_0", "as_core_1451031566_619_1");
				this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_EMPTY));

				//开始懒加载
				this.startLazyQueue();
				return;
			}

			//获取一个新任务
			var mission:Mission = this.queue.shift() as Mission;
			trace("[CACHE]", "as_core_1451031566_620", mission.name);

			this.setCurrentMission(mission);

			if (mission.useCache)
			{
				mission.start(getBytes(mission.name));
			}
			else
			{
				mission.start(null);
			}
		}

		/**
		 * 设置当前加载任务
		 * @param mission    加载任务
		 *
		 */
		protected function setCurrentMission(mission:Mission):void
		{
			if (this.currentMission)
			{
				this.currentMission.removeEventListener(LoaderEvent.MISSION_START, this.missionHandler);
				this.currentMission.removeEventListener(LoaderEvent.MISSION_PROGRESS, this.missionHandler);
				this.currentMission.removeEventListener(LoaderEvent.MISSION_COMPLETE, this.missionHandler);
				this.currentMission.removeEventListener(LoaderEvent.MISSION_ERROR, this.missionHandler);
				this.currentMission.removeEventListener(LoaderEvent.MISSION_ABORT, this.missionHandler);
				_currentMission = null;
			}

			if (!mission)
			{
				return;
			}
			_currentMission = mission;
			mission.addEventListener(LoaderEvent.MISSION_START, this.missionHandler);
			mission.addEventListener(LoaderEvent.MISSION_PROGRESS, this.missionHandler);
			mission.addEventListener(LoaderEvent.MISSION_COMPLETE, this.missionHandler);
			mission.addEventListener(LoaderEvent.MISSION_ERROR, this.missionHandler);
			mission.addEventListener(LoaderEvent.MISSION_ABORT, this.missionHandler);
		}

		/**
		 * 移除所有加载任务
		 * @param containCurrentMission    是否包含当前加载的任务,是=true
		 *
		 */
		public function removeAllMission(containCurrentMission:Boolean):void
		{
			trace("[CACHE]", "as_core_1451031566_621_0", "as_core_1451031566_621_1");

			trace(System.totalMemory);
			var mission:Mission;
			if (containCurrentMission && this.currentMission)
			{
				this.currentMission.abort();

				mission = this.currentMission;
				this.setCurrentMission(null);
				this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE, 0, 0, mission));
			}

			while (this.queue.length > 0)
			{
				mission = this.queue.pop() as Mission;
				mission.destroy();
				this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE, 0, 0, mission));
			}

			while (this.completQueue.length > 0)
			{
				mission = this.completQueue.pop() as Mission;
				mission.destroy();
				this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE, 0, 0, mission));
			}
			trace(System.totalMemory);
		}

		/**
		 * 获取指定路径的加载任务
		 * @param name    路径
		 * @return        加载任务
		 *
		 */
		public function getMission(name:String):Mission
		{
			//PATH正在加载,返回
			if (this.currentMission && this.currentMission.name == name)
			{
				//trace("[CACHE]","添加任务","失败","正在进行",mission.name);
				return this.currentMission;
			}

			var i:uint;
			for (i = 0; i < this.queue.length; i++)
			{
				if (Mission(this.queue[i]).name == name)
				{
					//trace("[CACHE]","添加任务","失败","已经存在",mission.name);
					return this.queue[i];
				}
			}

			return null;
		}

		/**
		 * 获取指定路径完成的加载任务
		 * @param name    路径
		 * @return        加载任务
		 *
		 */
		public function getCompleteMission(name:String):Mission
		{
			var i:uint;
			for (i = 0; i < this.completQueue.length; i++)
			{
				if (Mission(this.completQueue[i]).name == name)
				{
					//trace("[CACHE]","添加任务","失败","已经存在",mission.name);
					return this.completQueue[i];
				}
			}

			return null;
		}

		/**
		 * 删除指定下载任务
		 * @param name                    路径
		 * @param containCurrentMission    是否包括当前任务
		 *
		 */
		public function removeMission(name:String, containCurrentMission:Boolean):void
		{
			if (!name)
			{
				return;
			}

			trace("[CACHE]", "as_core_1451031566_622", name);

			//从队列中删除
			var i:uint;
			var mission:Mission;
			for (i = 0; i < this.queue.length; i++)
			{
				if (Mission(this.queue[i]).name == name)
				{
					mission = this.queue.splice(i, 1)[0] as Mission;
					this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE, 0, 0, mission));
					return;
				}
			}

			//从队列中删除
			for (i = 0; i < this.completQueue.length; i++)
			{
				if (Mission(this.completQueue[i]).name == name)
				{
					mission = completQueue.splice(i, 1)[0] as Mission;
					mission.destroy();
					this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE, 0, 0, mission));
					return;
				}
			}

			//如果要取消的包括当前任务
			if (containCurrentMission && this.currentMission && this.currentMission.name == name)
			{
				mission = this.currentMission;
				this.currentMission.abort();
				this.setCurrentMission(null);
				this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE, 0, 0, mission));

				// 自动开始下一个任务
				this.loadNextMisson();
			}
		}

		/**
		 * 加载任务事件处理
		 * @param event
		 *
		 */
		protected function missionHandler(event:LoaderEvent):void
		{
			var mission:Mission;
			switch (event.type)
			{
				case LoaderEvent.MISSION_COMPLETE://加载完成
					mission = event.mission;
					trace("[CACHE]", "as_core_1451031566_623", mission.name);

					this.saveCache(mission);

					this.setCurrentMission(null);

					this.dispatchEvent(event);

					this.loadNextMisson();
					break;

				case LoaderEvent.MISSION_ERROR://加载错误
					mission = event.mission;
					trace("[CACHE]", "as_core_1451031566_624", mission.name);
					this.setCurrentMission(null);

					this.dispatchEvent(event);

					this.loadNextMisson();
					break;
				case LoaderEvent.MISSION_START:
				case LoaderEvent.MISSION_PROGRESS:
				case LoaderEvent.MISSION_ABORT:
					this.dispatchEvent(event);
					break;
			}
		}

		/**
		 * 保存到缓存中
		 * @param mission
		 *
		 */
		public function saveCache(mission:Mission):void
		{
			//保存类型
			switch (mission.cacheType)
			{
				case LoaderAssist.FLASH_CACHE://保存到flash缓存中
					//先存在临时SO中
					_sharedObjectTemp[mission.name] = mission.bytes;
					_memory[mission.name] = mission.bytes;
					break;
				case LoaderAssist.MEMORY_CACHE://保存到内存中
					_memory[mission.name] = mission.bytes;
					break;
				case LoaderAssist.NO_CACHE://不保存
					break;
			}

			this.completQueue.push(mission);
		}

		/**
		 * 销毁加载任务
		 * @param evt
		 *
		 */
		private function onMissionDestroy(evt:LoaderEvent):void
		{
			var mission:Mission;

			mission = evt.currentTarget as Mission;
			mission.removeEventListener(LoaderEvent.MISSION_DESTROY, onMissionDestroy);
			this.completQueue.splice(this.completQueue.indexOf(mission), 1);
			this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_REMOVE, 0, 0, mission));
		}

		/**
		 * 是否有指定路径的加载任务
		 * @param name    路径
		 * @return        有=true
		 *
		 */
		public function hasLazyMission(name:String):Boolean
		{
			//PATH正在加载,返回
			if (this.currentLazyMission && this.currentLazyMission.name == name)
			{
				//trace("[CACHE]","添加任务","失败","正在进行",mission.name);
				return true;
			}

			//PATH已加入列表,返回
			var i:uint;
			for (i = 0; i < _lazyQueue.length; i++)
			{
				if (Mission(_lazyQueue[i]).name == name)
				{
					//trace("[CACHE]","添加任务","失败","已经存在",mission.name);
					return true;
				}
			}
			return false;
		}

		/**
		 * 停止当前懒惰加载任务
		 *
		 */
		protected function stopCurrentLazyMission():void
		{
			if (!this.currentLazyMission)
			{
				return;
			}

			var mission:Mission = this.currentLazyMission;
			mission.abort();
			_lazyQueue.unshift(mission);

			this.setCurrentLazyMission(null);
		}

		/**
		 * 设置当前懒惰加载任务
		 * @param mission    加载任务
		 *
		 */
		protected function setCurrentLazyMission(mission:Mission):void
		{
			if (this.currentLazyMission)
			{
				this.currentLazyMission.removeEventListener(LoaderEvent.MISSION_COMPLETE, this.lazyMissionHandler);
				this.currentLazyMission.removeEventListener(LoaderEvent.MISSION_ERROR, this.lazyMissionHandler);

				_currentLazyMission = null;
			}

			if (!mission)
			{
				return;
			}
			_currentLazyMission = mission;

			mission.addEventListener(LoaderEvent.MISSION_COMPLETE, this.lazyMissionHandler);
			mission.addEventListener(LoaderEvent.MISSION_ERROR, this.lazyMissionHandler);
		}


		/**
		 * 开始懒惰加载任务
		 * @param mission    懒惰加载任务
		 *
		 */
		public function loadLazyMission(mission:Mission):void
		{
			if (!mission.name)
			{
				trace("[CACHE]", "as_core_1451031566_625_0", "as_core_1451031566_625_1", "as_core_1451031566_625_2");
				return;
			}
			if (!mission.path)
			{
				trace("[CACHE]", "as_core_1451031566_626_0", "as_core_1451031566_626_1", "as_core_1451031566_626_2");
				return;
			}

			if (this.hasMission(mission.name) || this.hasLazyMission(mission.name))
			{
				trace("[CACHE]", "as_core_1451031566_627_0", "as_core_1451031566_627_1", "as_core_1451031566_627_2", mission.name);
				return;
			}

			if (!mission.key)
			{
				mission.key = "";
			}

			if (!mission.applicationDomain)
			{
				mission.applicationDomain = this.applicationDomain;
			}

			if (!mission.base)
			{
				mission.base = this.base;
			}

			_lazyQueue.push(mission);

			this.startLazyQueue();
		}

		/**
		 * 开始加载
		 *
		 */
		public function startLazyQueue():void
		{
			if (this.lazyMissionCount < 1)
			{
				return;
			}

			//当前正在加载正常任务～返回
			if (this.currentMission)
			{
				return;
			}

			//当前正在加载懒惰任务～返回		
			if (this.currentLazyMission)
			{
				return;
			}

			trace("[CACHE]", "as_core_1451031566_628_0", "as_core_1451031566_628_1");
			this.loadNextLazyMission();
		}

		/**
		 * 停止加载
		 *
		 */
		public function stopLazyQueue():void
		{
			if (!this.currentLazyMission)
			{
				return;
			}
			this.stopCurrentLazyMission();
			trace("[CACHE]", "as_core_1451031566_629_0", "as_core_1451031566_629_1");
		}

		/**
		 * 开始加载下一个懒惰加载任务
		 *
		 */
		protected function loadNextLazyMission():void
		{
			//当前正在加载正常任务～返回
			if (this.currentMission)
			{
				return;
			}

			//当前正在加载懒加载任务～返回		
			if (this.currentLazyMission)
			{
				return;
			}

			//所有懒加载任务已结束~
			if (this.lazyMissionCount < 1)
			{
				trace("[CACHE]", "as_core_1451031566_630_0", "as_core_1451031566_630_1");
				this.dispatchEvent(new LoaderEvent(LoaderEvent.LAZY_MISSION_EMPTY));
				return;
			}


			//获取一个新任务
			var mission:Mission = _lazyQueue.shift() as Mission;
			trace("[CACHE]", "as_core_1451031566_631_0", "as_core_1451031566_631_1", mission.name);

			this.setCurrentLazyMission(mission);

			if (mission.useCache)
			{
				mission.start(this.getBytes(mission.name));
			}
			else
			{
				mission.start(null);
			}
		}

		/**
		 * 懒惰加载函数处理
		 * @param event
		 *
		 */
		protected function lazyMissionHandler(event:LoaderEvent):void
		{
			switch (event.type)
			{
				case LoaderEvent.MISSION_COMPLETE://加载完成
					var mission:Mission = event.mission;

					this.saveCache(mission);

					_lazyMission[mission.name] = mission;
					this.setCurrentLazyMission(null);
					this.loadNextLazyMission();
					break;

				case LoaderEvent.MISSION_ERROR://加载错误
					this.setCurrentLazyMission(null);
					this.loadNextLazyMission();
					break;
			}
		}

		/**
		 * 获取指定路径的懒惰加载任务
		 * @param name    路径
		 * @return        加载任务
		 *
		 */
		public function getLazyMission(name:String):Mission
		{
			return _lazyMission[name]
		}

		/**
		 * 将临时SO里的数据转移到SO里.这样并不会产生写硬盘的操作
		 *
		 */
		public function transferCache():void
		{
			for (var i:String in _sharedObjectTemp)
			{
				_sharedObject.data[i] = _sharedObjectTemp[i];
			}
		}

		/**
		 * 将SO缓存与入硬盘中
		 *
		 */
		public function flushCache():void
		{
			//不需要flush的话~取消
			if (!this.isNeedFlush)return;
			//已经打开cachePanel,也返回
			if (isCachePanel)return;
			trace("[CACHE]", "FLUSH!");


			//是否弹出了用户确认面板
			var fs:String;
			try
			{
				//申请100M的空间(100M以上将是无限空间)
				fs = _sharedObject.flush(1024 * 1024 * 100);
			}
			catch (err:Error)
			{

			}

			if (fs == SharedObjectFlushStatus.PENDING)
			{
				//弹出了框框
				_sharedObject.addEventListener(NetStatusEvent.NET_STATUS, _netStatusEvent);
				LoaderAssist.isCachePanel = true;
				this.dispatchEvent(new LoaderEvent(LoaderEvent.SHOW_CACHE_PANEL));
			}
			else if (fs == SharedObjectFlushStatus.FLUSHED)
			{
				//未弹出框框,直接保存
				this.transferCache();

				emptyObject(_sharedObjectTemp);
				_sharedObject.flush(1024 * 1024 * 100);
			}
			else if (!fs)
			{
				//禁止了FLASHCACHE
				//Security.showSettings(SecurityPanel.LOCAL_STORAGE);
				this.dispatchEvent(new LoaderEvent(LoaderEvent.DISABLED_CACHE));
			}
		}

		/**
		 * 是否关闭了面板
		 * @param e
		 *
		 */
		private function _netStatusEvent(e:NetStatusEvent):void
		{
			LoaderAssist.isCachePanel = false;
			switch (e.info.code)
			{
				case "SharedObject.Flush.Success"://点了确定
					this.flushCache();
					break;

				case "SharedObject.Flush.Failed"://点了取消
				default:
					trace("[CACHE]", "as_core_1451031566_632");
					break;
			}
			this.dispatchEvent(new LoaderEvent(LoaderEvent.HIDE_CACHE_PANEL));
		}

		/**
		 * 完成的加载任务列表
		 *
		 */
		public function dumpCompleteMission():void
		{
			for each(var mission:Mission in completQueue)
			{
				trace("imageLoaderAssets", mission.name, mission.path);
			}
		}

		/**
		 * 获取本地资源存储器
		 * @param name
		 * @return
		 *
		 */
		protected static function getSharedObject(name:String):SharedObject
		{
			var sharedObject:SharedObject = sharedObjectMap[name];
			if (!sharedObject)
			{
				sharedObject = sharedObjectMap[name] = SharedObject.getLocal(name, "/");
			}
			return sharedObject;
		}

		/**
		 * 获取本地临时资源存储Object
		 * @param name    名称
		 *
		 */
		protected static function getSharedObjectTemp(name:String):Object
		{
			var object:Object = sharedObjectTempMap[name];
			if (!object)
			{
				object = sharedObjectTempMap[name] = {};
			}
			return object;
		}

		/**
		 * 获取本地资源存储Object
		 * @param name    名称
		 *
		 */
		protected static function getMemory(name:String):Object
		{
			var object:Object = memoryMap[name];
			if (!object)
			{
				object = memoryMap[name] = {};
			}
			return object;
		}

		/**
		 * 清空资源
		 * @param object
		 *
		 */
		protected static function emptyObject(object:Object):void
		{
			if (!object)
			{
				return;
			}
			for (var key:String in object)
			{
				delete object[key];
			}
		}

		/**
		 * 输出
		 * @param alt    参数
		 *
		 */
		public function trace(...alt):void
		{
			if (traceFunction != null)
			{
				traceFunction.apply(null, alt);
			}
		}
	}
}