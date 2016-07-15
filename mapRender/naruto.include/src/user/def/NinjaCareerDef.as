package user.def
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaCareerDef
	{
		public static const REN:int = 1;
		public static const TI:int = 2;
		public static const HUAN:int = 3;
		public static const FANG:int = 4;
		public static const FU:int = 5;
		public static const YI:int = 6;
		public static const KUI:int = 7;
		
		public function NinjaCareerDef()
		{
		}
		
		public static function getNinjaCareerName(index:int):String
		{
			switch (index)
			{
				case 1:
					return I18n.lang("as_include_1451031572_3702"); 
					break;
				case 2:
					return I18n.lang("as_include_1451031572_3703"); 
					break;
				case 3:
					return I18n.lang("as_include_1451031572_3704"); 
					break;
				case 4:
					return I18n.lang("as_include_1451031572_3705"); 
					break;
				case 5:
					return I18n.lang("as_include_1451031572_3706"); 
					break;
				case 6:
					return I18n.lang("as_include_1451031572_3707"); 
					break;
				case 7:
					return I18n.lang("as_include_1451031572_3708"); 
					break;
			}
			return "";
		}
	}
}