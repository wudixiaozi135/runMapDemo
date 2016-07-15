package crew.data 
{
	/**
	 * 忍具升级信息
	 * @author larryhou
	 * @createTime 2014/4/21 17:32
	 */
	public class NinjaPropsUpgradeInfo extends NinjaPropsPropertyInfo
	{
		/**
		 * 吞噬添加的经验
		 */
		public var exp:uint;
		
		/**
		 * 吞噬消耗的金币
		 */
		public var cost:uint;
		
		/**
		 * 是否达到顶级
		 */
		public var ultimate:Boolean;
		
		/**
		 * 不同等级需要经验
		 */
		public var levelUpExps:Vector.<uint>;
	}

}