package task.defs
{
	public class TaskConditionTypeDef
	{
//		/** 杀怪 */
//		public static const KILL_MONSTER:int = 1;
		/** 通关副本 */
		public static const CLEAR_DUNGEON:int = 2;
//		/** 获得物品 */
//		public static const GET_GOODS:	int = 3;
//		
		private static var needShowCountTypes:Array// = [1,3,8,9,10,11,12,13,14,16,17,18,19,21,];
		/**
		 * 根据任务条件类型判断是否显示计数
		 */
		public static function needShowCount(type:int):Boolean
		{
			return needShowCountTypes.indexOf(type)!=-1;
		}
		
		public static function setNeedShowCountTypes(xml:XML):void
		{
			needShowCountTypes = [];
			for each(var cfgXML:XML in xml.cfg)
			{
				var type:int = cfgXML.@type;
				var needCount:Boolean = String(cfgXML.@needCount)=="1";
				if(needCount)
				{
					needShowCountTypes.push(type);
				}
			}
		}
	}
}