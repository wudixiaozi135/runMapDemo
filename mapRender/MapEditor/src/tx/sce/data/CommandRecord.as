package tx.sce.data
{
	public class CommandRecord
	{
		public var doneCmd:Array;
		public var undoCmd:Array;
		
		public function CommandRecord()
		{
			doneCmd = new Array();
			undoCmd = new Array();
		}
	}
}