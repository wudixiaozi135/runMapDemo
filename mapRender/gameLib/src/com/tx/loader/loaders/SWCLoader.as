package com.tx.loader.loaders
{
	import flash.system.ApplicationDomain;

	import nochump.util.zip.ZipFile;

	/**
	 * SWC文件加载
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class SWCLoader extends SWFLoader
	{
		/**
		 * 构造函数
		 * create a [SWCLoader] object
		 * @param domain
		 *
		 */
		public function SWCLoader(domain:ApplicationDomain = null)
		{
			super(domain);
		}

		/**
		 * 加载SWF文件
		 *
		 */
		override protected function loadSWF():void
		{
			var zip:ZipFile = new ZipFile(this.data);

			this.data = zip.getInput(zip.getEntry("library.swf"));

			super.loadSWF();
		}
	}

}