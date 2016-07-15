package RSModel.command {
    import com.tencent.morefun.framework.base.Command;
    
    import def.PluginDef;
    
    /**
     *物品购买通用确认提示框
     * @author georgehu
     *
     */
    public class PaymentConfirmBoxCommand extends Command {
		public var m_cash:uint;
		public var m_noticeMsg:String;
		/**
		 * 支付方式 0混合 1元宝2点券3铜币 
		 */		
		public var m_payType:int;
		public var m_color:Boolean;
		public var m_postData:*;
        /**
         *
         * @param cash 付费总额
         * @param noticeMsg 提示语 例如 "<b>确定购买<font color='#f0d647'> 二级勾玉x2 </font>,共花费{moeny} ?</b>"
         * @param payType 支付方式 0混合 1元宝2点券
         * @param color 是否需要统一颜色 
         */
        public function PaymentConfirmBoxCommand(cash:uint, noticeMsg:String, payType:int = 0,color:Boolean=true,postData:*=null) {
			m_cash = cash;
			m_noticeMsg = noticeMsg;
			m_payType = payType;
			m_color = color;
			m_postData = postData;
            super();
        }
        
        override public function getPluginName():String {
            return PluginDef.RSMODEL;
        }
    }
}
