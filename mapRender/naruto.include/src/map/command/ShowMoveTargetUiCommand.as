package map.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class ShowMoveTargetUiCommand extends Command
	{
		public var x:int;
		public var y:int;
		
		public function ShowMoveTargetUiCommand(x:int, y:int)
		{
			super();
			this.x = x;
			this.y = y;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.MAP;
		}
	}
}