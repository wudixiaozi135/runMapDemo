package cardPackage.data {
    /**
	 * 商店 道具的数据
	 * @author:Georgehu
	 */
    public class ShopItemData {
		/**
		 * id
		 */
		public var goodsIdx:int;
		/**
		 * 物品名称
		 */
		public var goodsName:String;
		/**
		 * 元宝价格
		 */
		public var goodsNormalPrice:uint;
		/**
		 * 会员价
		 */
		public var goodsVipPrice:uint;
		/**
		 * 点券价格
		 */
		public var goodsCashPrice:uint;
		/**
		 * 资源URL
		 */
		public var url:String;
		/**
		 * 当前购买的数量
		 */
		public var m_currentNum:uint = 0;
		public var goodsType:uint;
		/**
		 * 是否优先点券购买 1优先 0不优先
		 */
		public var isUseCash:uint = 1;
		public var goodsItemId:uint;
		public var selected:Boolean = false;
		
		
		public var begin_time:uint = 7;  //限购开始时间
		public var end_time:uint = 8;    //限购结束时间
		public var day_buy_num:uint = 9; //每日可购买数量
		public var limit_level:uint = 10; //需要等级
		public var day_recharge_amount:uint = 11; //充值额度
		public var max_buy_num:uint = 12;//每日最大可购买数量
		public var remain_time:uint = 13;//剩余时间
		
        public function ShopItemData() {
        }
    }
}
