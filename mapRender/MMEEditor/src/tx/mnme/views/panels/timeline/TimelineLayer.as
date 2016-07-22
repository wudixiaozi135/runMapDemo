package tx.mnme.views.panels.timeline
{
	import com.tencent.morefun.naruto.tools.mmefile.events.FrameDataEvent;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.ElementData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.FrameData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.LayerData;
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.utils.EqualUtil;
	import tx.mnme.views.panels.Timeline;
	
	import flash.events.Event;
	import flash.filesystem.File;
	
	import mx.core.IVisualElementContainer;
	
	import spark.components.Group;

	[Event(name="refreshFrame", type="flash.events.Event")]
	[Event(name="changeFrame", type="flash.events.Event")]
	public class TimelineLayer extends Group
	{
		private var selectedBlock:TimelineBlock;
//		private var frameDatas:Vector.<FrameData>;
		private var layerData:LayerData;
		
		public function TimelineLayer()
		{
			super();
			drawBG();
			
			selectedBlock = new TimelineBlock();
			selectedBlock.setData(TimelineBlock.TYPE_SELECT,1,-1,null,false,false,null, 0);
			addElement(selectedBlock);
		}
		
		protected function drawBG():void
		{
			graphics.beginFill(0xEEEEEE);
			graphics.drawRect(0,1,TimelineBlock.WIDTH*Timeline.WIDTH*0.5,TimelineBlock.HEIGHT-2);
			graphics.endFill();
		}
		
		public function cleanSelectedBlock():void
		{
			selectedBlock.setFrame(-1);
//			if(containsElement(selectedBlock))
//			{
//				removeElement(selectedBlock);
//			}
		}
		
		public function select(frame:int):void
		{
			selectedBlock.setFrame(frame);
//			addElement(selectedBlock);
		}
		
		public function getFrame():int
		{
			return selectedBlock.getFrame();
		}
		
		public function setLayerData(layerData:LayerData):void
		{
			this.layerData = layerData;
			
			setFrameDatas(layerData.frameDatas);
		}
		
		public function getLayerData():LayerData
		{
			return this.layerData;
		}
		
		private function setFrameDatas(frameDatas:Vector.<FrameData>):void
		{
			removeAllElements();
			addElement(selectedBlock);
			
			for each(var frameData:FrameData in frameDatas)
			{
				addBlock(frameData);
			}
		}
		
		private function addBlock(frameData:FrameData):void
		{
			frameData.addEventListener(FrameDataEvent.UPDATE_ELEMENT,onFrameData);
			frameData.addEventListener(FrameDataEvent.UPDATE_INDEX,onFrameData);
			frameData.addEventListener(FrameDataEvent.UPDATE_LENGTH,onFrameData);
			frameData.addEventListener(FrameDataEvent.UPDATE_EVENT,onFrameData);
			frameData.addEventListener(FrameDataEvent.UPDATE_TWEEN,onFrameData);
			frameData.addEventListener(FrameDataEvent.UPDATE_PHANTOM,onFrameData);
			frameData.addEventListener(FrameDataEvent.UPDATE_SOUND,onFrameData);
			
			var block:TimelineBlock = new TimelineBlock();
			block.name = "block"+frameData.index;
			
			var err:Boolean = true;
			var next:FrameData = getNextFrameData(frameData);
			if(next && EqualUtil.equalElement(frameData.element,next.element))
			{
				err = false;
			}
			
			block.setData(
				frameData.element==null?TimelineBlock.TYPE_NONE:TimelineBlock.TYPE_HAS,
				frameData.length,
				frameData.index,
				frameData.event,
				frameData.useTween,
				err,
				frameData.phantom.type,
				frameData.sound.id
			);
			addElementAt(block,0);
			
		}
		
		private function removeBlock(frameData:FrameData):void
		{
			frameData.removeEventListener(FrameDataEvent.UPDATE_ELEMENT,onFrameData);
			frameData.removeEventListener(FrameDataEvent.UPDATE_INDEX,onFrameData);
			frameData.removeEventListener(FrameDataEvent.UPDATE_LENGTH,onFrameData);
			frameData.removeEventListener(FrameDataEvent.UPDATE_EVENT,onFrameData);
			frameData.removeEventListener(FrameDataEvent.UPDATE_TWEEN,onFrameData);
			frameData.removeEventListener(FrameDataEvent.UPDATE_PHANTOM,onFrameData);
			frameData.removeEventListener(FrameDataEvent.UPDATE_SOUND,onFrameData);
			
			var block:TimelineBlock = getChildByName("block"+frameData.index) as TimelineBlock;
			removeElement(block);
		}
		cmd_internal function addFrameData(fd:FrameData):void
		{
			layerData.frameDatas.push(fd);
			addBlock(fd);
			updateBlocks();
		}
		cmd_internal function removeFrameData(frameIndex:int):void
		{
			var fd:FrameData = getFrameData(frameIndex);
			if(fd)
			{
				var i:int = layerData.frameDatas.indexOf(fd);
				if(i!=-1)
				{
					layerData.frameDatas.splice(i,1);
				}
				removeBlock(fd);
			}
		}
		
		public function updateBlocks():void
		{
			for each(var frameData:FrameData in layerData.frameDatas)
			{
				var block:TimelineBlock = getChildByName("block"+frameData.index) as TimelineBlock;
				if(block)
				{
					var err:Boolean = true;
					var next:FrameData = getNextFrameData(frameData);
					if(next && EqualUtil.equalElement(frameData.element,next.element))
					{
						err = false;
					}
					
					block.setData(
						frameData.element==null?TimelineBlock.TYPE_NONE:TimelineBlock.TYPE_HAS
						,frameData.length
						,frameData.index
						,frameData.event
						,frameData.useTween
						,err
						,frameData.phantom.type
						,frameData.sound.id
					);
				}
			}
		}
		
		public function getNextFrameData(fd:FrameData):FrameData
		{
			for each (var next:FrameData in layerData.frameDatas)
			{
				if(next!=fd && next.index == fd.index+fd.length)
				{
					return next;
				}
			}
			return null;
		}
		
//		public function getCurrentFrameData():FrameData
//		{
//			if(selectedBlock.getFrame()!=-1)
//			{
//				for each(var frameData:FrameData in frameDatas)
//				{
//					if(selectedBlock.getFrame() >= frameData.index && selectedBlock.getFrame() < frameData.index + frameData.length)
//					{
//						return frameData;
//					}
//				}
//			}
//			return null;
//		}
		
		private function onFrameData(e:FrameDataEvent):void
		{
			var fd:FrameData = e.currentTarget as FrameData;
			switch(e.type)
			{
				case FrameDataEvent.UPDATE_ELEMENT:
					updateBlockByElement(fd);
					break;
				case FrameDataEvent.UPDATE_LENGTH:
					var dv:int = fd.length - int(e.oldValue);
					shiftFrameDatas(fd.index + e.oldValue,dv);
//					for each(var frameData:FrameData in layerData.frameDatas)
//					{
//						if(frameData!=fd)
//						{
//							if(frameData.index > fd.index)
//							{
//								var block:TimelineBlock = getChildByName("block"+frameData.index) as TimelineBlock;
//								frameData.setIndex(frameData.index + dv,false);
//								block.name = "block"+frameData.index;
//							}
//						}
//					}
					updateBlocks();
					if(fd.useTween)
					{
						dispatchEvent(new Event("refreshFrame"));
					}
					break;
				case FrameDataEvent.UPDATE_EVENT:
					updateBlockByEvent(fd);
					break;
				case FrameDataEvent.UPDATE_TWEEN:
					updateBlockByTween(fd);
					break;
				case FrameDataEvent.UPDATE_PHANTOM:
					updateBlockByPhantom(fd);
					break;
				case FrameDataEvent.UPDATE_SOUND:
				{
					updateBlockBySound(fd);
					break;
				}
			}
		}
		
		private function shiftFrameDatas(frameIndex:int,dv:int):void
		{
			var fd:FrameData;
			var i:int;
			var block:TimelineBlock;
			
			if(dv<0)
			{
				for(i=0;i<layerData.frameDatas.length;i++)
				{
					fd = layerData.frameDatas[i];
					if(fd.index >= frameIndex)
					{
						block = getChildByName("block"+fd.index) as TimelineBlock;
						fd.setIndex(fd.index + dv,false);
						block.name = "block"+fd.index;
					}
				}
			}else if(dv>0)
			{
				for(i=layerData.frameDatas.length-1;i>=0;i--)
				{
					fd = layerData.frameDatas[i];
					if(fd.index >= frameIndex)
					{
						block = getChildByName("block"+fd.index) as TimelineBlock;
						fd.setIndex(fd.index + dv,false);
						block.name = "block"+fd.index;
					}
				}
			}
			
		}
		
		private function updateBlockByElement(fd:FrameData):void
		{
			var block:TimelineBlock = getChildByName("block"+fd.index) as TimelineBlock;
			block.setType(fd.element==null?TimelineBlock.TYPE_NONE:TimelineBlock.TYPE_HAS);
		}
		
		private function updateBlockByEvent(fd:FrameData):void
		{
			var block:TimelineBlock = getChildByName("block"+fd.index) as TimelineBlock;
			block.setEvent(fd.event);
		}
		
		private function updateBlockByTween(fd:FrameData):void
		{
			var block:TimelineBlock = getChildByName("block"+fd.index) as TimelineBlock;
			block.setUseTween(fd.useTween);
		}
		
		private function updateBlockByPhantom(fd:FrameData):void
		{
			var block:TimelineBlock = getChildByName("block"+fd.index) as TimelineBlock;
			block.setPhantomType(fd.phantom.type);
		}
		
		private function updateBlockBySound(fd:FrameData):void
		{
			var block:TimelineBlock = getChildByName("block"+fd.index) as TimelineBlock;
			block.setSound(fd.sound.id);
		}
		
		
		public function getSelectedFrameData():FrameData
		{
			if(selectedBlock.getFrame() != -1)
			{
				for each(var frameData:FrameData in layerData.frameDatas)
				{
					if(selectedBlock.getFrame() >= frameData.index && selectedBlock.getFrame() < frameData.index + frameData.length)
					{
						return frameData;
					}
				}
			}
			return null;
		}
		
		public function getFrameData(index:int):FrameData
		{
			if(index != -1)
			{
				for each(var frameData:FrameData in layerData.frameDatas)
				{
					if(index >= frameData.index && index < frameData.index + frameData.length)
					{
						return frameData;
					}
				}
			}
			return null;
		}
		
		public function getTotalFrame():int
		{
			var mfd:FrameData;
			for each(var frameData:FrameData in layerData.frameDatas)
			{
				if(mfd==null)
				{
					mfd = frameData;
				}else
				{
					if(mfd.index<frameData.index)
					{
						mfd = frameData;
					}
				}
			}
			if(mfd)
			{
				return mfd.index + mfd.length;
			}else
			{
				return 0;
			}
		}
		
		cmd_internal function doPasteFrame(frameIndex:int,fd:FrameData):void
		{
			
		}
		
		cmd_internal function undoPasteFrame(frameIndex:int):void
		{
			
		}
		
		cmd_internal function doInsertFrame(frameIndex:int):void
		{
			var sfd:FrameData = getFrameData(frameIndex);
			if(sfd)
			{
				sfd.setLength(sfd.length+1);
			}else
			{
				var tf:int = getTotalFrame();
				if(tf>0)
				{
					var pfd:FrameData = getFrameData(tf-1);
					if(pfd)
					{
						pfd.setLength(selectedBlock.getFrame()-pfd.index+1);
					}
				}else
				{
					if(layerData.frameDatas==null)
					{
						layerData.frameDatas = new Vector.<FrameData>;
					}
					var fd:FrameData = new FrameData();
					layerData.frameDatas.push(fd);
					fd.setIndex(0);
					fd.setLength(selectedBlock.getFrame()+1);
					addBlock(fd);
				}
			}
		}
		
		cmd_internal function undoInsertFrame(frameIndex:int,ofd:FrameData):void
		{
			if(ofd)
			{
				var fd:FrameData = getFrameData(ofd.index);
				fd.setLength(ofd.length);
			}else
			{
				cmd_internal::removeFrameData(frameIndex);
			}
		}
		
		public function getFrameDataAtAndBefor(index:int):FrameData
		{
			while(index>=0)
			{
				var fd:FrameData = getFrameData(index);
				if(fd)
				{
					return fd;
				}
				index--;
			}
			return null;
		}
		
		cmd_internal function doDeleteFrame(frameIndex:int):void
		{
			var sfd:FrameData = getFrameData(frameIndex)//getSelectedFrameData();
			if(sfd)
			{
				if(sfd.length>1)
				{
					sfd.setLength(sfd.length-1);
				}else
				{
					var index:int = layerData.frameDatas.indexOf(sfd);
					layerData.frameDatas.splice(index,1);
					removeBlock(sfd);
					
					shiftFrameDatas(sfd.index,-1);
					updateBlocks();
					dispatchEvent(new Event("refreshFrame"));
				}
			}
		}
		
		cmd_internal function undoDeleteFrame(frameIndex:int,ofd:FrameData):void
		{
			if(ofd.length>1)
			{
				var cfd:FrameData = getFrameData(frameIndex);
				cfd.setLength(ofd.length);
			}else
			{
				shiftFrameDatas(ofd.index,1);
				for(var i:int=0;i<layerData.frameDatas.length;i++)
				{
					var fd:FrameData = layerData.frameDatas[i];
					if(ofd.index<fd.index)
					{
						layerData.frameDatas.splice(i,0,ofd);
						break;
					}
				}
				if(layerData.frameDatas.indexOf(ofd)==-1)
				{
					layerData.frameDatas.push(ofd);
				}
				addBlock(ofd);
				updateBlocks();
				dispatchEvent(new Event("refreshFrame"));
			}
		}
		
		public function convertFrame(frameIndex:int,isNone:Boolean):void
		{
			if(frameIndex == -1)
			{
				return;
			}
			
			if(layerData.frameDatas == null)
			{
				layerData.frameDatas = new Vector.<FrameData>;
			}
			
			var sfd:FrameData = getFrameData(frameIndex);//getSelectedFrameData();
			var ldi:int = -1;
			var fd:FrameData;
			if(sfd)
			{
				if(sfd.length>1)
				{
					if(selectedBlock.getFrame()>sfd.index)
					{
						var len1:int = selectedBlock.getFrame() - sfd.index;
						var len2:int = sfd.index + sfd.length - selectedBlock.getFrame();
						sfd.setLength(len1,false);
						
						
						fd = new FrameData();
//						layerData.frameDatas.push(fd);
						ldi = layerData.frameDatas.indexOf(sfd);
						layerData.frameDatas.splice(ldi+1,0,fd);
						if(!isNone && sfd.element)
						{
							fd.setElement(sfd.element.clone());
						}
						fd.setIndex(selectedBlock.getFrame());
						fd.setLength(len2);
						addBlock(fd);
						
						updateBlocks();
					}
				}else if(sfd.length==1)
				{
					var nfd:FrameData = getFrameData(sfd.index+1);
					if(nfd==null)
					{
						nfd = new FrameData();
						layerData.frameDatas.push(nfd);
						if(!isNone && sfd.element)
						{
							nfd.setElement(sfd.element.clone());
						}
						nfd.setIndex(sfd.index+1);
						nfd.setLength(1);
						addBlock(nfd);
						
						updateBlocks();
						
						selectedBlock.setFrame(sfd.index+1);
						dispatchEvent(new Event("changeFrame"));
					}
				}
			}else
			{
				var tf:int = getTotalFrame();
				var len:int = selectedBlock.getFrame() - tf;
				
				var prevFrameData:FrameData = getFrameData(tf-1);
				
				if( len > 0)
				{
					if(prevFrameData)
					{
						prevFrameData.setLength(prevFrameData.length+len,false);
					}else
					{
						fd = new FrameData();
						layerData.frameDatas.push(fd);
						fd.setIndex(tf);
						fd.setLength(len);
						addBlock(fd);
					}
				}
					
				fd = new FrameData();
				layerData.frameDatas.push(fd);
				if(!isNone && prevFrameData && prevFrameData.element)
				{
					fd.setElement(prevFrameData.element.clone());
				}
				fd.setIndex(selectedBlock.getFrame());
				fd.setLength(1);
				addBlock(fd);
				
				updateBlocks();
			}
		}
		
		public function insertSeqElementData(multFiles:Vector.<File>):void
		{
			var sfd:FrameData = getSelectedFrameData();
			shiftFrameDatas(sfd.index+sfd.length,multFiles.length);
			
			for(var i:int=0;i<multFiles.length;i++)
			{
				var fd:FrameData = new FrameData();
				fd.setIndex(sfd.index+1+i,false);
				fd.setLength(1,false);
				var ed:ElementData = new ElementData();
				ed.filename = multFiles[i].name;
				fd.setElement(ed,false);
				
				layerData.frameDatas.splice(fd.index,0,fd);
				addBlock(fd);
			}
			updateBlocks();
		}
		
		public function destroy():void
		{
			if(parent is IVisualElementContainer)
			{
				(parent as IVisualElementContainer).removeElement(this);
			}
			for each(var frameData:FrameData in layerData.frameDatas)
			{
				removeBlock(frameData);
			}
			removeAllElements();
			layerData = null;
		}
	}
}