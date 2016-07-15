package npc.cfgs
{
	import flash.geom.Point;

	public class RopeNpcCfg extends BaseNpcCfg
	{
		public var pointOne:Point;
		public var pointTwo:Point;
		public var interactable:Boolean;
		
		public function RopeNpcCfg()
		{
			super();
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			
			var arr:Array = String(xml.@pointOne).split(",");
			pointOne = new Point(arr[0], arr[1]);
			arr = String(xml.@pointTwo).split(",");
			pointTwo = new Point(arr[0], arr[1]);
			interactable = (String(xml.@interactable) != "2");
		}
	}
}