package rank.command 
{
	import rank.model.data.RankTitleCfgInfo;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 设置称号
	 * @author larryhou
	 * @createTime 2014/10/16 16:55
	 */
	public class SetTitleCommand extends RSModelCommand
	{
		/**
		 * 称号id
		 */
		public var id:uint;
		
		/**
		 * 称号配置
		 */
		public var title:RankTitleCfgInfo;
		
		/**
		 * 构造函数
		 * create a [SetTitleCommand] object
		 */
		public function SetTitleCommand(id:uint) 
		{
			this.id = id;
		}
	}

}