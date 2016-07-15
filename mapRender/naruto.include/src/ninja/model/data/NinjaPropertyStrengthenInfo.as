package ninja.model.data
{
	/**
	 * @author woodychen
	 * @createTime 2014-9-2 下午4:08:58
	 **/
	public class NinjaPropertyStrengthenInfo
	{
		/**
		 * 当前等级
		 */
		public var level:uint;
		
		/**
		 * 当前能够强化到的最高等级
		 */
		public var maxLevel:uint;
		
		/**
		 * 需要消耗多少个修行符
		 */
		public var needItemNum:uint;
		
		/**
		 * 本级属性加成
		 */
		public var currentBuff:uint;
		
		/**
		 * 下级属性加成
		 */
		public var nextBuff:uint;
		
		/**
		 * 强化所需忍者等级
		 */
		public var needNinjaLevel:uint;
		
		/**
		 * 强化到满级所需要的修行符
		 */
		public var strengthMaxNeedItemNum:uint;
		
		public function NinjaPropertyStrengthenInfo()
		{
		}
	}
}