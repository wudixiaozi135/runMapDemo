package npc.cfgs
{
	public class ActivityNpcCfg extends BaseNpcCfg
	{
		public var href:String;
		public var functionIcon:int;
		
		public function ActivityNpcCfg()
		{
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			
			name = xml.@name;
			href = xml.@execute;
			functionIcon = int(xml.@headIcon);
		}
	}
}