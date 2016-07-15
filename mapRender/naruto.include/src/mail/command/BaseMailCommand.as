package mail.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class BaseMailCommand extends Command
	{
		public function BaseMailCommand(commandLoadingType:int=2, autoHideLoading:Boolean=true)
		{
			super(commandLoadingType, autoHideLoading);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.MAIL;
		}
	}
}