package prewar.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class PrewarPlayerExitCommand extends Command
	{
		public var teamPos:int;
		
		public function PrewarPlayerExitCommand(teamPos:int)
		{
			super(2);
			
			this.teamPos = teamPos;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.PREWAR;
		}
	}
}