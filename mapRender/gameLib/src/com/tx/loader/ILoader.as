package com.tx.loader
{
	import com.tx.loader.mission.Mission;

	import flash.events.IEventDispatcher;
	import flash.system.ApplicationDomain;
	import flash.utils.ByteArray;

	/**
	 * 加载器接口类
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public interface ILoader extends IEventDispatcher
	{
		/**
		 * 输出函数
		 * @value    set 输出函数
		 * @return    get 输出函数
		 *
		 */
		function get traceFunction():Function;

		function set traceFunction(value:Function):void;

		/**
		 * base
		 * @value    set String
		 * @return    get String
		 *
		 */
		function get base():String;

		function set base(value:String):void;

		/**
		 * 程序域
		 * @value    程序域
		 * @return    程序域
		 *
		 */
		function get applicationDomain():ApplicationDomain;

		function set applicationDomain(value:ApplicationDomain):void;

		/**
		 * 获取当前懒惰加载任务
		 * @return 当前懒惰加载任务
		 *
		 */
		function get currentLazyMission():Mission;

		/**
		 * 获取懒惰加载任务数量
		 * @return    懒惰加载任务数量
		 *
		 */
		function get lazyMissionCount():uint;

		/**
		 * 获取加载任务数量
		 * @return 加载任务数量
		 *
		 */
		function get missionCount():uint;

		/**
		 * 获取当前加载任务
		 * @return 当前加载任务
		 *
		 */
		function get currentMission():Mission;

		/**
		 * flash缓存大小
		 * @return flash缓存大小
		 *
		 */
		function get flashCacheSize():Number;

		/**
		 * 是否正在显示保存缓存的用户确认面板
		 * @return 是=true
		 *
		 */
		function get isCachePanel():Boolean;

		/**
		 * 是否要将SO缓存与入硬盘中
		 * @return 是=true
		 *
		 */
		function get isNeedFlush():Boolean;

		/**
		 * 加载懒惰任务
		 * @param mission    加载的任务
		 *
		 */
		function loadLazyMission(mission:Mission):void;

		/**
		 * 是否有指定路径的加载任务
		 * @param name    路径
		 * @return        有=true
		 *
		 */
		function hasLazyMission(name:String):Boolean;

		/**
		 * 开始懒惰加载任务
		 *
		 */
		function startLazyQueue():void;

		/**
		 * 停止懒惰加载任务
		 *
		 */
		function stopLazyQueue():void;

		/**
		 * 获取公共定义类
		 * @param def    类名称
		 * @return        CLASS
		 *
		 */
		function getClass(def:String):Class;

		/**
		 * 创建公共定义类
		 * @param def    类名称
		 * @return        Object
		 *
		 */
		function createObject(def:String):Object;

		/**
		 * 缓存中是否有指定路径的文件
		 * @param name    路径
		 * @return        有=true
		 *
		 */
		function hasBytes(name:String):Boolean;

		/**
		 * 从缓存中获取指定文件
		 * @param name            路径
		 * @param uncompress    是否需要解压 需要=true
		 * @return
		 *
		 */
		function getBytes(name:String, uncompress:Boolean = false):ByteArray;

		/**
		 * 从缓存中删除所有
		 *
		 */
		function removeAllBytes():void;

		/**
		 * 从缓存中删除
		 * @param name
		 *
		 */
		function removeBytes(name:String):void;

		/**
		 * 保存资源到内存
		 * @param mission    加载任务
		 *
		 */
		function saveCache(mission:Mission):void;

		/**
		 * 获取懒惰加载的任务Mission
		 * @param name    名称
		 * @return        懒惰的任务Mission
		 *
		 */
		function getLazyMission(name:String):Mission;

		/**
		 * 加载任务
		 * @param mission    加载的任务
		 *
		 */
		function loadMission(mission:Mission):void;

		/**
		 * 检测指定路径的加载任务是否存在
		 * @param name    路径
		 * @return        存在=true
		 *
		 */
		function hasMission(name:String):Boolean;

		/**
		 * 从缓存中删除
		 * @param name                    路径
		 * @param containCurrentMission    是否包含当前任务
		 *
		 */
		function removeMission(name:String, containCurrentMission:Boolean):void;

		/**
		 * 移除所有加载任务
		 * @param containCurrentMission    是否包含当前的加载任务
		 *
		 */
		function removeAllMission(containCurrentMission:Boolean):void;

		/**
		 * 将临时SO里的数据转移到SO里.这样并不会产生写硬盘的操作
		 *
		 */
		function transferCache():void;

		/**
		 * 将SO缓存与入硬盘作
		 *
		 */
		function flushCache():void;

		/**
		 * 输出
		 * @param alt    参数
		 *
		 */
		function trace(...alt):void;
	}
}