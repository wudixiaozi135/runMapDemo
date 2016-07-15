package ninja.command
{
	import ninja.model.data.NinjaInfo;
	import RSModel.command.RSModelCommand;
	import serverProto.inc.NinjaSourceType;
	
	/**
	 * 请求忍者背包数据
	 * @author larryhou
	 * @createTime 2013/12/27 15:37
	 */
	public class RequestNinjaPackageCommand extends RSModelCommand
	{
		/**
		 * 卡包类型
		 * @see serverProto.inc.NinjaSourceType
		 */
		public var id:uint;
		
		/**
		 * 背包忍者列表
		 */
		public var ninjas:Vector.<NinjaInfo>;
		
		/**
		 * 构造函数
		 * create a [RequestNinjaPackageCommand] object
		 */
		public function RequestNinjaPackageCommand(id:uint = NinjaSourceType.NINJA_SOURCE_TYPE_DEFAULT)
		{
			this.id = id;
		}
	}

}