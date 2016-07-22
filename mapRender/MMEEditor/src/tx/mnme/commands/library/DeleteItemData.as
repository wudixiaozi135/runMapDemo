package tx.mnme.commands.library
{
	public class DeleteItemData
	{
		public var item:XML;
		public var parentName:String;
		public var index:int;
		public var fileNames:Array;
		
		public function DeleteItemData()
		{
			fileNames = [];
		}
	}
}