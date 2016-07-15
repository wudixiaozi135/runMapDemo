package reward.cmd
{
	import reward.cfg.RewardCfg;
	import RSModel.command.RSModelCommand;

	public class GetRewardCfgCommand extends RSModelCommand
	{
		public var id:int;
		public var cfg:RewardCfg;
		
		public function GetRewardCfgCommand(id:int)
		{
			super();
			this.id = id;
		}
	}
}