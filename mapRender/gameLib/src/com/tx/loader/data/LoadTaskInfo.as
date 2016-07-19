package com.tx.loader.data
{
	import flash.utils.Dictionary;

	/**
	 * 加载任务信息
	 * @author    Leowu
	 * @version    2016/7/19
	 */
	public class LoadTaskInfo
	{
		private var _referCount:uint;	//资源引用计数

		public function LoadTaskInfo()
		{
			callbacks = new Dictionary(false);
		}

		/** 资源加载地址 */
		public var url:String;
		/** 回调函数队列 */
		public var callbacks:Dictionary;
		/** 是否加载完成 */
		public var complete:Boolean;

		/**
		 * 获取资源引用计数
		 * @return
		 *
		 */
		public function get referCount():uint
		{
			return _referCount;
		}

		/**
		 * 添加一个引用
		 * @return 资源引用计数
		 *
		 */
		public function retain():uint
		{
			++_referCount;
			return _referCount;
		}

		/**
		 * 释放一个引用
		 * @return 资源引用计数
		 *
		 */
		public function release():uint
		{
			if (_referCount > 0)
			{
				_referCount--;
			}

			return _referCount;
		}
	}
}