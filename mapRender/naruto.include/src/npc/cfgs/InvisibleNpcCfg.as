package npc.cfgs
{
	
	
	public class InvisibleNpcCfg extends BaseNpcCfg
	{
		public var vanished:Boolean = false;
		public var appearPortalId:int;
		public var interactable:Boolean;
		
		public function InvisibleNpcCfg()
		{
			super();
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			
			appearPortalId = xml.@appearPortalId;
			interactable = (String(xml.@interactable) != "2");
		}
	}
}