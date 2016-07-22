package tx.mnme.commands.library
{
	import tx.mnme.commands.CommandManager;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Library;
	
	use namespace cmd_internal;
	public class SwapItemCommand extends BaseLibraryCommand
	{
		public var data:SwapItemData;
		
		public function SwapItemCommand(library:Library,data:SwapItemData)
		{
			this.data = data;
			super(library);
		}
		
		override public function doCommand():void
		{
			CommandManager.getInstance().addCommand(this);
		}
		
		override cmd_internal function execDo():void
		{
			library.doSwapItem(data.sourceItems,data.targetItems);
		}
		
		override cmd_internal function execUndo():void
		{
			library.undoSwapItem(data.sourceItems,data.targetItems);
		}
		
		override public function destroy():void
		{
			data = null;
		}
	}
}