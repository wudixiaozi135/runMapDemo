package guild
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class GuildUtils
	{
		public function GuildUtils()
		{
		}
		
		static public function getGuildIdentityName(identity:int):String
		{
			switch (identity)
			{
				case 0:
					return I18n.lang("as_include_1451031571_3221");
				case 1:
					return I18n.lang("as_include_1451031571_3222");
				case 2:
					return I18n.lang("as_include_1451031571_3223");
				case 3:
					return I18n.lang("as_include_1451031571_3224");
				case 4:
					return I18n.lang("as_include_1451031571_3225");
			}
			return "";
		}
	}
}