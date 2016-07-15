package ninja.command 
{
	import ninja.model.data.FormationInfo;
	
	import RSModel.command.RSModelCommand;
	
	/**
	 * 把忍者从阵法、背包放回仓库
	 * @author larryhou
	 * @createTime 2013/9/25 14:36
	 */
	public class TakeBackNinjaCommand extends RSModelCommand
	{
		/**
		 * 忍者唯一标记
		 */
		public var sequence:uint;
		
		/**
		 * 从阵法拖到仓库时有效
		 */
		public var formation:FormationInfo;
		
		/**
		 * 构造函数
		 * create a [TakeBackNinjaCommand] object
		 */
		public function TakeBackNinjaCommand(sequence:uint) 
		{
			this.sequence = sequence;
		}
	}

}