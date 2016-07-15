package crew.cmd 
{
	import RSModel.command.RSModelCommand;
	
	import crew.data.NinjaPropsCfgInfo;
	
	/**
	 * 请求忍具信息
	 * @author larryhou
	 * @createTime 2014/4/21 14:31
	 */
	public class RequestNinjaPropsCfgCommand extends RSModelCommand
	{
		/**
		 * 忍具id列表
		 */
		public var ids:Vector.<uint>;
		
		// response
		//*************************************************
		/**
		 * 忍具列表
		 */
		public var props:Vector.<NinjaPropsCfgInfo>;
		
		/**
		 * 构造函数
		 * create a [RequestNinjaPropsInfoCommand] object
		 */
		public function RequestNinjaPropsCfgCommand(ids:Vector.<uint>)
		{
			this.ids = ids;
		}
	}

}