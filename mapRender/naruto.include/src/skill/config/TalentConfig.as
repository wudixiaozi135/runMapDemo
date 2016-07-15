package skill.config
{
	public class TalentConfig
	{
		private var list:Array;
		
		public function TalentConfig(xml:XML)
		{
			parse(xml);
		}
		
		private function parse(xml:XML):void
		{
			list = [];
			for each(var item:XML in xml.talent)
			{
				var talentCfg:TalentCfg = new TalentCfg();
				talentCfg.parse(item);
				list.push(talentCfg);
			}
		}
		
		public function getNinjaSkillCfg(id:uint):TalentCfg
		{
			for each(var talentCfg:TalentCfg in list)
			{
				if(talentCfg.id == id)
				{
					return talentCfg;
				}
			}
			return null;
		}
	}
}