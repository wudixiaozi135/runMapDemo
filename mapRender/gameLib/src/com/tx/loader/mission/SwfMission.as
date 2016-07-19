package com.tx.loader.mission
{
	import com.tx.loader.LoaderEvent;

	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.net.URLRequest;
	import flash.system.ImageDecodingPolicy;
	import flash.system.LoaderContext;

	/**
	 * SWF加载任务
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class SwfMission extends LoaderMission
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
		public function SwfMission(name:String, path:String, useCache:Boolean = true, cacheType:uint = 1, key:String = null, data:Object = null)
		{
			super(name, path, useCache, cacheType, key, data);
		}

		/**
		 * 开始加载
		 * @param useCache    是否使用缓存
		 *
		 */
		override protected function loaderStart(useCache:Boolean):void
		{
			this.loaderAbort();

			this.retryTime++;

			if (this.retryTime > MAX_RETRY_COUNT)
			{
				this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_ERROR, 0, 0, this));
				return;
			}

			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.handler);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this.handler);
			//loader.loadBytes(useBytes,new LoaderContext(false,applicationDomain));
			var context:LoaderContext = new LoaderContext(false, this.applicationDomain);
			context.imageDecodingPolicy = ImageDecodingPolicy.ON_LOAD;
			loader.load(new URLRequest(this.getQaulifiedUrl(path)), context);
		}

		/**
		 * 事件
		 * @param event
		 *
		 */
		override protected function frame(event:Event):void
		{
			this.sprite.removeEventListener(Event.ENTER_FRAME, this.frame);

			this.dispatchEvent(new LoaderEvent(LoaderEvent.MISSION_COMPLETE, 0, 0, this));
		}

		/**
		 * 加载事件处理
		 * @param event
		 *
		 */
		override protected function handler(event:Event):void
		{
			loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.handler);
			loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, this.handler);

			if (event.type == Event.COMPLETE)
			{
				this.complete();
			}
			else
			{
				trace("as_core_1451031566_637");
				this.error();
			}
		}
	}
}