package team.cmd
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class UpdateTeamMemberPosCommand extends NarutoCommand
	{
		public var srcPos:int;
		public var destPos:int;
		
		public function UpdateTeamMemberPosCommand(srcPos:int, destPos:int)
		{
			super();
			
			this.srcPos = srcPos;
			this.destPos = destPos;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.TEAM;
		}
	}
}