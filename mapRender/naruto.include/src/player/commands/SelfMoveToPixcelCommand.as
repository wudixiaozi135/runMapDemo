package player.commands
{
	import flash.geom.Point;
	
	import user.def.UserStateDef;

	public class SelfMoveToPixcelCommand extends BasePlayerCommand
	{
		public var pixcel:Point;
		public var shorten:int;
		public var shortenType:int;
		
		public function SelfMoveToPixcelCommand(pixcel:Point, shorten:int=0, shortenType:int = 0)
		{
			super();
			
			this.pixcel = pixcel;
			this.shorten = shorten;
			this.shortenType = shortenType;
			
			addEnableStateInfo(UserStateDef.ACTION_CAN_WALK,true);
		}
	}
}