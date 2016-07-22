package tx.mnme.commands.library
{
	import tx.mnme.commands.BaseCommand;
	import tx.mnme.views.panels.Library;
	
	public class BaseLibraryCommand extends BaseCommand
	{
		protected var library:Library;
		
		public function BaseLibraryCommand(library:Library)
		{
			this.library = library;
			super();
		}
		
		override public function destroy():void
		{
			library = null;
		}
	}
}