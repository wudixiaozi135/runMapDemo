package majorRole.commands
{
	import majorRole.model.TalentSkillModel;

	public class RequestRefreshTalentSkillCommand extends BaseMajorRoleCommand
	{
		public var type:int;
		public var force:Boolean;
		
		public var talentSkillModel:TalentSkillModel;
		/**
		 * @param type
		 * @see majorRole.model.TalentSkillModel
		 */
		public function RequestRefreshTalentSkillCommand(type:int, force:Boolean=false)
		{
			super();
			
			this.type = type;
			this.force = force;
		}
	}
}