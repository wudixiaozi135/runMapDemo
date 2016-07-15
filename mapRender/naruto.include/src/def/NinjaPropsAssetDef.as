package def 
{
	/**
	 * 忍具URL工具类
	 * @author larryhou
	 * @createTime 2014/4/18 16:54
	 */
	public class NinjaPropsAssetDef 
	{
		
		/**
		 * 获取忍具URL
		 * @param	id	忍具ID
		 */
		public static function getNinjaPropsUrl(id:uint):String
		{
			return "assets/bag/item/" + id + ".png";
		}
	}

}