package tx.mnme.commands.library
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Library;
	
	use namespace cmd_internal;
	
	public class SetNotExportItemCommand extends BaseLibraryCommand
	{
		public var names:Vector.<String>;
		
		public function SetNotExportItemCommand(library:Library,names:Vector.<String>)
		{
			super(library);
			
			this.names = names;
		}
		
		override cmd_internal function execDo():void
		{
			library.doSetNotExportItem(names);
		}
		
		override cmd_internal function execUndo():void
		{
			library.doSetExportItem(names);
		}
		
		
		override public function destroy():void
		{
			names = null;
			super.destroy();
		}
	}
}