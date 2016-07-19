package com.tx.loader.mission
{
	import flash.utils.ByteArray;

	/**
	 * TEXT加载任务
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class TextMission extends Mission
	{
		/** 文本内容 */
		public var text:String;

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
		public function TextMission(name:String, path:String, useCache:Boolean = true, cacheType:uint = 1, key:String = null, data:Object = null)
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
			useBytes.position = 0;
			this.text = useBytes.toString();

			this.complete();
		}
	}
}