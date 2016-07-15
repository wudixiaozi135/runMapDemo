package crew.data 
{
	/**
	 * 忍具信息
	 * @author larryhou
	 * @createTime 2014/4/16 11:48
	 */
	public dynamic class NinjaPropsInfo extends NinjaPropsPropertyInfo
	{
		/**
		 * 忍具ID
		 */
		public var id:uint;
		
		/**
		 * 忍具索引
		 */
		public var index:uint;
		
		/**
		 * 忍具等级
		 */
		public var level:uint;
		
		/**
		 * 最大等级
		 */
		public var maxLevel:uint;
		
		/**
		 * 装备使用限制等级
		 */
		public var equipLevel:uint;
		
		/**
		 * 忍具经验
		 */
		public var exp:uint;
		
		/**
		 * 附加属性加成信息
		 */
		public var extraBuff:NinjaPropsPropertyInfo;
		
		/**
		 * 忍具强化加成信息
		 */
		public var upgradeBuff:NinjaPropsPropertyInfo;
		
		/**
		 * 强化信息列表
		 */
		public var levelUpInfo:NinjaPropsUpgradeInfo;
		
		// extension
		//*************************************************
		/**
		 * 是否已经装备到身上
		 */
		public var using:Boolean;
		
		/**
		 * 是否准备吞噬
		 */
		public var swallowing:Boolean;
		
		/**
		 * 是否被选中标记位
		 */
		public var selected:Boolean;
		
		/**
		 * 忍具配置信息
		 */
		public var cfg:NinjaPropsCfgInfo;
	}
}