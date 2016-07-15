package battle.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import flash.utils.Dictionary;
	
	public class ChangBattleResRefCommand extends Command
	{
		public var resRefMap:Dictionary = new Dictionary();
		public function ChangBattleResRefCommand(resRefMap:Dictionary)
		{
			super();
			
			this.resRefMap = resRefMap;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.BATTLE;
		}
	}
}