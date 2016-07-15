package friend.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class OpenAssistorBoxCommand extends Command
	{
		public var dungeonId:int;
		public var assistorInfoArr:Array;
		
		public function OpenAssistorBoxCommand(dungeonId:int, assistorInfoArr:Array)
		{
			super();
			this.dungeonId = dungeonId;
			this.assistorInfoArr = assistorInfoArr;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.FRIEND;
		}
	}
}