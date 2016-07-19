package com.tx.loader.mission
{
	import flash.display.DisplayObjectContainer;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.system.ImageDecodingPolicy;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;

	/**
	 * 加载任务
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class LoaderMission extends Mission
	{
		/** 加载器 */
		public var loader:Loader;

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
		public function LoaderMission(name:String, path:String, useCache:Boolean = true, cacheType:uint = 1, key:String = null, data:Object = null)
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
			if (this.destroyed)
			{
				return;
			}

			this.original = source;

			var useBytes:ByteArray = this.bytes;
			uncompress(useBytes);

			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.handler);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.handler);
			var context:LoaderContext = new LoaderContext(false, this.applicationDomain);
			context.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
			context.allowCodeImport = true;
			loader.loadBytes(decryptSWF(useBytes), context);
		}

		/**
		 * 加载事件处理
		 * @param event
		 *
		 */
		protected function handler(event:Event):void
		{
			loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.handler);
			loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, this.handler);

			if (event.type == Event.COMPLETE)
			{
				if ((loader.content is DisplayObjectContainer) && (loader.content as DisplayObjectContainer).numChildren != 0)
				{
					throw new Error(path + "as_core_1451031566_634");
				}
				this.complete();
			}
			else
			{
				trace("as_core_1451031566_635");
				this.error();
			}
		}

		override public function destroy():void
		{
			loader.unloadAndStop();
			loader = null;

			super.destroy();
		}
	}
}