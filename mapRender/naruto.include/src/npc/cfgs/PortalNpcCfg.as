package npc.cfgs
{
	

	public class PortalNpcCfg extends BaseNpcCfg
	{
		public var portalType:int;
		public var portalRange:int;
		public var requireLevel:int;
		public var toSceneType:int;
		public var toSceneId:int;
		public var targerX:int;
		public var targerY:int;
		public var delayShow:Boolean;
		public var doneTaskShow:String;
		
		public function PortalNpcCfg()
		{
			super();
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			
			portalType = xml.@triggerType;
			portalRange = xml.@triggerRange;
			requireLevel = xml.@triggerLevel;
			toSceneType = xml.@toSceneType;
			toSceneId = xml.@toSceneId;
			targerX = xml.@targetX;
			targerY = xml.@targetY;
			delayShow = String(xml.@delayShow)=="1";
			doneTaskShow = xml.@doneTaskShow;
		}
	}
}