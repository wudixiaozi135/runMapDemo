package user.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class RequestMoveCommand extends Command
	{
		public var points:Array;
		public function RequestMoveCommand(points:Array)
		{
			super();
			
			this.points = points;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.USER;
		}
	}
}