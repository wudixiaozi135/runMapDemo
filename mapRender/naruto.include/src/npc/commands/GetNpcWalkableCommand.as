package npc.commands
{
	public class GetNpcWalkableCommand extends BaseNpcCommand
	{
		public var npcId:int;
		public var walkable:Boolean;
		public var useListId:Boolean;
		
		public function GetNpcWalkableCommand(npcId:int, useListId:Boolean = false)
		{
			super();
			this.npcId = npcId;
			this.useListId = useListId;
		}
	}
}