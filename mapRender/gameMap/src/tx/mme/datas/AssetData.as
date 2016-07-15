package tx.mme.datas
{

	public class AssetData
	{
		public static const ClassAlias:String = "AssetData";
		
		public var className:String;
		public var x:int;
		public var y:int;
		public var assetName:String;
		
		public function AssetData()
		{
			
		}
		
		public function decode(xml:XML):void
		{
			className = xml.@className;
			x = xml.@x;
			y = xml.@y;
//			var xstr:String = xml.@x;
//			var ystr:String = xml.@y;
//			x = parseFloat(xstr);
//			y = parseFloat(ystr);
			assetName = xml.@assetName;
		}
	}
}