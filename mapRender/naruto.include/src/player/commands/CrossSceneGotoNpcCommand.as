package player.commands
{
	import user.def.UserStateDef;

	public class CrossSceneGotoNpcCommand extends BasePlayerCommand
	{
		public var sceneId:int;
		public var npcId:int;
		public var shorten:int;
		public var autoClick:Boolean;
		public var useListId:Boolean;
		
		public function CrossSceneGotoNpcCommand(sceneId:int, npcId:int, shorten:int = 100, autoClick:Boolean = true, useListId:Boolean = false)
		{
			super();
			this.sceneId = sceneId;
			this.npcId = npcId;
			this.autoClick = autoClick;
			this.useListId = useListId;
			this.shorten = shorten;
			
			this.addEnableStateInfo(UserStateDef.ACTION_CAN_WALK, true);
		}
		
		
	}
}