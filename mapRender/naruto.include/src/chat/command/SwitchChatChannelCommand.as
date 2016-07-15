package chat.command
{
    import base.NarutoCommand;
    
    import def.PluginDef;

    public class SwitchChatChannelCommand extends NarutoCommand
    {
        public var channel:int;
        public var data:Object;

        /**
		 * @channel 见protoChatChannelType枚举类
		 * @data 目前data可以是PlayerData，用于保存私聊对象的信息
		 */
		public function SwitchChatChannelCommand(channel:int=1, data:Object=null)
        {
            super();

            this.channel = channel;
            this.data = data;
        }

        override public function getPluginName():String
        {
            return PluginDef.CHAT;
        }
    }
}