package vip.model.data 
{
	import bag.data.ItemData;
	import serverProto.inc.ProtoNaurtoAllPropertyInfo;
	
	/**
	 * VIP特权信息
	 * @author larryhou
	 * @createTime 2014/8/25 17:44
	 */
	public class VIPPrivilegeInfo 
	{
		/**
		 * VIP勋章名字
		 */
		public var name:String;
		
		/**
		 * VIP等级
		 */
		public var level:uint;
		
		/**
		 * VIP购买原价
		 */
		public var price:uint;
		
		/**
		 * VIP折扣购买价格
		 */
		public var priceOfDiscount:uint;
		
		/**
		 * VIP当前剩余有效时间:秒
		 */
		public var expireTime:uint;
		
		/**
		 * VIP剩余天数
		 */
		public var remainTime:uint;
		
		/**
		 * VIP持续天数
		 */
		public var numOfDurativeDays:uint;
		
		/**
		 * 悬赏任务一键完成(OCTC=One Click To Complete)
		 */
		public var offerTaskOCTC:Boolean;
		
		/**
		 * 自动八门遁甲
		 */
		public var autoHuntLife:Boolean;
		
		/**
		 * 登录自动签到
		 */
		public var autoSignAfterLogin:Boolean;
		
		/**
		 * 体力上限加成
		 */
		public var strengthUpperBuff:uint;
		
		/**
		 * 体力购买次数增加
		 */
		public var numAdditionOfBuyStrengthTimes:uint;
		
		/**
		 * 副本通关经验加成
		 */
		public var dungeonExpBuffPercent:uint;
		
		/**
		 * 精英副本重置次数增加
		 */
		public var numAdditionOfResetEliteTimes:uint;
		
		/**
		 * 招财次数增加
		 */
		public var numAdditionOfBringinMoneyTimes:uint;
		
		/**
		 * 生存试炼同比加成百分比
		 */
		public var expeditionCopperBuffPercent:uint;
		
		/**
		 * 排位战免费次数增加
		 */
		public var numAdditionOfRankBattleFreeTimes:uint;
		
		/**
		 * 开启神秘宝箱
		 */
		public var openMysteryChest:Boolean = true;
		
		/**
		 * 碎片炼化次数增加
		 */
		public var numAdditionFragmentRefineTimes:uint;
		
		/**
		 * 可补签天数
		 */
		public var numOfSignablePastDays:uint;
		
		/**
		 * 每日点券数量
		 */
		public var numOfDailyCoupon:uint;
		
		/**
		 * 首次激活奖励
		 */
		public var firstActivateRewards:Vector.<ItemData>;
		
		/**
		 * 是否有资格领取首开奖励
		 */
		public var fetchActivateRewardsQualified:Boolean;
		
		/**
		 * 周末礼包
		 */
		public var extraWeekenRewards:Boolean;
		
		/**
		 * 加成
		 */
		public var propertyBuff:ProtoNaurtoAllPropertyInfo;
	}
}