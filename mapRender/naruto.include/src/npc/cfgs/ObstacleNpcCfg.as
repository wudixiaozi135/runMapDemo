package npc.cfgs
{
	

	public class ObstacleNpcCfg extends BaseNpcCfg
	{
		public var radius:int;
		public var vanished:Boolean = false;
		public var appearPortalId:int;
		public var interactable:Boolean;
		
		public function ObstacleNpcCfg()
		{
			super();
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			
			radius = xml.@radius;
			appearPortalId = xml.@appearPortalId;
			interactable = (String(xml.@interactable) != "2");
		}
	}
}