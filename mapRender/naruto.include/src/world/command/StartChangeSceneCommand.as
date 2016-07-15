package world.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import flash.geom.Point;
	
	import def.PluginDef;
	
	
	
	public class StartChangeSceneCommand extends Command
	{
		public var toScene:int;
		public var toPosition:Point;
		public var toDirection:int;
		public var reason:int;
		
		public function StartChangeSceneCommand(toScene:int=0,toPosition:Point=null,toDirection:int=-1,reason:int=0)
		{
			super(Command.FULL_SCREEN | Command.TOTAL_FILE, false);
			
			this.toScene = toScene;
			this.toPosition = toPosition;
			this.toDirection = toDirection;
			this.reason = reason;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.WORLD;
		}
	}
}