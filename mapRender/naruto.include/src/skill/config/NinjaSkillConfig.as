package skill.config
{
	import com.tencent.morefun.naruto.util.Assert;
	
	import flash.utils.Dictionary;
	
	import cfgData.dataStruct.NinjaSkillCFG;
	import cfgData.dataStruct.SkillCFG;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaSkillConfig
	{
		private static var _instance:NinjaSkillConfig;
		public static function get instance():NinjaSkillConfig
		{
			return _instance||=new NinjaSkillConfig();
		}
		
		private var dict:Dictionary;
		
		public function NinjaSkillConfig()
		{
			Assert(_instance==null,"can't new NinjaSkillConfig Class");
		}
		
		

		public function setData(dict:Dictionary):void
		{
			this.dict = dict;
		}
		
		public function getNinjaSkillCfg(ninjaId:uint):NinjaSkillCFG
		{
			return dict[ninjaId];
		}
		
		public function getSkillCfgsByNinjaId(ninjaId:uint):Array
		{
			var ninjaSkillCfg:NinjaSkillCFG = getNinjaSkillCfg(ninjaId);
			if(ninjaSkillCfg == null)
			{
				throw Error(I18n.lang("as_include_1451031572_3467_0") + ninjaId + I18n.lang("as_include_1451031572_3467_1"));
			}
			
			return getSkillCfgsBySkillIDs(ninjaSkillCfg.specials.concat(ninjaSkillCfg.normals, ninjaSkillCfg.skills));
		}
		
		public function getSkillCfgsBySkillIDs(skillsSet:Array):Array 
		{
			var list:Array = [];
			for each(var skillId:uint in skillsSet)
			{
				var skillCfg:SkillCFG = SkillConfig.instance.getSkill(skillId);
				if(skillCfg)
				{
					list.push(skillCfg);
				}
			}
			return list;
		}
	}
}