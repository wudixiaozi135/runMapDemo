package chat.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * @author woodychen
	 * @createTime 2014-8-19 下午5:12:08
	 **/
	public class PasteAlertAreaMessageCommand extends Command
	{
		public var isUpperPosition:Boolean;
		public var msg:String;
		
		public function PasteAlertAreaMessageCommand(isUpperPosition:Boolean, msg:String)
		{
			super();
			
			this.isUpperPosition = isUpperPosition;
			this.msg = msg;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.CHAT;
		}
	}
}