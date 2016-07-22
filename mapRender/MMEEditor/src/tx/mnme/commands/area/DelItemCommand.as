package tx.mnme.commands.area
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.BaseElementData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.FrameData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.PointElementData;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActiveArea;
	import tx.mnme.views.panels.Timeline;
	import tx.mnme.views.panels.activearea.BaseItem;
	import tx.mnme.views.panels.activearea.ImageItem;
	import tx.mnme.views.panels.activearea.MmeRenderItem;
	
	import flash.filesystem.File;

	use namespace cmd_internal; 
	
	public class DelItemCommand extends BaseAreaCommand
	{
		protected var timeline:Timeline;
		protected var frameIndex:int;
		protected var data:BaseElementData;
		
		public function DelItemCommand(area:ActiveArea,timeline:Timeline, layerIndex:int,frameIndex:int,data:BaseElementData)
		{
			this.timeline = timeline;
			this.frameIndex = frameIndex;
			this.data = data;
			
			super(area, layerIndex);
			
		}
		
		override cmd_internal function execDo():void
		{
			var fd:FrameData = timeline.getLayer(layerIndex).getFrameData(frameIndex);
			fd.setElement(null);
			
			area.removeItemAt(layerIndex);
		}
		
		override cmd_internal function execUndo():void
		{
			var fd:FrameData = timeline.getLayer(layerIndex).getFrameData(frameIndex);
			fd.setElement(data);
			
			var item:BaseItem = area.createItem(data,layerIndex);
			area.addItemAt(item,true,false,layerIndex);
			area.selectItem(item);
		} 
		
	}
}