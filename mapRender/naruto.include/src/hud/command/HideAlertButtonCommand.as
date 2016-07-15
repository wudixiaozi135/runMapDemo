package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class HideAlertButtonCommand extends Command
	{
		public var alertButtonType:int;
		
		public function HideAlertButtonCommand(alertButtonType:int)
		{
			super();
			this.alertButtonType = alertButtonType;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}