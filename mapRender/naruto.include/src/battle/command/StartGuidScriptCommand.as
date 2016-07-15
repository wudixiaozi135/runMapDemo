package battle.command
{
	public class StartGuidScriptCommand extends BattleCommand
	{
		public var delay:int;
		public var scriptId:int;
		
		public function StartGuidScriptCommand(scriptId:int, delay:int)
		{
			super();
			
			this.delay = delay;
			this.scriptId = scriptId;
		}
	}
}