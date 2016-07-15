package friend.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class OpenFriendPanelCommand extends Command
	{
		public var alwaysOpen:Boolean;
		
		public function OpenFriendPanelCommand(alwaysOpen:Boolean = false)
		{
			super();
			this.alwaysOpen = alwaysOpen;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.FRIEND;
		}
	}
}