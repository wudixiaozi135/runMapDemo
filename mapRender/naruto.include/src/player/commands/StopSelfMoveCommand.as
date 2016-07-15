package player.commands
{
	public class StopSelfMoveCommand extends BasePlayerCommand
	{
		public var stopCrossScene:Boolean; //一般情况下，停止玩家移动也会同时停止跨场景移动；所以这个默认值为true；
										   //但是有一种特殊情况，就是请求传送门进行传送时，我只想停止玩家在当前场景的移动，而不想阻止他跨场景的移动；
		
		public var stopCrossBlock:Boolean; //是否停止在同一地图内跨区域的移动
		
		public var needSendStop:Boolean;
		
		public function StopSelfMoveCommand(stopCrossScene:Boolean = true, stopCrossBlock:Boolean = true, needSendStop:Boolean = false)
		{
			super();
			this.stopCrossScene = stopCrossScene;
			this.stopCrossBlock = stopCrossBlock;
			this.needSendStop = needSendStop;
		}
	}
}