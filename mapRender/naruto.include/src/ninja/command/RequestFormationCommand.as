package ninja.command 
{
	import ninja.model.data.FormationInfo;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 获取忍者阵法信息
	 * @author larryhou
	 * @createTime 2013/12/27 15:41
	 */
	public class RequestFormationCommand extends RSModelCommand
	{
		/**
		 * 阵法类型 @see serverProto.inc.NinjaSourceType
		 */
		public var id:uint;
		
		/**
		 * 阵法信息
		 */
		public var formation:FormationInfo;
		
		/**
		 * 构造函数
		 * create a [RequestNinjaFormationCommand] object
		 */
		public function RequestFormationCommand(id:uint) 
		{
			this.id = id;
		}
	}
}