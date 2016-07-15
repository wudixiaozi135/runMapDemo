package user.def
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaClassDef
	{	
		public static const MU_YE:int = 0;
		public static const SHA_REN:int = 1;
		public static const YIN_REN:int = 2;
		public static const WU_REN:int = 3;
		public static const KUI_LEI:int = 4;
		public static const WEI_SHOU:int = 5;
		public static const PAN_REN:int = 6;
		public static const DONG_WU:int = 7;
		
		public function NinjaClassDef()
		{
		}
		
		public static function getNinjaClassName(index:int):String
		{
			switch (index)
			{
				case 0:
					return I18n.lang("as_include_1451031572_3709"); 
					break;
				case 1:
					return I18n.lang("as_include_1451031572_3710"); 
					break;
				case 2:
					return I18n.lang("as_include_1451031572_3711"); 
					break;
				case 3:
					return I18n.lang("as_include_1451031572_3712"); 
					break;
				case 4:
					return I18n.lang("as_include_1451031572_3713"); 
					break;
				case 5:
					return I18n.lang("as_include_1451031572_3714"); 
					break;
				case 6:
					return I18n.lang("as_include_1451031572_3715"); 
					break;
				case 7:
					return I18n.lang("as_include_1451031572_3716"); 
					break;
			}
			return "";
		}
	}
}