package team.cmd
{
	public class ShowTeamSyncCommand extends BaseTeamCommand
	{
		public var uins:Array;
		public var roleIds:Array;
		public var svrIds:Array;
		public var isReadys:Array;
		
		public function ShowTeamSyncCommand(uins:Array,roleIds:Array,svrIds:Array,isReadys:Array)
		{
			super();
			this.uins = uins;
			this.roleIds = roleIds;
			this.svrIds = svrIds;
			this.isReadys = isReadys;
		}
	}
}