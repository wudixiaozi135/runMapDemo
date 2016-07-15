package crew.cmd 
{
	import crew.data.NinjaPropsInfo;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 获取忍具tips数据命令
	 * @author larryhou
	 * @createTime 2014/6/20 16:02
	 */
	public class RequestNinjaPropsTipsInfoCommand extends RSModelCommand
	{
		/**
		 * 忍具ID
		 */
		public var id:uint;
		
		/**
		 * 忍具信息
		 */
		public var data:NinjaPropsInfo;
		
		/**
		 * 构造函数
		 * create a [RequestNinjaPropsTipsInfoCommand] object
		 */
		public function RequestNinjaPropsTipsInfoCommand(id:uint) 
		{
			this.id = id;
		}
	}

}