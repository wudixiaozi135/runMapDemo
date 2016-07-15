package player.commands
{
	import player.datas.PlayerData;

	/**
	 * 获取所有带路 NPC 的数据。
	 * @author yboyjiang
	 */	
	public class GetAllLeaderPlayerDataCommand extends BasePlayerCommand
	{
		public var playerDataList:Vector.<PlayerData>;
		
		public function GetAllLeaderPlayerDataCommand()
		{
			super();
		}
	}
}