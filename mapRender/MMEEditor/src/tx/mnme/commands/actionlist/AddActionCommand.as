package tx.mnme.commands.actionlist
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActionList;
	
	use namespace cmd_internal;
	
	public class AddActionCommand extends BaseActionCommand
	{
		protected var name:String;
		
		public function AddActionCommand(action:ActionList,name:String)
		{
			this.name = name;
			
			super(action);
		}
		
		override cmd_internal function execDo():void
		{
			action.doAddAction(name);
		}
		
		override cmd_internal function execUndo():void
		{
			action.undoAddAction(name);
		}
	}
}