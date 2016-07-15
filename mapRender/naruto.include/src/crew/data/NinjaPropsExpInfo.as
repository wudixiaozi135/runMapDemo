package crew.data 
{
	/**
	 * 忍具经验配置
	 * @author larryhou
	 * @createTime 2014/4/16 21:49
	 */
	public class NinjaPropsExpInfo 
	{
		/**
		 * 忍具品质
		 */
		public var quality:uint;
		
		/**
		 * 忍具等级
		 */
		public var level:uint;
		
		/**
		 * 经验
		 */
		public var exp:uint;
		
		/**
		 * 同品质上一等级忍具经验
		 */
		public var prev:NinjaPropsExpInfo;
		
		/**
		 * 同品质下一等级忍具经验
		 */
		public var next:NinjaPropsExpInfo;
	}
}