package guild.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class BaseGuildCommand extends Command
	{
		public function BaseGuildCommand(commandLoadingType:int=2, autoHideLoading:Boolean=true)
		{
			super(commandLoadingType, autoHideLoading);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.GUILD;
		}
	}
}