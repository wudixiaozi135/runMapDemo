package tx.mnme.commands.actionlist
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActionList;
	
	use namespace cmd_internal;
	public class ModifyActionCommand extends BaseActionCommand
	{
		protected var oldName:String;
		protected var newName:String;
		
		public function ModifyActionCommand(action:ActionList,oldName:String,newName:String)
		{
			this.oldName = oldName;
			this.newName = newName;
			
			super(action);
		}
		
		override cmd_internal function execDo():void
		{
			action.doModifyActionName(oldName,newName);
		}
		
		override cmd_internal function execUndo():void
		{
			action.undoModifyActionName(oldName,newName);
		}
	}
}