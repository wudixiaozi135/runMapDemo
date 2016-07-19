package com.tx.mme
{
	/**
	 * 资源渲染错误信息类
	 * @author    Leowu
	 * @version 2016/7/18
	 */
	public class MmeAssetError extends Error
	{
		/**
		 * 构造函数
		 * @param message    错误信息
		 * @param id        错误ID
		 *
		 */
		public function MmeAssetError(message:* = "", id:* = 0)
		{
			super(message, id);
		}
	}
}