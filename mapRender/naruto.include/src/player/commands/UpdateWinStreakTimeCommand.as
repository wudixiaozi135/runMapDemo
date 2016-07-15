package player.commands
{
	public class UpdateWinStreakTimeCommand extends BasePlayerCommand
	{
		public var winStreakTime:int;
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		public function UpdateWinStreakTimeCommand(winStreakTime:int, uin:uint, roleId:uint, svrId:uint)
		{
			super();
			
			this.winStreakTime = winStreakTime;
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
		}
	}
}