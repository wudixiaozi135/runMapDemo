package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class ShowHudIconScaleEffect extends Command
	{
		public var skinId:int=1;
		public function ShowHudIconScaleEffect(id:int=1)
		{
			skinId = id;
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}