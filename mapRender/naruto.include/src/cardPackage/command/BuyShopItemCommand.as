package cardPackage.command {
    import com.tencent.morefun.framework.base.Command;
    
    import cardPackage.data.ShopItemData;
    
    import def.PluginDef;

    /**
	 * 购买道具
	 * @author:Georgehu
	 * @since:2014-01-21
	 */
    public class BuyShopItemCommand extends Command    {
		/**
		 * 物品信息
		 */
		public var data:ShopItemData;
		/**
		 * 错误码
		 */
		public var errorCode:int;
		/**
		 * 购买是否成功
		 */
		public var ret:int; 
		/**
		 * 0或者不传表示普通商品,1表示限购商品
		 */		
		public var flag:int = 0;
        public function BuyShopItemCommand(commandLoadingType:int = 2, autoHideLoading:Boolean = true) {
            super(commandLoadingType, autoHideLoading);
        }
        
        override public function getPluginName():String {
            return PluginDef.RSMODEL;
        }
    }
}
