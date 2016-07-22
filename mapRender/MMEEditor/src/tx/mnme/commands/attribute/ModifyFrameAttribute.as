package tx.mnme.commands.attribute
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.FrameData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.PhantomData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.SoundData;
	import tx.mnme.commands.BaseCommand;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.events.FrameAttributeEvent;
	import tx.mnme.views.panels.FrameAttribute;
	import tx.mnme.views.panels.Timeline;
	
	use namespace cmd_internal;
	public class ModifyFrameAttribute extends BaseCommand
	{
		protected var timeline:Timeline;
		protected var layerIndex:int;
		protected var frameIndex:int;
		protected var oldEvent:String;
		protected var oldUseTween:Boolean;
		protected var oldPhantom:PhantomData;
		protected var newEvent:String;
		protected var newUseTween:Boolean;
		protected var newPhantom:PhantomData;
		
		protected var oldSound:SoundData;
		protected var newSound:SoundData;
		
		
		public function ModifyFrameAttribute(timeline:Timeline,layerIndex:int,frameIndex:int,oldEvent:String,oldUseTween:Boolean,oldPhantom:PhantomData, oldSound:SoundData,
											 													newEvent:String,newUseTween:Boolean,newPhantom:PhantomData, newSound:SoundData)
		{
			super();
			
			this.timeline = timeline;
			this.layerIndex = layerIndex;
			this.frameIndex = frameIndex;
			this.oldEvent = oldEvent;
			this.oldUseTween = oldUseTween;
			this.oldPhantom = oldPhantom;
			this.newEvent = newEvent;
			this.newUseTween = newUseTween;
			this.newPhantom = newPhantom;
			
			this.oldSound = oldSound;
			this.newSound = newSound;
		}
		
		override cmd_internal function execDo():void
		{
			var fd:FrameData = timeline.getLayer(layerIndex).getFrameData(frameIndex);
			fd.setEvent(newEvent);
			fd.setUseTween(newUseTween);
			fd.setPhantom(newPhantom.clone());
			fd.setSound(newSound.clone());
		}
		
		override cmd_internal function execUndo():void
		{
			var fd:FrameData = timeline.getLayer(layerIndex).getFrameData(frameIndex);
			fd.setEvent(oldEvent);
			fd.setUseTween(oldUseTween);
			fd.setPhantom(oldPhantom.clone());
			fd.setSound(oldSound.clone());
		}
		
		override public function destroy():void
		{
			this.timeline = null;
//			this.layerIndex = layerIndex;
//			this.frameIndex = frameIndex;
			this.oldEvent = null;
//			this.oldUseTween = null;
			this.oldPhantom = null;
			this.newEvent = null;
//			this.newUseTween = null;
			this.newPhantom = null;
		}
	}
}