package task.defs
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class TaskTypeDef
	{
		public function TaskTypeDef()
		{
		}
		/**1主线任务*/
		public static const MAIN:int = 1;
		/**2支线任务*/
		public static const BRANCH:int = 2;
		/**3活动任务*/
		public static const ACTIVITY:int = 3;
		/**4修行任务*/
		public static const XIUXING:int = 4;
		/**5悬赏任务*/
		public static const LARGESS:int = 5;
		/**6每日活动任务*/
		public static const DAILY:int = 6;
		/**7忍者修行任务*/
		public static const PRACTICE:int = 7;
		/**8竞技场任务*/
		public static const ARENA:int = 8;
		/**9押镖任务*/
		public static const ESCORT:int = 9;
		/**10通缉任务*/
		public static const WANTED:int = 10;
		
		public static function getString(type:int):String
		{
			switch(type)
			{
				case MAIN:
					return I18n.lang("as_include_1451031572_3560");
				case BRANCH:
					return I18n.lang("as_include_1451031572_3561");
				case ACTIVITY:
					return I18n.lang("as_include_1451031572_3562");
				case XIUXING:
					return I18n.lang("as_include_1451031572_3563");
				case LARGESS:
					return I18n.lang("as_include_1451031572_3564");
				case DAILY:
					return I18n.lang("as_include_1451031572_3565");
				case PRACTICE:
					return I18n.lang("as_include_1451031572_3566");
				case ARENA:
					return I18n.lang("as_include_1451031572_3567");
				case ESCORT:
					return I18n.lang("as_include_1451031572_3568");
				case WANTED:
					return I18n.lang("as_include_1451031572_3569");
			}
			return "";
		}
	}
}