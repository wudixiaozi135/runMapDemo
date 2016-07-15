package startup.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class ReleaseBattleCommand extends Command
	{
		public function ReleaseBattleCommand(commandLoadingType:int=2, autoHideLoading:Boolean=true)
		{
			super(commandLoadingType, autoHideLoading);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.STARTUP;
		}
	}
}