package majorRole.def
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class MajorNinjaDef
	{
		private static var majorNinjaList:Array = [10000101, 10000201, 10000301, 10000401, 10000501];
		
		/**
		 * 是否主角（战袍id）
		 */
		public static function isMajorNinjaId(id:int):Boolean
		{
			var al:int = id%100;
			if(al>10)
			{
				return false;
			}
			var baseId:int = toBaseMajorId(id);
			return majorNinjaList.indexOf(baseId) != -1;
		}
		
		/**
		 * 是否没有穿战袍的主角id
		 */
		public static function isBaseMajorNinjaId(id:int):Boolean
		{
			return majorNinjaList.indexOf(id)!=-1;
		}
		
		/**
		 * 将穿了战袍的id转成没穿战袍的id
		 */
		public static function toBaseMajorId(id:int):int
		{
			return int(id/100)*100 + 1;
		}
		
		/**
		 * 返回忍者对应的职业下标
		 */
		public static function getMajorNinjaIndex(id:int):int
		{
			if(isMajorNinjaId(id))
			{
				var baseId:int = toBaseMajorId(id);
				return majorNinjaList.indexOf(baseId);
			}
			return -1;
		}
		
		/**
		 * 返回职业对应的忍者id
		 */
		public static function getMajorNinjaIdByDef(def:int):int
		{
			if(def>=1 && def<= majorNinjaList.length)
			{
				return majorNinjaList[def-1];
			}else
			{
				return -1;
			}
		}
		
		/**
		 * 返回主角忍者id对应的职业名称
		 */
		public static function getMajorNinjaName(id:int):String
		{
			if(isMajorNinjaId(id))
			{
				var baseId:int = toBaseMajorId(id);
				switch(baseId)
				{
					case 10000101:
						return I18n.lang("as_include_1451031572_3272");
					case 10000201:
						return I18n.lang("as_include_1451031572_3273");
					case 10000301:
						return I18n.lang("as_include_1451031572_3274");
					case 10000401:
						return I18n.lang("as_include_1451031572_3275");
					case 10000501:
						return I18n.lang("as_include_1451031572_3276");
				}
			}
			return "";
		}
	}
}