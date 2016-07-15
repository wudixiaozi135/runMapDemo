package user.data
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class UserConfig
	{
		public function UserConfig()
		{
		}
		
		public static function getProfessionsStr(professions:int):String
		{
			switch(professions)
			{
				case 0:
					return I18n.lang("as_include_1451031572_3685");
					break;
				case 1:
					return I18n.lang("as_include_1451031572_3686");
				break;
				case 2:
					return I18n.lang("as_include_1451031572_3687");
				break;
				case 3:
					return I18n.lang("as_include_1451031572_3688");
				break;
				case 4:
					return I18n.lang("as_include_1451031572_3689");
				break;
				case 5:
					return I18n.lang("as_include_1451031572_3690");
					break;
			}
			
			return "";
		}
		
		public static function getHeadUrl(roleId:uint):String
		{
			return "assets/user/player/head/" + roleId + ".png";
		}
	}
}