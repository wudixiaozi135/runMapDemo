package reward.cmd
{
	import reward.cfg.RewardConfig;
	import RSModel.command.RSModelCommand;

	public class GetRewardConfigCommand extends RSModelCommand
	{
		public var config:RewardConfig;
		
		public function GetRewardConfigCommand()
		{
			super();
		}
	}
}