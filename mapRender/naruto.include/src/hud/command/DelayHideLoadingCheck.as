package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class DelayHideLoadingCheck extends Command
	{
		public function DelayHideLoadingCheck(commandLoadingType:int=2, autoHideLoading:Boolean=true)
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}