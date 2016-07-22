package tx.mnme.commands.library
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Library;
	
	use namespace cmd_internal;
	
	public class SetExportItemCommand extends BaseLibraryCommand
	{
		public var names:Vector.<String>;
		
		public function SetExportItemCommand(library:Library,names:Vector.<String>)
		{
			super(library);
			
			this.names = names;
		}
		
		override cmd_internal function execDo():void
		{
			library.doSetExportItem(names);
		}
		
		override cmd_internal function execUndo():void
		{
			library.doSetNotExportItem(names);
		}
		
		override public function destroy():void
		{
			names = null;
			super.destroy();
		}
	}
}