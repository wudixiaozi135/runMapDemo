package tx.mnme.commands.library
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Library;
	
	use namespace cmd_internal;
	
	public class AddFolderCommand extends BaseLibraryCommand
	{
		private var name:String;
		private var parentName:String;
		
		public function AddFolderCommand(library:Library,name:String,parentName:String)
		{
			super(library);
			
			this.name = name;
			this.parentName = parentName;
		}
		
		override cmd_internal function execDo():void
		{
			library.doAddFolder(name,parentName);
		}
		
		override cmd_internal function execUndo():void
		{
			library.undoAddFolder(name,parentName);
		}
	}
}