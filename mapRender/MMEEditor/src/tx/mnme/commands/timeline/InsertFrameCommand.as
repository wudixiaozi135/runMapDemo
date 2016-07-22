package tx.mnme.commands.timeline
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.FrameData;
	import tx.mnme.commands.BaseCommand;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Timeline;
	import tx.mnme.views.panels.timeline.TimelineLayer;
	
	use namespace cmd_internal;
	
	public class InsertFrameCommand extends BaseTimelineCommand
	{
		protected var oldFrameData:FrameData;
		
		public function InsertFrameCommand(timeline:Timeline, layerIndex:int,frameIndex:int,oldFrameData:FrameData)
		{
			this.oldFrameData = oldFrameData;
			super(timeline,layerIndex,frameIndex);
		}
		
		
		override cmd_internal function execDo():void
		{
			timeline.doInsertFrame(layerIndex,frameIndex,oldFrameData);
//			timeline.getLayer(layerIndex).doInsertFrame(frameIndex);
		}
		
		override cmd_internal function execUndo():void
		{
			timeline.undoInsertFrame(layerIndex,frameIndex,oldFrameData);
//			timeline.getLayer(layerIndex).undoInsertFrame(frameIndex,oldFrameData);
		}
		
		override public function destroy():void
		{
			oldFrameData = null;
			super.destroy();
		}
	}
	
	 
}