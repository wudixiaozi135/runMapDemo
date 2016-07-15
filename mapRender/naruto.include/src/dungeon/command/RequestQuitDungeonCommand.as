package dungeon.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class RequestQuitDungeonCommand extends Command
	{
		public var isDone:Boolean;
		public function RequestQuitDungeonCommand(isDone:Boolean=false)
		{
			super();
			
			this.isDone = isDone;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.DUNGEON;
		}
	}
}