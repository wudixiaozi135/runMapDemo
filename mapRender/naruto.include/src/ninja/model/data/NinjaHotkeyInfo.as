package ninja.model.data 
{
	/**
	 * 忍者快捷键
	 * @author larryhou
	 * @createTime 2013/9/26 16:37
	 */
	public class NinjaHotkeyInfo 
	{
		/**
		 * Q快捷键对应的忍者sequence
		 */
		public var ninjaQ:int;
		
		/**
		 * W快捷键对应的忍者sequence
		 */
		public var ninjaW:int;
		
		/**
		 * E快捷键对应的忍者sequence
		 */
		public var ninjaE:int;
		
		/**
		 * R快捷键对应的忍者sequence
		 */
		public var ninjaR:int;
		
		/**
		 * T快捷键对应的忍者sequence
		 */
		public var ninjaT:int;
		
		/**
		 * 获取热键列表
		 */
		public function get list():Vector.<int> { return new <int>[ninjaQ, ninjaW, ninjaE, ninjaR, ninjaT]; }
	}

}