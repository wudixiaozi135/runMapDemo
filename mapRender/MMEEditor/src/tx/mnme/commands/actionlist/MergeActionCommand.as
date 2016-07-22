package tx.mnme.commands.actionlist
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActionList;
	
	use namespace cmd_internal;
	public class MergeActionCommand extends BaseActionCommand
	{
		protected var name:String;
		protected var sourceNames:Array;
		
		public function MergeActionCommand(action:ActionList,name:String,sourceNames:Array)
		{
			this.name = name;
			this.sourceNames = sourceNames;
			
			super(action);
		}
		
		override cmd_internal function execDo():void
		{
			action.doMergeAction(name,sourceNames);
		}
		
		override cmd_internal function execUndo():void
		{
			action.undoMergeAction(name);
		}
	}
}