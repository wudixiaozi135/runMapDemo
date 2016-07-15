package battle.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class ChangBattleHeroListCommand extends Command
	{
		public var heroList:Array;
		
		public function ChangBattleHeroListCommand(heroList:Array)
		{
			super();
			
			this.heroList = heroList;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.BATTLE;
		}
	}
}