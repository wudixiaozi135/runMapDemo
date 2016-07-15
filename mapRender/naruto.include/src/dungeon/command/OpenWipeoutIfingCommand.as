package dungeon.command 
{
	import RSModel.command.RSModelCommand;
	
	/**
	 * 打开扫荡面板如果正在扫荡
	 * @author larryhou
	 * @createTime 2014/7/2 14:32
	 */
	public class OpenWipeoutIfingCommand extends RSModelCommand
	{
		/**
		 * 扫荡类型
		 */
		public var type:uint;
		
		/**
		 * 携带数据
		 */
		public var data:Object;
		
		/**
		 * 构造函数
		 * create a [OpenWipeoutIfingCommand] object
		 */
		public function OpenWipeoutIfingCommand(type:uint, data:Object = null) 
		{
			this.type = type; this.data = data;
		}
	}

}