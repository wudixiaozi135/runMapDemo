package tx.mnme.commands.actionlist
{
	import tx.mnme.commands.BaseCommand;
	import tx.mnme.views.panels.ActionList;
	
	public class BaseActionCommand extends BaseCommand
	{
		protected var action:ActionList;
		
		public function BaseActionCommand(action:ActionList)
		{
			this.action = action;
		}
		
		override public function destroy():void
		{
			action = null;
		}
	}
}