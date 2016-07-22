package tx.mnme.commands.timeline
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.LayerData;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.Timeline;

	use namespace cmd_internal;
	
	public class InsertLayerCommand extends BaseTimelineCommand
	{
		private var oldLayerIndex:int;
		private var layerData:LayerData;
		
		public function InsertLayerCommand(timeline:Timeline, layerIndex:int,oldLayerIndex:int,layerData:LayerData)
		{
			this.oldLayerIndex = oldLayerIndex;
			this.layerData = layerData;
			
			super(timeline,layerIndex, -1);
		}
		
		override cmd_internal function execDo():void
		{
			timeline.doInsertLayer(layerIndex,layerData.clone());
		}
		
		override cmd_internal function execUndo():void
		{
			timeline.undoInsertLayer(layerIndex,oldLayerIndex);
//			timeline.deleteLayer(layerIndex,oldLayerIndex);
		}
		
	}
}