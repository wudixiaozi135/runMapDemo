package tx.loader.data 
{	import tx.loader.def.LoadStatusDef;
	import tx.loader.loaders.IFileLoader;

	public class LoadTaskAssetInfo 
	{
		// public members
		//*************************************************
		/**
		 * 资源优先级
		 */		
		public var sortLevel:int = 0;
		/**
		 * 资源链接
		 */
		public var url:String;
		
		/**
		 * 镜像路径
		 */
		public var mirror:String;
		
		/**
		 * 资源加载器
		 */
		public var loader:IFileLoader;
		
		/**
		 * 回调函数
		 */
		public var callbacks:Vector.<Function>;
		
		/**
		 * 加载状态
		 */
		public var status:String;
		
		// private members
		//*************************************************
		private var _referCount:uint;
		
		/**
		 * 构造函数
		 */
		public function LoadTaskAssetInfo()
		{
			status = LoadStatusDef.WAIT;
			callbacks = new Vector.<Function>();
		}
		
		/**
		 * 添加一个引用
		 */
		public function retain():uint
		{
			++_referCount;
			
			trace("[retain]", url + ", " + _referCount);
			return _referCount;
		}
		
		/**
		 * 释放一个引用
		 */
		public function release():uint
		{
			if (_referCount > 0)
			{
				_referCount--;
				trace("[release]", url + ", " + _referCount);
			}
			
			return _referCount;
		}
		
		/**
		 * 垃圾回收
		 */
		public function dispose():void
		{
			release();
			if (!_referCount)
			{
				loader.dispose();
				callbacks = null;
				loader = null;
				
				trace("[gc]", url);
				status = LoadStatusDef.DISPOSED;
			}
		}
		
		/**
		 * 格式化数据输出
		 */
		public function toString():String
		{
			return "url:" + url + ", status:" + status + ", callback:" + (callbacks? callbacks.length : 0) + ", referCount:" + _referCount;
		}
		
		/**
		 * 资源当前引用数量
		 */
		public function get referCount():uint { return _referCount; }
	}

}