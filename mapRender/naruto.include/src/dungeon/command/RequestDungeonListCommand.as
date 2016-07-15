package dungeon.command
{
	import flash.utils.Dictionary;
	import RSModel.command.RSModelCommand;
	
	public class RequestDungeonListCommand extends RSModelCommand
	{
		public var type:int;  //ProtoGetDungeonListType中的枚举
		
		/**
		 * 副本列表：Vector.<DungeonInfo>
		 */
		public var dungeons:Dictionary;
		
		public function RequestDungeonListCommand(type:int = 1)
		{
			this.type = type;
		}
	}
}