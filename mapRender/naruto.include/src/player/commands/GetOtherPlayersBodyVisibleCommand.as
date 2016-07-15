package player.commands
{
	/**
	 * 获取其他玩家的可见性。
	 * @author yboyjiang
	 */	
	public class GetOtherPlayersBodyVisibleCommand extends BasePlayerCommand
	{
		public var visible:Boolean;
		
		public function GetOtherPlayersBodyVisibleCommand()
		{
			super();
		}
	}
}