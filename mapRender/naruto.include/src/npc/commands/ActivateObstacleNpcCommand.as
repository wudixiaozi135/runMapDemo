package npc.commands
{
	public class ActivateObstacleNpcCommand extends BaseNpcCommand
	{
		public var npcId:int;
		
		public function ActivateObstacleNpcCommand(npcId:int)
		{
			super();
			
			this.npcId = npcId;
		}
	}
}