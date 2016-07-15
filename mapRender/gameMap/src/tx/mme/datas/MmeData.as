package tx.mme.datas
{	import flash.utils.Dictionary;

	public class MmeData
	{
		public static const ClassAlias:String = "MmeData";
		public var actionDatas:Vector.<ActionData>;
		public var frameRate:int = 24;
		private var xml:XML;
		public var assetDatas:Dictionary;
		public var advanced:Boolean;
		
		public function MmeData()
		{
		}
		
		public function decode(xml:XML):void
		{
			this.xml = xml;
			actionDatas = new Vector.<ActionData>;
			frameRate = xml.@frameRate;
			advanced = String(xml.@advanced) == "true";
			
			for each(var actionXML:XML in xml.action)
			{
				var action:ActionData = new ActionData();
				action.decode(actionXML);
				
				actionDatas.push(action);
			}
			
			assetDatas = new Dictionary();
			for each(var assetXML:XML in xml.asset)
			{
				var assetData:AssetData = new AssetData();
				assetData.decode(assetXML);
				
				assetDatas[assetData.className] = assetData;
			}
		}
	}
}
