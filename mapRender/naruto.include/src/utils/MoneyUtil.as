package utils
{
	import com.tencent.morefun.naruto.util.StrReplacer;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class MoneyUtil
	{
		private static const UNICODE_MONEY_EDGE:int = 100000;
		private static const UNICODE_MONEY_DIVISOR:int = 10000;
		private static const UNICODE_MONEY_STR:String = I18n.lang("as_include_1451031572_3787");
		
		public function MoneyUtil()
		{
		}
		
		public static function getMoneyText(value:int):String
		{
			var str:String;
			
			if (value < UNICODE_MONEY_EDGE)
			{
				str = value.toString();
			}
			else
			{
				value = int(value / UNICODE_MONEY_DIVISOR);
				str = StrReplacer.replace(UNICODE_MONEY_STR, value);
			}
			
			return str;
		}
	}
}