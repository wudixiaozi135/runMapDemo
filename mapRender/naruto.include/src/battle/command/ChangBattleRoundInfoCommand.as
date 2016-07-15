package battle.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class ChangBattleRoundInfoCommand extends Command
	{
		public var roundInfos:Array;
		
		public function ChangBattleRoundInfoCommand(roundInfos:Array)
		{
			super();
			
			this.roundInfos = roundInfos;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.BATTLE;
		}
	}
}