package dungeon.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class RequestBeginDungeonCommand extends NarutoCommand
	{
		public var dungeonId:int;
		public var dungeonType:int;
		public var difficultyType:int;
		
		/**
		 * 请求进入副本
		 * @param dungeonId			副本id
		 * @param dungeonType		副本类型
		 * @param difficultyType	副本难度 （目前只有特殊副本有难度，其它副本默认0就行）
		 * @see serverProto.dungeon.ProtoDungeonDifficultyType
		 */
		public function RequestBeginDungeonCommand(dungeonId:int,dungeonType:int,difficultyType:int=0)
		{
			super();
			this.dungeonId = dungeonId;
			this.dungeonType = dungeonType;
			this.difficultyType = difficultyType;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.DUNGEON;
		}
	}
}