package tx.mnme.commands.library
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Library;
	
	import flash.filesystem.File;
	
	use namespace cmd_internal;
	
	public class ImportFilesCommand extends BaseLibraryCommand
	{
		private var files:Vector.<File>;
		private var items:XML;
		private var parentName:String
		
		public function ImportFilesCommand(library:Library,files:Vector.<File>,items:XML,parentName:String)
		{
			this.files = files;
			this.items = items;
			this.parentName = parentName;
			
			super(library);
		}
		
		override cmd_internal function execDo():void
		{
			library.doImportFiles(files,items,parentName);
		}
		
		override cmd_internal function execUndo():void
		{
			library.undoImportFiles(files,items,parentName);
		}
		
		override public function destroy():void
		{
			files = null;
			items = null;
			parentName = null;
		}
	}
}