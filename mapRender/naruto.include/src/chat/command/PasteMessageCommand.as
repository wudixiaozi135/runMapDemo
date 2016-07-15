package chat.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class PasteMessageCommand extends Command
	{
		public var type:int;
		public var content:String;
		public var dataArr:Array;
		
		/**
		 * type 聊天频道，ChatChanelDef中的枚举，默认为系统频道
		 * content 信息内容 
		 * dataArr 数据数组，content的超链接事件里面应该有类似[dataIndex：0]的字段来指定index，代表读取dataArr里的第一个元素作为数据
		 */
		public function PasteMessageCommand(type:int = 1, content:String = "", dataArr:Array = null)
		{
			super();
			this.type = type;
			this.content = content;
			this.dataArr = dataArr;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.CHAT;
		}
	}
}