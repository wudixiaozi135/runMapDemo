package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class ShowBattlePowerChangedEffect extends Command
	{
		public function ShowBattlePowerChangedEffect(commandLoadingType:int=2, autoHideLoading:Boolean=true)
		{
			super(commandLoadingType, autoHideLoading);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}