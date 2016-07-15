package chat.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class SwitchChatUIModeCommand extends Command
	{
		public var mode:int;
		
		/**
		 * 切换聊天框UI模式
		 * see ChatUIMode
		 */
		public function SwitchChatUIModeCommand(mode:int)
		{
			super();
			this.mode = mode;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.CHAT;
		}
	}
}