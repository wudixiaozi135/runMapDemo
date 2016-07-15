package dungeon.data 
{
	import cfgData.dataStruct.DungeonGroupInfoCFG;

	/**
	 * 副本章节信息
	 * @author larryhou
	 * @createTime 2014/3/21 17:54
	 */
	public class DungeonChapterInfo 
	{
		/**
		 * 章节id
		 */
		public var id:uint;
		
		/**
		 * 副本名称
		 */
		public var name:String;
		
		/**
		 * 副本列表信息
		 */
		public var dungeons:Vector.<DungeonInfo>;
		
		/**
		 * 是否满足开启条件
		 */
		public var qualified:Boolean;
		
		/**
		 * 当前副本章节包含副本总数
		 */
		public var dungeonCount:uint;
		
		/**
		 * 分组信息
		 */
		public var cfg:DungeonGroupInfoCFG;
		
		// 扩展字段
		//*************************************************
		/**
		 * 章节是否被选中
		 */
		public var selected:Boolean;
		
		/**
		 * 滚动位置
		 */
		public var position:Number;
	}

}