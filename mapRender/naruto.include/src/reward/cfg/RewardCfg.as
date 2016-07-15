package reward.cfg
{
	public class RewardCfg
	{
		public var id:int;
		public var items:Vector.<RewardItemCfg>;
		public var randomItems:Vector.<RewardItemCfg>;
		/** 随机方式：1重复 2不重复 **/
		public var randomType:int;
		/** 随机数量 **/
		public var randomNum:int;
//		public var desc:String;
		
		public function RewardCfg()
		{
			items = new Vector.<RewardItemCfg>;
			randomItems = new Vector.<RewardItemCfg>;
		}
	}
}