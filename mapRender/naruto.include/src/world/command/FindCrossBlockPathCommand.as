package world.command
{
	import npc.cfgs.BaseNpcCfg;
	
	import world.commands.BaseWorldCommand;
	
	/**
	 * @author woodychen
	 * @createTime 2014-5-25 下午8:36:58
	 **/
	public class FindCrossBlockPathCommand extends BaseWorldCommand
	{
		public var portalCfgList:Vector.<BaseNpcCfg>
		public var ropeCfgList:Vector.<BaseNpcCfg>
		public var startBlockId:int;
		public var endBlockId:int;
		public var blockPath:Array;
		
		public function FindCrossBlockPathCommand(portalCfgList:Vector.<BaseNpcCfg>, ropeCfgList:Vector.<BaseNpcCfg>, startBlockId:int, endBlockId:int)
		{
			super();
			this.portalCfgList = portalCfgList;
			this.ropeCfgList = ropeCfgList;
			this.startBlockId = startBlockId;
			this.endBlockId = endBlockId;
		}
	}
}