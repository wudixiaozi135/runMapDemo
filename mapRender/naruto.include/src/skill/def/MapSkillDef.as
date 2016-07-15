package skill.def
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class MapSkillDef
	{	
		public static const USE_ROPE:int = 1;  //攀岩
		public static const BREAK_OBSTACLE:int = 2;  //碎石
		public static const SEE_INVISIBLE:int = 3;  //破解幻术
		public static const BREAK_SEAL:int = 4;  //接触封印
		
		public function MapSkillDef()
		{
		}
		
		/**
		 * 根据技能类型获取技能名称
		 */
		public static function getMapSkillName(type:uint):String
		{
			switch(type)
			{
				case USE_ROPE:return I18n.lang("as_include_1451031572_3496");
				case BREAK_OBSTACLE:return I18n.lang("as_include_1451031572_3497");
				case SEE_INVISIBLE:return I18n.lang("as_include_1451031572_3498");
				case BREAK_SEAL:return I18n.lang("as_include_1451031572_3499");
			}
			
			return I18n.lang("as_include_1451031572_3500");
		}
	}
}