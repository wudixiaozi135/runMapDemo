package tx.loader.loaders 
{
	import flash.events.IEventDispatcher;
	import flash.utils.ByteArray;
	
	/**
	 * 加载进度事件
	 */
	[Event(name = "progress", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 加载进程被中断时派发
	 */
	[Event(name = "abort", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 加载完成
	 */
	[Event(name = "complete", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 加载进程结束时派发
	 */
	[Event(name = "finish", type = "tx.loader.events.LoadEvent")]
	
	/**
	 * 文件加载器接口
	 * @author larryhou
	 * create a [IFileLoader] interface
	 */
	public interface IFileLoader extends IEventDispatcher
	{
		/**
		 * 开始加载文件
		 */
		function load(url:String):void;
		
		/**
		 * 通过二进制数据加载文件
		 * @param	data	二进制数据
		 * @param	url		二进制数据对应url链接
		 */
		function loadBytes(data:ByteArray, url:String):void;
		
		/**
		 * 中断加载进程
		 */
		function abort():void;
		
		/**
		 * 垃圾回收
		 */
		function dispose():void;
		
		/**
		 * 资源链接
		 */
		function get url():String;
	}
}