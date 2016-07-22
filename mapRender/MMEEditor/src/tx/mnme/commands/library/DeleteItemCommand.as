package tx.mnme.commands.library
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Library;
	
	import flash.filesystem.File;
	
	use namespace cmd_internal;
	
	public class DeleteItemCommand extends BaseLibraryCommand
	{
		private var dids:Vector.<DeleteItemData>;
		private var recycleDir:File;
		
		public function DeleteItemCommand(library:Library,dids:Vector.<DeleteItemData>,recycleDir:File)
		{
			trace("DeleteItemCommand..recycleDir:",recycleDir.nativePath)
			this.dids = dids;
			this.recycleDir = recycleDir;
			super(library);
		}
		
		override cmd_internal function execDo():void
		{
			library.doDeleteItem(dids,recycleDir);
		}
		
		override cmd_internal function execUndo():void
		{
			library.undoDeleteItem(dids,recycleDir);
		}
		
		override public function destroy():void
		{
			if(recycleDir)
			{
				recycleDir.deleteDirectoryAsync();
				recycleDir = null;
			}
			dids = null;
		}
	}
}