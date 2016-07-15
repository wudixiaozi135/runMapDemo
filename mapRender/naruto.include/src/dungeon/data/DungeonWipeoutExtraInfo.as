package dungeon.data 
{
	/**
	 * 副本扫荡额外信息
	 * @author larryhou
	 * @createTime 2014/6/25 15:33
	 */
	public class DungeonWipeoutExtraInfo 
	{
		// settings
		//*************************************************
		/**
		 * 每次扫荡需要消耗体力值
		 */
		public static const WIPE_OUT_DELTA_HP:uint = 10;
		
		// params
		//*************************************************
		/**
		 * 副本id
		 * @require
		 */
		public var id:uint;
		
		/**
		 * 副本名字
		 */
		public var name:String;
		
		/**
		 * 扫荡次数
		 */
		public var count:uint;
		
		/**
		 * 每次扫荡体力消耗
		 */
		public var deltaHp:uint;
		
		/**
		 * 每次扫荡需要时间
		 */
		public var deltaTime:uint;
	}
}