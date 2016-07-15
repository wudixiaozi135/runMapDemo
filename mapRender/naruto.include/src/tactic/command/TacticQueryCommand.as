package tactic.command 
{
	import RSModel.command.RSModelCommand;
	import tactic.model.data.TacticInfo;
	import tactic.model.TacticUniqueModel;
	
	/**
	 * ...
	 * @author larryhou
	 * @createTime 2015/4/21 17:59
	 */
	public class TacticQueryCommand extends RSModelCommand
	{
		/**
		 * 战法来源类型
		 * @see serverProto.inc.NinjaSourceType
		 */
		public var type:uint;
		
		/**
		 * 数据模型
		 */
		public var model:TacticUniqueModel;
		
		/**
		 * 构造函数
		 * create a [TacticQueryCommand] object
		 */
		public function TacticQueryCommand(type:uint) 
		{
			this.type = type;
		}
	}
}