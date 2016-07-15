package npc.commands
{
	import flash.geom.Point;

	public class GetNpcPositionCommand extends BaseNpcCommand
	{
		public var npcId:int;
		public var useListId:Boolean;
		public var position:Point;
		
		public function GetNpcPositionCommand(npcId:int,useListId:Boolean=false)
		{
			super();
			
			this.npcId = npcId;
			this.useListId = useListId;
		}
	}
}