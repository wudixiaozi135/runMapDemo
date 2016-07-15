package ninja.model.data
{
	/**
	 * @author woodychen
	 * @createTime 2014-7-2 下午3:15:59
	 **/
	public class NinjaAwakenItemInfo
	{
		/**
		 * 所需物品id
		 */
		public var itemId:uint;
		
		/**
		 * 所需物品数量
		 */
		public var needNum:uint;
		
		/**
		 * 现有物品数量
		 */
		public var hasNum:uint;
		
		public function NinjaAwakenItemInfo(itemId:uint = 0, needNum:uint = 0, hasNum:uint = 0)
		{
			this.itemId = itemId;
			this.needNum = needNum;
			this.hasNum = hasNum;
		}
	}
}