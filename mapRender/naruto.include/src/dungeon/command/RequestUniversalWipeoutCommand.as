package dungeon.command 
{
	import RSModel.command.RSModelCommand;
	
	/**
	 * 扫荡操作命令
	 * @author larryhou
	 * @createTime 2014/6/24 16:05
	 */
	public class RequestUniversalWipeoutCommand extends RSModelCommand
	{
		/**
		 * 扫荡类型
		 * @see dungeon.def.UniversalWipeoutTypeDef
		 */
		public var type:uint;
		
		/**
		 * 命令参数
		 */
		public var extra:Object;
		
		/**
		 * 构造函数
		 * create a [RequestUniversalWipeoutCommand] object
		 */
		public function RequestUniversalWipeoutCommand(type:uint, extra:Object = null)
		{
			this.type = type; this.extra = extra;
		}
	}

}