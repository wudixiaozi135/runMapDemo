package user.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import flash.geom.Point;
	
	import def.PluginDef;

	public class SetUserInitLocationCommand extends Command
	{
		public var location:Point;
		
		public function SetUserInitLocationCommand(location:Point)
		{
			super();
			this.location = location;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.USER;
		}
	}
}