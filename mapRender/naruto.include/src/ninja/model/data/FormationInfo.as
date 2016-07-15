package ninja.model.data 
{
	/**
	 * 阵法信息
	 * @author larryhou
	 * @createTime 2013/9/25 16:47
	 */
	public class FormationInfo 
	{		
		/**
		 * 阵法类型 @see serverProto.inc.NinjaSourceType
		 */
		public var id:uint;
		
		/**
		 * 忍者布局信息
		 */
		public var arranges:Vector.<NinjaArrangeInfo>;
		
		/**
		 * 忍者对应热键信息
		 */
		public var hotkey:NinjaHotkeyInfo;
		
		/**
		 * 战斗力
		 */
		public var combat:uint;
		
		/**
		 * 已占用领导力
		 */
		public var leadershipUsed:uint;
		
		/**
		 * 最大领导力
		 */
		public var leadershipMax:uint;
		
		/**
		 * 最大上阵人数
		 */
		public var maxFormationNum:uint;
		public var level:int;
	}

}