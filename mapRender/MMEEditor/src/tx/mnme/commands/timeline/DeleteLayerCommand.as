package tx.mnme.commands.timeline
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.LayerData;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Timeline;

	use namespace cmd_internal;
	
	public class DeleteLayerCommand extends BaseTimelineCommand
	{
		private var layerData:LayerData;
		
		public function DeleteLayerCommand(timeline:Timeline, layerIndex:int, frameIndex:int,layerData:LayerData)
		{
			super(timeline,layerIndex, frameIndex);
			
			this.layerData = layerData;
		}
		
		override cmd_internal function execDo():void
		{
			timeline.doDeleteLayer(layerIndex,-1);
		}
		
		override cmd_internal function execUndo():void
		{
			timeline.undoDeleteLayer(layerIndex,layerData?layerData.clone():null);
		}
		
	}
}