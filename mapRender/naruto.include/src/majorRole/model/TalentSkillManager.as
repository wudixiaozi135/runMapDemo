package majorRole.model
{
	import flash.utils.Dictionary;

	public class TalentSkillManager
	{
		private static var _instance:TalentSkillManager;
		public static function get instance():TalentSkillManager
		{
			return _instance ||= new TalentSkillManager();
		}
		
		private var dict:Dictionary = new Dictionary();
		public function TalentSkillManager()
		{
		}
		
		/**
		 * 获得还天赋技能数据
		 * @param type
		 * @return 
		 * @see majorRole.def.TalentSkillTypeDef
		 */
		public function getTalentSkillModel(type:int):TalentSkillModel
		{
			var tsm:TalentSkillModel = dict[type];
			if(tsm == null)
			{
				dict[type] = tsm = new TalentSkillModel(type);
			}
			return tsm;
		}
	}
}