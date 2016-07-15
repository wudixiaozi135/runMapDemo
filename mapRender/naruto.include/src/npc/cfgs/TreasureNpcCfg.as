package npc.cfgs
{
	/**
	 * @author woodychen
	 * @createTime 2015-5-6 下午9:32:59
	 **/
	public class TreasureNpcCfg extends BaseNpcCfg
	{
		public var treasureId:int;
		public var treasureIndex:int;
		
		public function TreasureNpcCfg()
		{
			super();
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			treasureId = xml.@treasureId;
			treasureIndex = xml.@treasureIndex;
		}
	}
}