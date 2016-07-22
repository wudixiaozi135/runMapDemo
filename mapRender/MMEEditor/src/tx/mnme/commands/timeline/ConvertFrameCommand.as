package tx.mnme.commands.timeline
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.FrameData;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Timeline;
	
	import flash.events.Event;
	
	use namespace cmd_internal;
	
	public class ConvertFrameCommand extends BaseTimelineCommand
	{
		private var oldFrameData:FrameData;
		private var isNone:Boolean;
		
		public function ConvertFrameCommand(timeline:Timeline, layerIndex:int, frameIndex:int,oldFrameData:FrameData,isNone:Boolean)
		{
			this.oldFrameData = oldFrameData;
			this.isNone = isNone;
			
			super(timeline, layerIndex, frameIndex);
		}
		
		
		override cmd_internal function execDo():void
		{
			timeline.doConvertFrame(layerIndex,frameIndex,isNone);
		}
		
		override cmd_internal function execUndo():void
		{
			timeline.undoConvertFrame(layerIndex,frameIndex,oldFrameData);
//			timeline.getLayer(layerIndex).removeFrameData(frameIndex);
//			var fd:FrameData;
//			if(oldFrameData)
//			{
//				fd = timeline.getLayer(layerIndex).getFrameData(oldFrameData.index);
//				fd.setLength(oldFrameData.length);
//			}else
//			{
//				fd = timeline.getLayer(layerIndex).getFrameData(frameIndex-1);
//				if(fd)
//				{
//					timeline.getLayer(layerIndex).removeFrameData(fd.index);
//				}
//			}
//			timeline.dispatchEvent(new Event(Event.CHANGE));
		}
		
	}
}