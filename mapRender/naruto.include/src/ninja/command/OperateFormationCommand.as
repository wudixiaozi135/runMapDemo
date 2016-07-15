package ninja.command 
{
	
	import ninja.model.data.FormationInfo;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 阵法操作命令
	 * @author larryhou
	 * @createTime 2013/9/25 16:15
	 */
	public class OperateFormationCommand extends RSModelCommand
	{
		/**
		 * 0:装上&替换
		 * 1:卸下
		 */
		public var cmd:uint;
		
		/**
		 * 阵法类型
		 * @see serverProto.inc.NinjaSourceType
		 */
		public var id:uint;
		
		/**
		 * 忍者唯一标记
		 */
		public var sequence:uint;
		
		/**
		 * 目标阵法中的位置
		 */
		public var location:uint;
		
		/**
		 * 服务器回包阵法信息
		 */
		public var formation:FormationInfo;
		
		/**
		 * 构造函数
		 * create a [OperateFormationCommand] object
		 */
		public function OperateFormationCommand(cmd:uint, sequence:uint, location:uint, id:uint) 
		{
			this.cmd = cmd; this.sequence = sequence; this.location = location; this.id = id;
		}
	}
}