package tx.mnme.commands
{
	use namespace cmd_internal;
	public class BaseCommand
	{
		
		public function BaseCommand()
		{
			
		}
		
		
		public function doCommand():void
		{
			CommandManager.getInstance().doCommand(this);
		}
		
		cmd_internal function execDo():void
		{
			
		}
		
		cmd_internal function execUndo():void
		{
			
		}
		
		public function destroy():void
		{
			
		}
		
	}
	
}