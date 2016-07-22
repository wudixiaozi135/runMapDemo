package tx.mnme.commands.area
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.ElementData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.FrameData;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActiveArea;
	import tx.mnme.views.panels.Timeline;
	import tx.mnme.views.panels.activearea.ImageItem;
	
	import flash.filesystem.File;

	use namespace cmd_internal; 
	
	public class AddItemCommand extends BaseAreaCommand
	{
		protected var timeline:Timeline;
		protected var frameIndex:int;
		protected var file:File;
		protected var eleData:ElementData;
		
		public function AddItemCommand(area:ActiveArea,timeline:Timeline, layerIndex:int,frameIndex:int,file:File,eleData:ElementData)
		{
			this.timeline = timeline;
			this.frameIndex = frameIndex;
			this.file = file;
			this.eleData = eleData;
			
			super(area, layerIndex);
			
		}
		
		override cmd_internal function execDo():void
		{
			var fd:FrameData = timeline.getLayer(layerIndex).getFrameData(frameIndex);
			fd.setElement(eleData);
				
			var imgItem:ImageItem = new ImageItem(layerIndex,file,eleData);
			area.addItemAt(imgItem,true,true,layerIndex);
		}
		
		override cmd_internal function execUndo():void
		{
			var fd:FrameData = timeline.getLayer(layerIndex).getFrameData(frameIndex);
			fd.setElement(null);
			
			area.removeItemAt(layerIndex);
		} 
		
	}
}