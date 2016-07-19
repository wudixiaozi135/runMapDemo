package com.tx.loader
{
	import flash.system.ApplicationDomain;
	import flash.utils.getDefinitionByName;

	/**
	 * 文件管理器
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class FileManager
	{
		private static const _manager:Object = getFileAssetMgr();	//单例

		/**
		 * 构造函数
		 *
		 */
		public function FileManager()
		{

		}

		/**
		 * 获取文件管理器
		 * @return FileManager
		 *
		 */
		private static function getFileAssetMgr():Object
		{
			if (ApplicationDomain.currentDomain.hasDefinition("file.FileAssetManager"))
			{
				return getDefinitionByName("file.FileAssetManager");
			}

			return null;
		}

		/**
		 * 对资源地址进行正则表达式处理
		 * @param url    资源地址
		 * @return        处理过后的资源地址
		 *
		 */
		private static function validate(url:String):String
		{
			return url ? url.replace(/\\/g, "/") : null;
		}

		/**
		 * 获取带有版本号的URL
		 * @param url    资源地址
		 * @return        带版本号的资源地址
		 *
		 */
		public static function getQualifiedUrl(url:String):String
		{
			if (_manager && _manager["getQualifiedUrl"] is Function)
			{
				return (_manager["getQualifiedUrl"] as Function).call(null, validate(url));
			}
			else
			{
				return url;
			}
		}

		/**
		 * 获取带有版本号的录像URL
		 * @param url    资源地址
		 * @return        带版本号的资源地址
		 *
		 */
		public static function getVideoQualifiedUrl(url:String):String
		{
			if (_manager && _manager["getVideoQualifiedUrl"] is Function)
			{
				return (_manager["getVideoQualifiedUrl"] as Function).call(null, validate(url));
			}
			else
			{
				return url;
			}
		}

		/**
		 * 获取文件大小
		 * @param url    不含版本号的URL
		 * @return        文件大小
		 *
		 */
		public static function getFileSize(url:String):uint
		{
			return _manager ? (_manager["getFileSize"] as Function).call(null, validate(url)) : 0;
		}

		/**
		 * 获得当前文件所属压缩包的路径
		 * @param url    压缩包路径
		 * @return        压缩包路径
		 *
		 */
		public static function getArchiveUrl(url:String):String
		{
			return _manager ? (_manager["getArchiveUrl"] as Function).call(null, validate(url)) : null;
		}
	}
}