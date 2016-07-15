package reward.cfg
{
	public class RewardItemCfg
	{
		/** 物品id **/
		public var itemId:int;
		/** 物品名称 **/
		public var name:String;
		
//		/** 随机权重 **/
//		public var weight:int;
		/** 是否必掉（非随机） **/
		public var sure:Boolean;
		/** 物品数量 **/
		public var num:int;
		
		
		public function RewardItemCfg()
		{
		}
	}
}