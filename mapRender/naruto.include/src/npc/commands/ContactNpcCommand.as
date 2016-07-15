package npc.commands
{
	public class ContactNpcCommand extends BaseNpcCommand
	{
		public var npcId:int;
		public var useListId:Boolean;
		
		public function ContactNpcCommand(npcId:int,useListId:Boolean=false)
		{
			super();
			this.npcId = npcId;
			this.useListId = useListId;
		}
	}
}