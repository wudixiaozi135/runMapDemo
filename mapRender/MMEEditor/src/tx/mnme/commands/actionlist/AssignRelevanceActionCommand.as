package tx.mnme.commands.actionlist
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActionList;

	use namespace cmd_internal;
	public class AssignRelevanceActionCommand extends BaseActionCommand
	{
		protected var actionName:String;
		protected var oldRelevanceNames:Vector.<String>;
		protected var newRelevanceNames:Vector.<String>;
		
		public function AssignRelevanceActionCommand(action:ActionList,actionName:String,oldRelevanceNames:Vector.<String>,newRelevanceNames:Vector.<String>)
		{
			this.actionName = actionName;
			this.oldRelevanceNames = oldRelevanceNames && oldRelevanceNames.concat();
			this.newRelevanceNames = newRelevanceNames;
			
			super(action);
		}
		
		override cmd_internal function execDo():void
		{
			action.doAssignRelevanceAction(actionName,newRelevanceNames);
		}
		
		override cmd_internal function execUndo():void
		{
			action.undoAssignRelevanceAction(actionName,oldRelevanceNames);
		}
		
		override public function destroy():void
		{
			actionName = null;
			oldRelevanceNames = null;
			newRelevanceNames = null;
		}
	}
}