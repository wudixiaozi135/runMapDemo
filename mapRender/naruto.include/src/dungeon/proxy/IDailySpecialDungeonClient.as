package dungeon.proxy 
{
	import dungeon.data.DungeonInfo;
	
	/**
	 * 特殊副本按钮交互接口
	 * @author larryhou
	 * create a [IDailySpecialDungeonClient] interface
	 */
	public interface IDailySpecialDungeonClient 
	{
		/**
		 * 更新副本CD时间
		 * @param	list	副本列表
		 */
		function updateSpecialDungeons(list:Vector.<DungeonInfo>):void;
		
		/**
		 * 特殊副本入口闪烁动画
		 * @param	enabled	是否播放动画
		 */
		function enableIconFlash(enabled:Boolean):void 
	}
	
}