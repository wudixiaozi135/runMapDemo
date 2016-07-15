package player.commands
{
	/**
	 * 设置其他玩家是否可见(本队伍玩家不影响)。
	 * @author yboyjiang
	 */	
	public class SetOtherPlayersBodyVisibleCommand extends BasePlayerCommand
	{
		public var visible:Boolean;
		
		public function SetOtherPlayersBodyVisibleCommand(visible:Boolean)
		{
			super();
			this.visible = visible;
		}
	}
}