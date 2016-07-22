package tx.mnme.commands.timeline
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Timeline;
	
	use namespace cmd_internal;
	public class SelectFrameCommand extends BaseTimelineCommand
	{
		protected var oldLayerIndex:int;
		protected var oldFrameIndex:int;
		
		public function SelectFrameCommand(timeline:Timeline, layerIndex:int, frameIndex:int,oldLayerIndex:int,oldFrameIndex:int)
		{
			super(timeline,layerIndex, frameIndex);
			
			this.oldLayerIndex = oldLayerIndex;
			this.oldFrameIndex = oldFrameIndex;
		}
		
		override cmd_internal function execDo():void
		{
			timeline.selectFrame(layerIndex,frameIndex);
		}
		
		override cmd_internal function execUndo():void
		{
			timeline.selectFrame(oldLayerIndex,oldFrameIndex);
		}
	}
}