package majorRole.commands
{
	public class OpenTalentSkillPanelCommand extends BaseMajorRoleCommand
	{
		public var type:int;
		
		/**
		 * @param type
		 * @see majorRole.def.TalentSkillTypeDef
		 */
		public function OpenTalentSkillPanelCommand(type:int)
		{
			super();
			
			this.type = type;
		}
	}
}