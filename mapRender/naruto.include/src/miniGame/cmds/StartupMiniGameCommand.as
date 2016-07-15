package miniGame.cmds
{
	public class StartupMiniGameCommand extends BaseMiniGameCommand
	{
		public var id:int;
		public var finishFun:Function;
		public var data:Object;
		public var ext:int;
		
		/**
		 * 启动小游戏
		 * @param id 		小游戏id，一般为活动id
		 * @param finishFun	小游戏结束时会调用（成功或者失败）
		 * @param data		传给小游戏的数据
		 * @param ext		扩展类型值，目前只有拼图里用到，同一个小游戏，对应3种难度
		 */
		public function StartupMiniGameCommand(id:int, finishFun:Function, data:Object=null, ext:int=0)
		{
			super();
			
			this.id = id;
			this.finishFun = finishFun;
			this.data = data;
			this.ext = ext;
		}
	}
}