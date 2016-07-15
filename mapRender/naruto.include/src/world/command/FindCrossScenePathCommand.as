package world.command
{
	import world.commands.BaseWorldCommand;

	public class FindCrossScenePathCommand extends BaseWorldCommand
	{
		public var startSceneId:int;
		public var endSceneId:int;
		public var scenePath:Array;
		
		public function FindCrossScenePathCommand(startSceneId:int, endSceneId:int)
		{
			this.startSceneId = startSceneId;
			this.endSceneId = endSceneId;
		}
	}
}