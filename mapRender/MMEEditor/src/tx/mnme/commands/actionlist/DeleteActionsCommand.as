package tx.mnme.commands.actionlist
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActionList;
	
	use namespace cmd_internal;
	
	public class DeleteActionsCommand extends BaseActionCommand
	{
		protected var actionDatas:Array;
		protected var selectedIndex:int;
		
		public function DeleteActionsCommand(action:ActionList,actionDatas:Array,selectedIndex:int)
		{
			this.actionDatas = actionDatas;
			this.selectedIndex = selectedIndex;
			super(action);
		}
		
		override cmd_internal function execDo():void
		{
			action.doDeleteActions(actionDatas);
		}
		
		override cmd_internal function execUndo():void
		{
			action.undoDeleteActions(actionDatas,selectedIndex);
		}
		
		override public function destroy():void
		{
			action = null;
			actionDatas = null;
		}
	}
}