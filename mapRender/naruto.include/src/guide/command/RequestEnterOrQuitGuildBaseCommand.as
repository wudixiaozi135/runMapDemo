package guide.command
{
	import guild.command.BaseGuildCommand;

	/**
	 * 请求进入或者退出组织基地
	 */
	public class RequestEnterOrQuitGuildBaseCommand extends BaseGuildCommand
	{
		public var type:int;
		public var gotoNpcId:int;
		public var useListId:Boolean;
		public var gotoSceneId:int;
		
		public function RequestEnterOrQuitGuildBaseCommand(type:int, gotoNpcId:int = -1, useListId:Boolean = false, gotoSceneId:int=-1)
		{
			super();
			this.type = type;
			this.gotoNpcId = gotoNpcId;
			this.useListId = useListId;
			this.gotoSceneId = gotoSceneId;
		}
	}
}