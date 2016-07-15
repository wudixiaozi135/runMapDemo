package friend.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class RequestFriendListCommand extends Command
	{
		public var friendInfoList:Array;
		
		public function RequestFriendListCommand(commandLoadingType:int=2)
		{
			super(commandLoadingType);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.FRIEND;
		}
	}
}