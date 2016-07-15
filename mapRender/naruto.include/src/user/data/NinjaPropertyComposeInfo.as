package user.data
{
	public class NinjaPropertyComposeInfo
	{
		public var original:int; //初始的属性,已经算上心情的影响
		public var equipEffect:int; //装备加成
		public var jadeEffect:int; //勾玉加成
		public var total:int;  //加上加成后的值
		
		public function NinjaPropertyComposeInfo()
		{
		}
		
		public function toString():String
		{
			return original + " + " + (equipEffect + jadeEffect); 
		}
	}
}