package npc.commands
{
	public class FindPortalToSceneCommand extends BaseNpcCommand
	{
		public var sceneId:int;
		public var portalId:int;
		
		public function FindPortalToSceneCommand(sceneId:int)
		{
			super();
			this.sceneId = sceneId;
		}
	}
}