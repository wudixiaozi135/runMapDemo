package com.tx.loader.data
{
	/**
	 * 多线程加载数据
	 * @author    Leowu
	 * @version    2016/7/19
	 */
	public class PrintRecord
	{
		public function PrintRecord()
		{

		}

		/** 计数器 */
		public var count:uint;

		/** 定时器 */
		public var timer:uint;

		/** 加载器空闲计数器 */
		public var freeCount:uint;
	}
}