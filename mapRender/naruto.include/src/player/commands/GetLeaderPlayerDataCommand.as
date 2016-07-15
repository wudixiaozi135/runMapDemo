package player.commands
{
	import player.datas.PlayerData;

	/**
	 * 获取带路NPC的数据
	 */
	public class GetLeaderPlayerDataCommand extends BasePlayerCommand
	{
		public var playerData:PlayerData;
		public function GetLeaderPlayerDataCommand()
		{
			super();
		}
	}
}