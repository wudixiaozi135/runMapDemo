package ninja.command 
{
	import ninja.model.data.NinjaInfo;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 获取拥有忍者
	 * @author larryhou
	 * @createTime 2013/10/14 10:19
	 */
	public class RequestNinjaByIdCommand extends RSModelCommand
	{
		/**
		 * 忍者id
		 */
		public var id:uint;
		
		/**
		 * 是否向后台同步新数据
		 * @default 缓存
		 */
		public var pull:Boolean;
		
		/**
		 * id对应拥有忍者
		 */
		public var ninja:NinjaInfo;
		
		/**
		 * 构造函数
		 * create a [RequestNinjaInfoCommand] object
		 */
		public function RequestNinjaByIdCommand(id:uint, pull:Boolean = false) 
		{
			this.id = id; this.pull = pull;
		}
	}

}