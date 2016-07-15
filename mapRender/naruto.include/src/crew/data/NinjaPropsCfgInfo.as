package crew.data 
{
	import bag.data.ItemData;

	/**
	 * 忍具配置信息
	 * @author larryhou
	 * @createTime 2014/4/16 21:39
	 */
	public class NinjaPropsCfgInfo extends ItemData
	{
		/**
		 * 忍具品质
		 */
		public var quality:uint;
		
		/**
		 * 忍具等级上限
		 */
		public var levelUpper:uint;
		
		/**
		 * 吞噬可获得经验
		 */
		public var swallowExp:uint;
		
		/**
		 * 吞噬消耗金币
		 */
		public var swallowCost:uint;
		
		/**
		 * 重铸成功率加成
		 */
		public var recastBuff:uint;
	}
}