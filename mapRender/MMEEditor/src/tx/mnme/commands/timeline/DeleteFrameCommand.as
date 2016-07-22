package tx.mnme.commands.timeline
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.FrameData;
	import tx.mnme.commands.BaseCommand;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Timeline;
	import tx.mnme.views.panels.timeline.TimelineLayer;
	
	use namespace cmd_internal;
	
	public class DeleteFrameCommand extends BaseTimelineCommand
	{
		protected var oldFrameData:FrameData;
		
		public function DeleteFrameCommand(timeline:Timeline,layerIndex:int,frameIndex:int,oldFrameData:FrameData)
		{
			this.oldFrameData = oldFrameData;
			
			super(timeline,layerIndex,frameIndex);
		}
		
		override cmd_internal function execDo():void
		{
			timeline.doDeleteFrame(layerIndex,frameIndex);
//			timeline.getLayer(layerIndex).doDeleteFrame(frameIndex);
		}
		
		override cmd_internal function execUndo():void
		{
			timeline.undoDeleteFrame(layerIndex,frameIndex,oldFrameData.clone());
//			timeline.getLayer(layerIndex).undoDeleteFrame(frameIndex,oldFrameData.clone());
		}
		
		override public function destroy():void
		{
			oldFrameData = null;
			super.destroy();
		}
	}
}