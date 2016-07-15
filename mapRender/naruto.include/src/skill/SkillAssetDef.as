package skill
{
	import cfgData.dataStruct.SkillCFG;
	
	import skill.config.SkillConfig;

	public class SkillAssetDef
	{
		public static const SKILL_ICON:String = "skillIcon";
		
		
		public static function getAsset(type:String,id:uint):String
		{
			var skillCfg:SkillCFG = SkillConfig.instance.getSkill(id);
			if (!skillCfg) return null;
			
//			Assert(skillCfg!=null,"技能id:"+id+" 在技能表里未找到");
//			Assert(skillCfg.resId!=0,"技能id:"+id+" 的美术编号为0");
			switch(type)
			{
				case SKILL_ICON:
					return "assets/skill/40/"+skillCfg.iconId+".png";
				default:
					throw new ArgumentError("type is illegal.");
			}
			return null;
		}
	}
}