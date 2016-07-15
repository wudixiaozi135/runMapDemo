package throughTheBeast.utils
{
    import base.ApplicationData;
    
    import cfgData.dataStruct.SkillCFG;
    import cfgData.dataStruct.SummonMonsterCFG;
    
    import skill.config.SkillConfig;
    
    import throughTheBeast.data.BeastCommonData;
    import throughTheBeast.data.BeastData;

    public class BeastUtils
    {
        public static function getBeastConfById(beastId:uint):BeastData
        {
            var cfg:SummonMonsterCFG = BeastCommonData.beastCfgDatas[beastId];
            var data:BeastData = new BeastData();
            data.id = beastId;
            data.name = cfg.name;
            data.description = cfg.desc;
            data.type = cfg.type;
			data.achievedWay = cfg.achievedWay;
            data.baseProps = Vector.<int>([cfg.baseLife, cfg.baseAttack, cfg.baseDefense, cfg.baseNinjaAttack, cfg.baseResist]);

            return data;
        }

        public static function getSkillCfgById(beastId:uint):SkillCFG
        {
            var profession:int = ApplicationData.singleton.selfInfo.professions;
            var cfg:SummonMonsterCFG = BeastCommonData.beastCfgDatas[beastId];
            var skillId:uint = cfg.majorSkill[profession - 1];
            var skillCfg:SkillCFG = SkillConfig.instance.getSkill(skillId);

            return skillCfg;
        }

        public static function getSkillTypesById(beastId:uint):Array
        {
            var skillCfg:SkillCFG = getSkillCfgById(beastId);

            return skillCfg.type1;
        }

        public function BeastUtils()
        {
            throw new Error(BeastUtils + " can not be instantiated.");
        }
    }
}