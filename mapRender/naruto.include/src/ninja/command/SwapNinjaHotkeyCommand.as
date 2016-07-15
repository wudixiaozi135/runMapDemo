package ninja.command 
{
	import ninja.model.data.NinjaHotkeyInfo;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 设置忍者热键
	 * @author larryhou
	 * @createTime 2013/9/26 16:59
	 */
	public class SwapNinjaHotkeyCommand extends RSModelCommand
	{
		/**
		 * 当前位置
		 */
		public var src:uint;
		
		/**
		 * 目标位置
		 */
		public var dst:uint;
		
		/**
		 * 阵法类型 @see serverProto.inc.NinjaSourceType
		 */
		public var id:uint;
		
		/**
		 * 调整后的热键信息
		 */
		public var hotkey:NinjaHotkeyInfo;
		
		/**
		 * 构造函数
		 * create a [SwapNinjaHotkeyCommand] object
		 */
		public function SwapNinjaHotkeyCommand(src:uint, dst:uint, id:uint) 
		{
			this.src = src; this.dst = dst; this.id = id;
		}
	}

}