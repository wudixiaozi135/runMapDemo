package friend.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import serverProto.inc.ProtoPlayerKey;
	
	public class RequestAddFriendCommand extends Command
	{
		public var playerKey:ProtoPlayerKey;
		public var name:String;
		/**
		 * 加好友的途径，统计数据用的
		 */
		public var addFriendType:int;
		/**
		 * 添加好友的请求发出后，是否有tips提示
		 */
		public var showFinishTips:Boolean;
		
		/**
		 * @param addFriendType 加好友的途径,见AddFriendTypeDef
		 */
		public function RequestAddFriendCommand(name:String, playerKey:ProtoPlayerKey = null, addFriendType:int = 0, showFinishTips:Boolean = true)
		{
			super();
			this.name = name;
			this.playerKey = playerKey;
			this.addFriendType = addFriendType;
			this.showFinishTips = showFinishTips;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.FRIEND;
		}
	}
}