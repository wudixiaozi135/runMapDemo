package ninja.command 
{
	import ninja.model.data.NinjaInfo;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 拉取忍者仓库列表
	 * @author larryhou
	 * @createTime 2013/9/24 10:06
	 */
	public class RequestNinjaStorageCommand extends RSModelCommand
	{
		/**
		 * 忍者仓库类型 @see serverProto.inc.NinjaSourceType
		 */
		public var id:uint;
		
		/**
		 * 仓库忍者列表
		 */
		public var ninjas:Vector.<NinjaInfo>;
		
		/**
		 * 构造函数
		 * create a [RequestNinjaStorageCommand] object
		 */
		public function RequestNinjaStorageCommand(id:uint) 
		{
			this.id = id;
		}
	}

}