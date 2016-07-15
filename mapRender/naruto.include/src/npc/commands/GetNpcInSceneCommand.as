package npc.commands
{
	import npc.cfgs.BaseNpcCfg;
	
	/**
	 * 拿到所有确实在场景上创建的 NPC 。
	 * @author yboyjiang
	 */	
	public class GetNpcInSceneCommand extends BaseNpcCommand
	{
		public var npcList:Vector.<BaseNpcCfg>;
		
		public function GetNpcInSceneCommand()
		{
			super();
		}
	}
}