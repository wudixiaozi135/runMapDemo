package com.tx.loader.mission
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.system.ImageDecodingPolicy;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;

	/**
	 * Image加载任务
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class ImageMission extends Mission
	{
		private var loader:Loader;	//加载器

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
		public function ImageMission(name:String, path:String, useCache:Boolean = true, cacheType:uint = 1, key:String = null, data:Object = null)
		{
			super(name, path, useCache, cacheType, key, data);
		}

		/** 位图 */
		public var bitmap:Bitmap;

		/**
		 * 加载内容二进制数据
		 * @return 二进制数据
		 *
		 */
		override public function get bytes():ByteArray
		{
			return this.original;
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

			if (this.original)
			{
				var bitmapData:BitmapData = this.original.readObject() as BitmapData;
				this.bitmap = new Bitmap(bitmapData);
				this.complete();
				return;
			}

			var useBytes:ByteArray = copyBytes(source);
			uncompress(useBytes);

			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.handler);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.handler);
			var context:LoaderContext = new LoaderContext(false, this.applicationDomain);
			context.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
			context.allowCodeImport = true;
			loader.loadBytes(useBytes, context);
		}

		/**
		 * 加载函数处理
		 * @param event
		 *
		 */
		protected function handler(event:Event):void
		{
			loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.handler);
			loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, this.handler);

			if (event.type == Event.COMPLETE)
			{
				this.bitmap = loader.content as Bitmap;

				var ba:ByteArray = new ByteArray();
				ba.writeObject(bitmap.bitmapData);

				this.original = ba;

				this.complete();
			}
			else
			{
				trace("as_core_1451031566_633");
				this.error();
			}
		}
	}
}