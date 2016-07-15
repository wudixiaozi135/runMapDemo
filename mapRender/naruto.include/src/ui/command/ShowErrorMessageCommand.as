package ui.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class ShowErrorMessageCommand extends Command
	{
		public var msg:String;
		
		public function ShowErrorMessageCommand(message:String)
		{
			super();
			msg = message;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.RSMODEL;
		}
	}
}