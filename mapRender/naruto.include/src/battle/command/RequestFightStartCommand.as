package battle.command
{
	import base.NarutoCommand;

	public class RequestFightStartCommand extends NarutoCommand
	{
		
		public function RequestFightStartCommand(commandLoadingType:int = 2)
		{
			super(commandLoadingType);
		}
	}
}