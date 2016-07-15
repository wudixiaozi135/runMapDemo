package player.commands
{
	import user.def.UserStateDef;

	public class SelfMoveToNpcCommand extends BasePlayerCommand
	{
		public var npcId:int;
		public var shorten:int;
		public var autoClick:Boolean;
		public var useListId:Boolean;
		public var waitClickFinish:Boolean; //等到AutoClick的逻辑完成后才分发finish事件
		public var shortenType:int;
		
		public function SelfMoveToNpcCommand(npcId:int, shorten:int=100, useListId:Boolean=false, autoClick:Boolean = true, waitClickFinish:Boolean = false, shortenType:int = 0)
		{
			super();
			
			this.npcId = npcId;
			this.shorten = shorten;
			this.useListId = useListId;
			this.autoClick = autoClick;
			this.waitClickFinish = waitClickFinish;
			this.shortenType = shortenType;
			
			
			addEnableStateInfo(UserStateDef.ACTION_CAN_WALK,true);
		}
	}
}