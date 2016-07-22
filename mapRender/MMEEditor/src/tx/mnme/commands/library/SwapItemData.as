package tx.mnme.commands.library
{
	public class SwapItemData
	{
		public var sourceItems:Array = [];
		public var targetItems:Array = [];
		
		public function SwapItemData()
		{
		}
		
		public function addSourceItem(index:int,parentName:String):void
		{
			sourceItems.push({index:index,parentName:parentName});
		}
		
		public function addTargetItem(index:int,parentName:String):void
		{
			targetItems.push({index:index,parentName:parentName});
		}
	}
}