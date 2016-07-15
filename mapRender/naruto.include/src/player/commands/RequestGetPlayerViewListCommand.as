package player.commands
{
	public class RequestGetPlayerViewListCommand extends BasePlayerCommand
	{
		/**
		 * 是否在切换场的时候请求的，，因为切换场的时候，，需要忽略玩家的移动包，，以及多次请求的非切换场的getPlayerViewList
		 */
		public var isChangeScene:Boolean;
		public function RequestGetPlayerViewListCommand(isChangeScene:Boolean=false)
		{
			super();
			this.isChangeScene = isChangeScene;
		}
	}
}