package tx.mme.datas
{

	public class ActionData
	{
		public static const ClassAlias:String = "ActionData";
		public var id:int;
		public var name:String;
		
		public var layerDatas:Vector.<LayerData>;
		
		public function ActionData()
		{
		}
		
		public function decode(xml:XML):void
		{
			id = xml.@id;
			name = xml.@name;
			layerDatas = new Vector.<LayerData>;
			for each(var layerXML:XML in xml.layer)
			{
				var layer:LayerData = new LayerData();
				layer.decode(layerXML);
				
				layerDatas.push(layer);
			}
		}
	}
}