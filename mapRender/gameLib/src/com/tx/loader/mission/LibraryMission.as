package com.tx.loader.mission
{
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;

	import nochump.util.zip.ZipEntry;

	import nochump.util.zip.ZipFile;

	/**
	 * Library加载任务
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class LibraryMission extends LoaderMission
	{
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
		public function LibraryMission(name:String, path:String, useCache:Boolean = true, cacheType:uint = 1, key:String = null, data:Object = null)
		{
			super(name, path, useCache, cacheType, key, data);
		}

		/**
		 * 转换二进制数据
		 * @param source    二进制数据
		 *
		 */
		override public function convert(source:ByteArray):void
		{
			this.original = source;

			var useBytes:ByteArray = this.bytes;

			uncompress(useBytes);

			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.handler);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.handler);

			useBytes.position = 0;
			var zipFile:ZipFile = new ZipFile(useBytes);
			var zipEntry:ZipEntry = zipFile.getEntry("library.swf");
			useBytes = zipFile.getInput(zipEntry);

			loader.loadBytes(useBytes, new LoaderContext(false, this.applicationDomain));
		}
	}
}