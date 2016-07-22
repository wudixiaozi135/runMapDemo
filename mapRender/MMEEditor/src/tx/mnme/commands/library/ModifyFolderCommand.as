package tx.mnme.commands.library
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Library;

	use namespace cmd_internal;
	
	public class ModifyFolderCommand extends BaseLibraryCommand
	{
		private var oldName:String;
		private var newName:String;
		public function ModifyFolderCommand(library:Library,newName:String,oldName:String)
		{
			this.oldName = oldName;
			this.newName = newName;
			super(library);
		}
		
		override cmd_internal function execDo():void
		{
			library.doModifyFolder(newName,oldName);
		}
		
		override cmd_internal function execUndo():void
		{
			library.doModifyFolder(oldName,newName);
		}
	}
}