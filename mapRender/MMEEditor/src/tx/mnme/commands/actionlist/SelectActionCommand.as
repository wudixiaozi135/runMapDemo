package tx.mnme.commands.actionlist
{
	import tx.mnme.commands.CommandManager;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActionList;
	
	use namespace cmd_internal;
	public class SelectActionCommand extends BaseActionCommand
	{
		protected var oldIndex:int;
		protected var newIndex:int;
		
		
		public function SelectActionCommand(action:ActionList,oldIndex:int,newIndex:int)
		{
			this.oldIndex = oldIndex;
			this.newIndex = newIndex;
			
			super(action);
		}
		
		override public function doCommand():void
		{
			CommandManager.getInstance().addCommand(this);
		}
		
		override cmd_internal function execDo():void
		{
			action.doSelectAction(newIndex);
		}
		
		override cmd_internal function execUndo():void
		{
			action.doSelectAction(oldIndex);
		}
	}
}