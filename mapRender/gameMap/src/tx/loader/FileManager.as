package tx.loader 
{

	import flash.system.ApplicationDomain;
	import flash.utils.getDefinitionByName;

	public class FileManager 
	{
		private static const _manager:Object = getFileAssetMgr();
		private static function getFileAssetMgr():Object
		{
			if (ApplicationDomain.currentDomain.hasDefinition("file.FileAssetManager"))
			{
				return getDefinitionByName("file.FileAssetManager");
			}
			
			return null;
		}
		
		private static function validate(url:String):String
		{
			return url? url.replace(/\\/g, "/") : null;
		}
		
		/**
		 * 获取带有版本号的URL
		 */
		public static function getQualifiedUrl(url:String):String
		{
			if (_manager && _manager["getQualifiedUrl"] is Function)
				return (_manager["getQualifiedUrl"] as Function).call(null, validate(url));
			else
				return url;
		}
		
		
		/**
		 * 获取带有版本号的录像URL
		 */
		public static function getVideoQualifiedUrl(url:String):String
		{
			if (_manager && _manager["getVideoQualifiedUrl"] is Function)
				return (_manager["getVideoQualifiedUrl"] as Function).call(null, validate(url));
			else
				return url;
		}
		
		/**
		 * 获取文件大小
		 * @param	url	不含版本号的URL
		 */
		public static function getFileSize(url:String):uint
		{
			return _manager? (_manager["getFileSize"] as Function).call(null, validate(url)) : 0;
		}
		
		/**
		 * 获得当前文件所属压缩包的路径
		 * @param	url	压缩包路径
		 */
		public static function getArchiveUrl(url:String):String
		{
			return _manager ? (_manager["getArchiveUrl"] as Function).call(null, validate(url)) : null;
		}
	}

}