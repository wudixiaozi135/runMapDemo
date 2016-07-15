package tactic.model.data 
{
	import bag.data.ItemData;
	/**
	 * ...
	 * @author larryhou
	 * @createTime 2015/4/21 19:40
	 */
	public class TacticInfo 
	{
		/**
		 * 战法索引
		 */
		public var index:uint;
		
		/**
		 * 战法名
		 */
		public var name:String;
		
		/**
		 * 战法当前等级
		 */
		public var level:uint;
		
		/**
		 * 战法站位列表
		 */
		public var positions:Vector.<TacticPositionInfo>;
		
		/**
		 * 升级消耗卷轴数量
		 */
		public var levelUpReelCount:uint;
		
		/**
		 * 是否可以升级
		 */
		public var levelUpAvailable:Boolean;
		
		/**
		 * 学习升级材料
		 */
		public var reals:Vector.<ItemData>;
		
		/**
		 * 是否正在使用中
		 */
		public var using:Boolean;
		
		// EXTENTION
		//*************************************************
		public var selected:Boolean;
	}
}