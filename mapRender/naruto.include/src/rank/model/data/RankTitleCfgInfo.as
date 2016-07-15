package rank.model.data 
{
	/**
	 * 排行榜称号
	 * @author larryhou
	 * @createTime 2014/10/13 15:00
	 */
	public class RankTitleCfgInfo 
	{
		/**
		 * 称号id
		 */
		public var id:uint;
		
		/**
		 * 称号名称
		 */
		public var name:String;
		
		/**
		 * 称号来源排行榜
		 * @see rank.def.RankTypeDef
		 */
		public var rank:uint;
		
		/**
		 * 称号稀有度
		 */
		public var rarity:uint;
		
		/**
		 * 称号颜色
		 */
		public var color:uint;
		
		/**
		 * 称号获得提示
		 */
		public var obtainTips:String;
		
		/**
		 * 称号限时提示
		 */
		public var expireTips:String;
		
		/**
		 * 是否使用图片称号链接
		 */
		public var image:String;
		
		/**
		 * 是否有图片展示
		 */
		public var hasImage:Boolean;
		
		/**
		 * 是否拥有该称号
		 */
		public var owned:Boolean;
		
		/**
		 * html格式化的名字
		 */
		public function get formattedName():String
		{
			if (name)
			{
				return "<font color='#" + color.toString(16).toUpperCase() + "'>" + name + "</font>";
			}
			
			return "";
		}
		
		// 扩展字段
		//*************************************************
		/**
		 * 选中态
		 */
		public var selected:Boolean;
	}
}