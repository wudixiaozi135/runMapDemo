package skill.config
{
	import flash.utils.Dictionary;
	
	import cfgData.dataStruct.SkillCFG;

	public class SkillConfig
	{
		private static var _instance:SkillConfig;
		public static function get instance():SkillConfig
		{
			return _instance ||= new SkillConfig();
		}
		
		
		private var dict:Dictionary;
		public function SkillConfig()
		{
			
		}
	
		public function setData(data:Dictionary):void
		{
			dict = data;
		}
		
		public function getSkill(id:uint):SkillCFG
		{
			return dict[id];
		}
	}
}