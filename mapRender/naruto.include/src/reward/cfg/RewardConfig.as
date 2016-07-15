package reward.cfg
{
	import flash.utils.Dictionary;
	
	import cfgData.dataStruct.RewardItemTransferCFG;
	import cfgData.dataStruct.RewardTransferCFG;

	public class RewardConfig
	{
		private var dict:Dictionary;
		
		public function RewardConfig()
		{
			dict = new Dictionary();
		}
		
		public function setData(rewardTransferCfgs:Dictionary, rewardItemTransferCfgs:Object):void
		{
			var rewardItems:Object = {};
			
			for each(var rewardItemTransferCfg:RewardItemTransferCFG in rewardItemTransferCfgs)
			{
				var rewardItemCfg:RewardItemCfg = new RewardItemCfg();
				rewardItemCfg.itemId = rewardItemTransferCfg.itemId;
				rewardItemCfg.name = rewardItemTransferCfg.name;
				rewardItemCfg.num = rewardItemTransferCfg.num;
				rewardItemCfg.sure = rewardItemTransferCfg.sure;
				
				var id:int = rewardItemTransferCfg.rewardId;
				
				var arr:Array = rewardItems[id] as Array;
				if(!arr)
				{
					rewardItems[id] = arr = [];
				}
				
				arr.push(rewardItemCfg);
			}
			
			
			for each(var rewardTransferCfg:RewardTransferCFG in rewardTransferCfgs)
			{
				var rewardCfg:RewardCfg = new RewardCfg();
				rewardCfg.id = rewardTransferCfg.id;
				rewardCfg.randomType = rewardTransferCfg.randomType;
				rewardCfg.randomNum = rewardTransferCfg.randomNum;
				
				for each(rewardItemCfg in rewardItems[rewardCfg.id])
				{
					if(rewardItemCfg.sure)
					{
						rewardCfg.items.push(rewardItemCfg);
					}else
					{
						rewardCfg.randomItems.push(rewardItemCfg);
					}
				}
				
				dict[rewardCfg.id] = rewardCfg;
			}
		}
		
		public function getRewardCfg(id:int):RewardCfg
		{
			return dict[id] as RewardCfg;
		}
	}
}