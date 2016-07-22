package tx.sce.data
{
	import tx.sce.tools.MyZip;
	
	import flash.display.DisplayObject;
	

	public class LibraryData
	{
		public var libXml:XML;
		public var picZip:MyZip;
		public var previewPic:DisplayObject;
		public var isNewLibrary:Boolean;  //指示该素材库的数据是否未和显示层建立联系。
		
		public function LibraryData(xml:XML = null, zip:MyZip = null)
		{
			libXml = (xml == null)? <library id="-1" idCount="0" />:xml;
			picZip = (zip == null)? new MyZip():zip;
			previewPic = null;
			isNewLibrary = true;
		}
		
	}
}