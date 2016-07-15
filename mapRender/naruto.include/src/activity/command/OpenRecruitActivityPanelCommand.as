package activity.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class OpenRecruitActivityPanelCommand extends Command
	{
		public function OpenRecruitActivityPanelCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.ACTIVITY;
		}
	}
}