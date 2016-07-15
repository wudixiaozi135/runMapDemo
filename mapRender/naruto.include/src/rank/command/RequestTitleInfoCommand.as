package rank.command 
{
	import rank.model.TitleModel;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 查询称号信息
	 * @author larryhou
	 * @createTime 2014/10/16 16:56
	 */
	public class RequestTitleInfoCommand extends RSModelCommand
	{		
		public var model:TitleModel;
		
		/**
		 * 构造函数
		 * create a [RequestTitleInfoCommand] object
		 */
		public function RequestTitleInfoCommand() 
		{
			
		}
		
	}

}