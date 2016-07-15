package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class OpenActivityHubPanelCommand extends Command
	{
		public var id:int;
		public var activityId:int;
		
		public function OpenActivityHubPanelCommand(id:int=0, activityId:int=0)
		{
			super();
			this.id = id;
			this.activityId = activityId;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}