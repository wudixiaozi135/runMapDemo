package prewar.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	import ninja.data.TeamForamtionInfo;
	
	public class PrewarInsertPlayerNoticeCommand extends NarutoCommand
	{
		public var canStandList:Array;
		public var teamFormationInfo:TeamForamtionInfo;
		
		public function PrewarInsertPlayerNoticeCommand(canStandList:Array, teamFormationInfo:TeamForamtionInfo)
		{
			super();
			
			this.canStandList = canStandList;
			this.teamFormationInfo = teamFormationInfo;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.PREWAR;
		}
	}
}