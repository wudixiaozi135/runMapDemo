package tx.mnme.commands.timeline
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Timeline;
	
	use namespace cmd_internal;
	
	public class ChangeLayerCommand extends BaseTimelineCommand
	{
		public function ChangeLayerCommand(timeline:Timeline, sourceIndex:int,targetIndex:int)
		{
			super(timeline, sourceIndex, targetIndex);
		}
		
		protected function get sourceIndex():int
		{
			return layerIndex;
		}
		
		protected function get targetIndex():int
		{
			return frameIndex;
		}
		
		override cmd_internal function execDo():void
		{
			timeline.doChangeLayer(sourceIndex,targetIndex);
		}
		
		override cmd_internal function execUndo():void
		{
			timeline.undoChangeLayer(targetIndex,sourceIndex);
		}
	}
}