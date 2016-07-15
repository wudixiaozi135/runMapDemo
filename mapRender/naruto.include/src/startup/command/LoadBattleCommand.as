package startup.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class LoadBattleCommand extends Command
	{
		public function LoadBattleCommand(commandLoadingType:int=2, autoHideLoading:Boolean=true)
		{
			super(commandLoadingType, autoHideLoading);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.STARTUP;
		}
	}
}