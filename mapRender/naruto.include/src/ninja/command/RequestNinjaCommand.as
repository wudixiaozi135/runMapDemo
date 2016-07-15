package ninja.command 
{
	import ninja.model.data.NinjaInfo;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 获取忍者信息
	 * @author larryhou
	 * @createTime 2013/12/12 21:13
	 */
	public class RequestNinjaCommand extends RSModelCommand
	{
		/**
		 * 忍者唯一标记
		 */
		public var sequence:uint;
		
		/**
		 * 是否向后台请求新数据
		 * @default 缓存
		 */
		public var pull:Boolean;
		
		/**
		 * sequence对应忍者信息
		 */
		public var ninja:NinjaInfo;
		
		/**
		 * 构造函数
		 * create a [RequestNinjaCommand] object
		 */
		public function RequestNinjaCommand(sequence:uint, pull:Boolean = false) 
		{
			this.sequence = sequence; this.pull = pull;
		}
		
	}

}