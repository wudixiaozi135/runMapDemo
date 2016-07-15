package chat.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	import serverProto.inc.ProtoPlayerKey;
	
	public class SendChatCommand extends NarutoCommand
	{
		public static const SEND_FAILD_ERROR:uint = 0x1001;
		
		public var channelType:uint;
		public var contextType:uint;
		public var context:String;
		public var listenername:String;
		public var playerKey:ProtoPlayerKey;
		
		public function SendChatCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.CHAT;
		}
	}
}