package tx.mme.datas
{

	public class PointElementData extends BaseElementData
	{
		public static const ClassAlias:String = "PointElementData";
		
		public var name:String;
		public function PointElementData()
		{
			super();
		}
		
		override public function decode(xml:XML):void
		{
			super.decode(xml);
			name = xml.@name; 
		}
		
		override public function clone():BaseElementData
		{
			var d:PointElementData = new PointElementData();
			d.name = name;
			d.x = x;
			d.y = y;
			return d;
		}
	}
}