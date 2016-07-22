package tx.mnme.commands.actionlist
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActionList;
	
	import flash.filesystem.File;
	
	use namespace cmd_internal;
	public class ImportActionCommand extends BaseActionCommand
	{
		protected var file:File;
		
		public function ImportActionCommand(action:ActionList,file:File)
		{
			this.file = file;
			super(action);
		}
		
		override cmd_internal function execDo():void
		{
			action.doImportAction(file);
		}
		
		override cmd_internal function execUndo():void
		{
			action.undoImportAction(file);
		}
		
		override public function destroy():void
		{
			file = null;
			super.destroy();
		}
	}
}