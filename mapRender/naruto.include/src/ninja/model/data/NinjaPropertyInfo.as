package ninja.model.data 
{
	/**
	 * 忍者属性加成
	 * @author larryhou
	 * @createTime 2013/9/24 19:58
	 */
	public class NinjaPropertyInfo 
	{
		/**
		 * 初始的属性,已经算上心情的影响
		 */
		public var original:int;
		
		/**
		 * 除VIP以外其他系统加成
		 */
		public var otherBuff:int;
		
		
		/**
		 * 升级到100级时的成长值
		 */
		public var growth:uint;
		
		/**
		 * VIP勋章加成
		 */
		public var vipBuff:uint;
		
		/**
		 * 初始的属性（已经算上心情的影响）+ 除VIP以外其他系统加成 + VIP勋章加成
		 */
		public function get value():int { return original + otherBuff + vipBuff; }
		
		public function clone():NinjaPropertyInfo
		{
			var result:NinjaPropertyInfo;
			
			result = new NinjaPropertyInfo();
			result.original = this.original;
			result.otherBuff = this.otherBuff;
			result.growth = this.growth;
			result.vipBuff = this.vipBuff;
			
			return result;
		}
	}

}