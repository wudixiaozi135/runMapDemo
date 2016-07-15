package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import flash.display.DisplayObject;
	
	import def.PluginDef;
	
	public class SetupForecastDungeonIconsCommand extends Command
	{
		public var icons:Vector.<DisplayObject>;
		
		public function SetupForecastDungeonIconsCommand(icons:Vector.<DisplayObject>)
		{
			super();
			this.icons = icons;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}