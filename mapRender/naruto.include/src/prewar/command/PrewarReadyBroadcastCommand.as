package prewar.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class PrewarReadyBroadcastCommand extends NarutoCommand
	{
		public var teamPos:int;
		
		public function PrewarReadyBroadcastCommand(teamPos:int)
		{
			super();
			
			this.teamPos = teamPos;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.PREWAR;
		}
	}
}