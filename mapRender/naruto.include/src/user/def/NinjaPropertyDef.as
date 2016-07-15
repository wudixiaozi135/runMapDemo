package user.def
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaPropertyDef
	{
		public static const HUO:int = 1;
		public static const FENG:int = 2;
		public static const LEI:int = 3;
		public static const TU:int = 4;
		public static const SHUI:int = 5;
		
		public function NinjaPropertyDef()
		{
		}
		
		public static function getNinjaPropertyName(index:int):String
		{
			switch (index)
			{
				case 1:
					return I18n.lang("as_include_1451031572_3717"); 
					break;
				case 2:
					return I18n.lang("as_include_1451031572_3718"); 
					break;
				case 3:
					return I18n.lang("as_include_1451031572_3719"); 
					break;
				case 4:
					return I18n.lang("as_include_1451031572_3720"); 
					break;
				case 5:
					return I18n.lang("as_include_1451031572_3721"); 
					break;
			}
			return "";
		}
	}
}