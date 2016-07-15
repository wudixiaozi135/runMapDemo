package cardPackage.common {
	import base.ApplicationData;

	/**
	 *支付货币 提示语言 通用类（提示元宝 点券间的支付比例） 
	 * @author georgehu
	 * 
	 */    
    import com.tencent.morefun.naruto.i18n.I18n;
    public class PaymentNoticeWord {
        public function PaymentNoticeWord() {
        }
		/**
		 *支付提示语言 
		 * @param cash:uint 支付金额
		 * @param payType:uint 支付类型（0 混合支付 1 元宝  2 点券）
		 * @param color:Boolean  true(包含颜色) false(不包含字体颜色)
		 * @return String 格式化后的问题
		 * 
		 */		
		public static function message(cash:uint,payType:uint = 0 ,color:Boolean=true,isToTrim:Boolean = false):String{
			var noticeMoney:String = "";
			switch(payType){
				case 0 :{
					if(ApplicationData.singleton.selfInfo.dianquan>= (cash) ){
						noticeMoney = (cash)+I18n.lang("as_include_1451031571_2542");
					}
					else if(ApplicationData.singleton.selfInfo.dianquan<=0){
						noticeMoney = (cash)+I18n.lang("as_include_1451031571_2543");
					}
					else{
						noticeMoney = ApplicationData.singleton.selfInfo.dianquan+I18n.lang("as_include_1451031571_2544_0")+(cash-ApplicationData.singleton.selfInfo.dianquan)+I18n.lang("as_include_1451031571_2544_1");
					}
					break;
				}
				case 1:{
					noticeMoney = (cash)+I18n.lang("as_include_1451031571_2545");
					break;
				}
				case 2:{
					noticeMoney = (cash)+I18n.lang("as_include_1451031571_2546");
					break;
				}
				case 3: {
					noticeMoney = (cash)+I18n.lang("as_include_1451031571_2547");
					break;
				}
				default :{
					break;
				}	
			}
			if(!isToTrim)noticeMoney = " "+noticeMoney+" ";
			if(color){
				noticeMoney = "<font color='#f0d647'>"+noticeMoney+"</font>";
			}
			return noticeMoney;
		}
    }
}
