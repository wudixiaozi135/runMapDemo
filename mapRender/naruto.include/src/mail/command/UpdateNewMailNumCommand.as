package mail.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	

	public class UpdateNewMailNumCommand extends Command
	{
		public var newMailNum:int;
		
		public function UpdateNewMailNumCommand(newMailNum:int)
		{
			super();
			this.newMailNum = newMailNum;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}