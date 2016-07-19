package com.tx.loader.mission
{
	import flash.system.System;
	import flash.utils.ByteArray;

	/**
	 * XML加载任务
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class XmlMission extends Mission
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
		public function XmlMission(name:String, path:String, useCache:Boolean = true, cacheType:uint = 1, key:String = null, data:Object = null)
		{
			super(name, path, useCache, cacheType, key, data);
		}

		/** xml数据 */
		public var xml:XML;

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
			useBytes.position = 0;

			try
			{
				this.xml = XML(useBytes.toString());
				this.complete();
			}
			catch (err:Error)
			{
				this.error();
			}
		}

		/**
		 * 销毁
		 *
		 */
		override public function destroy():void
		{
			System.disposeXML(this.xml);

			this.xml = null;
			super.destroy();
		}
	}
}