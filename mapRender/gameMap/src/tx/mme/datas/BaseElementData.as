package tx.mme.datas
{

	public class BaseElementData
	{
		public var x:Number;
		public var y:Number;
		
		public function BaseElementData()
		{
		}
		
		public function decode(xml:XML):void
		{
			x = Number(xml.@x);
			y = Number(xml.@y);
		}
		
		public function clone():BaseElementData
		{
			var ed:BaseElementData = new BaseElementData();
			ed.x = x;
			ed.y = y;
			return ed;
		}
	}
}