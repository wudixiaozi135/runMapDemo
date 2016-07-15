package npc.cfgs
{
	public class KnowledgeNpcCfg extends BaseNpcCfg
	{
		public function KnowledgeNpcCfg()
		{
			super();
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			
			name = xml.@name;
		}
	}
}