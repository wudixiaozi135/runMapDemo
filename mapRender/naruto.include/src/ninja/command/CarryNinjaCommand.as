package ninja.command 
{
	import ninja.model.data.NinjaInfo;
	
	import RSModel.command.RSModelCommand;
	
	/**
	 * 携带忍者
	 * @author larryhou
	 * @createTime 2013/9/25 14:28
	 */
	public class CarryNinjaCommand extends RSModelCommand
	{
		/**
		 * 忍者唯一标记
		 */
		public var sequence:uint;
		
		/**
		 * 背包忍者列表
		 */
		public var pkgNinjas:Vector.<NinjaInfo>;
		
		/**
		 * 被替换忍者sequence
		 */
		public var replaceNinja:uint;
		
		/**
		 * 构造函数
		 * create a [CarryNinjaCommand] object
		 */
		public function CarryNinjaCommand(sequence:uint, replaceNinja:uint) 
		{
			this.sequence = sequence; this.replaceNinja = replaceNinja;
		}
	}

}