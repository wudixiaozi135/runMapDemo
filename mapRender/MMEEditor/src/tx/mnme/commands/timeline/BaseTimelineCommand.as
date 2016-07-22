package tx.mnme.commands.timeline
{
	import tx.mnme.commands.BaseCommand;
	import tx.mnme.views.panels.Timeline;
	
	public class BaseTimelineCommand extends BaseCommand
	{
		protected var timeline:Timeline;
		protected var layerIndex:int;
		protected var frameIndex:int;
		
		public function BaseTimelineCommand(timeline:Timeline,layerIndex:int,frameIndex:int)
		{
			super();
			
			this.timeline = timeline;
			this.layerIndex = layerIndex;
			this.frameIndex = frameIndex;
		}
		
		override public function destroy():void
		{
			timeline = null;
		}
	}
}