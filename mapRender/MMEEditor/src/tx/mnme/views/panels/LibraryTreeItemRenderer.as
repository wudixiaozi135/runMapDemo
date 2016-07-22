package tx.mnme.views.panels
{
	import mx.controls.treeClasses.TreeItemRenderer;
	
	public class LibraryTreeItemRenderer extends TreeItemRenderer
	{
		public function LibraryTreeItemRenderer()
		{
			super();
		}
		
		override public function set data(value:Object):void
		{
			super.data = value;
			
			if(data)
			{
				var notExport:Boolean = String(data.@notExport)=="true"||String(data.@notExport)=="1";
				alpha = notExport?0.5:1;
			}
		}
	}
}