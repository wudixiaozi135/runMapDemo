package skill.command
{
	import RSModel.command.RSModelCommand;
	public class GetSkillCfgByNinjaIdSkillCommand extends RSModelCommand
	{
		/**
		 * 多个SkillCfg
		 */
		public var list:Array;
		public var ninjaId:int;
		
		public function GetSkillCfgByNinjaIdSkillCommand(ninjaId:uint)
		{
			super();
			this.ninjaId = ninjaId;
		}
	}
}