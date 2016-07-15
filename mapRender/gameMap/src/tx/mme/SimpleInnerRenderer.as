package tx.mme
{
	import tx.mme.datas.ActionData;
	import tx.mme.datas.AssetData;
	import tx.mme.datas.ElementData;
	import tx.mme.datas.FrameData;
	import tx.mme.datas.LayerData;
	import tx.mme.datas.MmeData;
	import tx.mme.datas.PointElementData;
	
	import flash.display.BitmapData;
	import flash.display.Shape;
	import flash.geom.ColorTransform;
	import flash.geom.Point;
	import flash.system.ApplicationDomain;
	import flash.utils.Dictionary;

	public class SimpleInnerRenderer extends BaseInnerRenderer
	{
		protected var mmeAsset:MmeAssetEx;
		protected var mmeData:MmeData;
		protected var appDomain:ApplicationDomain;
		protected var currActionIndex:int;
		
		protected var bitmaps:Dictionary;
		
		protected static var DEFAULT_COLOR_TRANSFORM:ColorTransform = new ColorTransform();
		
		public function SimpleInnerRenderer(render:MmeAssetRender, mmeData:MmeData, mmeAsset:MmeAssetEx, appDomain:ApplicationDomain)
		{
			super(render);
			
			this.mmeData = mmeData;
			this.mmeAsset = mmeAsset;
			this.appDomain = appDomain;
		}
		
		
		override internal function gotoAction(action:String, frame:int=0):Boolean
		{
			var ti:int = -1;
			for(var i:int=0;i<mmeData.actionDatas.length;i++)
			{
				if(mmeData.actionDatas[i].name == action)
				{
					ti = i;
					break;
				}
			}
			if(ti==-1)
			{
				return false;
			}
			
			var tf:int = 0;
			for each(var ld:LayerData in mmeData.actionDatas[ti].layerDatas)
			{
				
				for each(var fd:FrameData in ld.frameDatas)
				{
					if(tf < fd.index+fd.length-1)
					{
						tf = fd.index+fd.length-1;
					}
				}
			}
			
			currActionName = action;
			currActionIndex = ti;
			currTotalFrame = tf;
			currFrame = Math.max(0,Math.min(frame,tf));
			update();
			
			return true;
		}
		private static const BLAND_NORMAL:String = "normal";
		override internal function update():void
		{
//			render.removeChildren();
//			var children:Vector.<Shape> = new Vector.<Shape>();
			var childIndex:int = 0;
			var evt:MmeAssetRenderEvent
			for(var i:int=mmeData.actionDatas[currActionIndex].layerDatas.length-1;i>=0;i--)
			{
				
				var ld:LayerData = mmeData.actionDatas[currActionIndex].layerDatas[i];
//				var fd:FrameData = ld.frameDatas[currFrame];
//				if(fd != null)
//				{
				for each(var fd:FrameData in ld.frameDatas)
				{
					if(fd.index <= currFrame && fd.index + fd.length > currFrame)
					{
						if (fd.sound && fd.index == currFrame)
						{
							if(render.hasEventListener(MmeAssetRenderEvent.FRAME_SOUND))
							{
								evt = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_SOUND);
								evt.sound = fd.sound; 
								evt.volume = fd.volume;
								render.dispatchEvent(evt);
							}
						}
						if(fd.useTween && fd.index != currFrame)
						{
							fd = getTweenFrameData(currFrame,fd,ld.frameDatas)||fd;
						}
						
						var ed:ElementData = fd.element as ElementData;
						if(ed)
						{
							var bp:MmeAssetBitmap;
							if(ed.extname)
							{
								bp = getBitmapFromShared(ed.extname,i);
								if(bp == null)
								{
//									throw new MmeAssetError("as_core_1451031566_666_0"+ed.extname+"as_core_1451031566_666_1");
									return;
								}
							}else
							{
								bp = getBitmap(ed.assetName,i);
							}
							var newBlenMode:String = ed.blendMode||BLAND_NORMAL;
							if(bp.blendMode!=newBlenMode)
							{
								bp.blendMode = newBlenMode;
							}
							
							bp.x = ed.x;
							bp.y = ed.y;
							bp.scaleX = ed.scaleX;
							bp.scaleY = ed.scaleY;
							bp.rotation = ed.rotation;
							
							//bp.transform.colorTransform = ed.color.getColorTransform(ed.alpha) || new ColorTransform(1,1,1,bp.alpha);
							//bp.transform.colorTransform = ed.color.getColorTransform() || DEFAULT_COLOR_TRANSFORM;
							
//							var oldct:ColorTransform = bp.colorTransform; //bp.transform.colorTransform;
//							var newct:ColorTransform = ed.color.getColorTransform() || DEFAULT_COLOR_TRANSFORM;
//							if(oldct.color != newct.color
//							|| oldct.alphaMultiplier != newct.alphaMultiplier
//							|| oldct.alphaOffset != newct.alphaOffset
//							|| oldct.redMultiplier != newct.redMultiplier
//							|| oldct.redOffset != newct.redOffset
//							|| oldct.greenMultiplier != newct.greenMultiplier
//							|| oldct.greenOffset != newct.greenOffset
//							|| oldct.blueMultiplier != newct.blueMultiplier
//							|| oldct.blueOffset != newct.blueOffset
//							)
//							{
//								bp.transform.colorTransform = newct;
//							}
							bp.colorTransform = ed.color.getColorTransform() || DEFAULT_COLOR_TRANSFORM;
							
							bp.alpha = ed.alpha;
							
							if(!render.contains(bp))
							{
								render.addChildAt(bp,childIndex);
							}else
							{
								if(render.getChildIndex(bp) != childIndex)
								{
									render.setChildIndex(bp,childIndex);
								}
							}
							childIndex ++;
//							render.addChild(bp);
//							children.push(bp);
						}
						if(render.referPointVisible && fd.element is PointElementData)
						{
							var ped:PointElementData = fd.element as PointElementData;
							//							currPointElementData = ped;
							var referPoint:MmeAssetRenderReferPoint = new MmeAssetRenderReferPoint();
							referPoint.x = ped.x;
							referPoint.y = ped.y;
							if(!render.contains(referPoint))
							{
								render.addChildAt(referPoint,childIndex++);
							}else
							{
								render.setChildIndex(referPoint,childIndex++);
							}
//							render.addChild(referPoint);
//							children.push(referPoint);
						}
						
						
						if(fd.event && fd.index == currFrame)
						{
							var isStopUpdated:Boolean = false;
							for each(var et:String in fd.events)
							{
								if(render.hasEventListener(MmeAssetRenderEvent.FRAME_EVENT))
								{
									evt = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_EVENT,et);
									render.dispatchEvent(evt);
									isStopUpdated ||= evt.isStopUpdated;
								}
							}
							
							if(isStopUpdated || mmeData == null)//在里面抛出FRAME_EVENT事件的时候，有可能被unload，导致mmeData=null;
							{
								return;
							}
						}
						
					}
				}
			}
			while(render.numChildren>childIndex)
			{
				render.removeChildAt(childIndex);
			}
			
		}
		
		override public function getCurrReferPoints():Array
		{
			var arr:Array = [];
			for each(var ld:LayerData in mmeData.actionDatas[currActionIndex].layerDatas)
			{
				for each(var fd:FrameData in ld.frameDatas)
				{
					if(fd.index <= currFrame && currFrame < fd.index + fd.length)
					{
						if(fd.useTween && fd.index != currFrame)
						{
							fd = getTweenFrameData(currFrame,fd,ld.frameDatas)||fd;
						}
						if(fd.element is PointElementData)
						{
							arr.push(fd.element);
						}
					}
				}
			}
			return arr;
		}
		
		override public function getCurrReferPointByName(pointName:String):PointElementData
		{
			for each(var ld:LayerData in mmeData.actionDatas[currActionIndex].layerDatas)
			{
				for each(var fd:FrameData in ld.frameDatas)
				{
					if(fd.index <= currFrame && currFrame < fd.index + fd.length)
					{
						if(fd.useTween && fd.index != currFrame)
						{
							fd = getTweenFrameData(currFrame,fd,ld.frameDatas)||fd;
						}
						var ped:PointElementData = fd.element as PointElementData;
						if(ped && ped.name == pointName)
						{
							return ped;
						}
					}
				}
			}
			return null;
		}
		
		override public function getReferPointsFromAction(actionName:String, frame:int):Array
		{
			if(!mmeData)
			{
				return null;
			}
			var arr:Array = [];
			for each(var ad:ActionData in mmeData.actionDatas)
			{
				if(ad.name == actionName)
				{
					for each(var ld:LayerData in ad.layerDatas)
					{
						for each(var fd:FrameData in ld.frameDatas)
						{
							if(fd.index <= frame && frame < fd.index + fd.length)
							{
								if(fd.useTween && fd.index != currFrame)
								{
									fd = getTweenFrameData(currFrame,fd,ld.frameDatas)||fd;
								}
								if(fd.element is PointElementData)
								{
									arr.push(fd.element);
								}
							}
						}
					}
					break;
				}
			}
			
			return arr;
		}
		
		override public function getReferPointFromActionByName(actionName:String, frame:int, pointName:String):PointElementData
		{
			if(!mmeData)
			{
				return null;
			}
			for each(var ad:ActionData in mmeData.actionDatas)
			{
				if(ad.name == actionName)
				{
					for each(var ld:LayerData in ad.layerDatas)
					{
						for each(var fd:FrameData in ld.frameDatas)
						{
							if(fd.index <= frame && frame < fd.index + fd.length)
							{
								if(fd.useTween && fd.index != currFrame)
								{
									fd = getTweenFrameData(currFrame,fd,ld.frameDatas)||fd;
								}
								var ped:PointElementData = fd.element as PointElementData;
								if(ped && ped.name == pointName)
								{
									return ped;
								}
							}
						}
					}
					break;
				}
			}
			
			return null;
		}
		
		override public function getTotalFrameByActionName(name:String):int
		{
			var ti:int;
			for(var i:int=0;i<mmeData.actionDatas.length;i++)
			{
				if(mmeData.actionDatas[i].name == name)
				{
					ti = i;
					break;
				}
			}
			if(ti==-1)
			{
				return -1;
			}
			var tf:int = 0;
			for each(var ld:LayerData in mmeData.actionDatas[ti].layerDatas)
			{
				
				for each(var fd:FrameData in ld.frameDatas)
				{
					if(tf < fd.index+fd.length-1)
					{
						tf = fd.index+fd.length-1;
					}
				}
			}
			return tf;
		}
		
		override public function getActionNames():Array
		{
			var arr:Array = [];
			var ti:int = -1;
			for(var i:int=0;i<mmeData.actionDatas.length;i++)
			{
				arr.push(mmeData.actionDatas[i].name);
			}
			return arr;
		}
		
		override public function hasActionName(name:String):Boolean
		{
			if(mmeData==null||mmeData.actionDatas==null)
			{
				return false;
			}
			
			for(var i:int=0;i<mmeData.actionDatas.length;i++)
			{
				if(mmeData.actionDatas[i].name == name)
				{
					return true;
				}
			}
			
			return false;
		}
		
		override public function eventIndexOf(actionName:String,eventName:String,maxNum:int=1):Array
		{
			if(!mmeData)
			{
				return null;
			}
			var arr:Array = [];
			for each(var ad:ActionData in mmeData.actionDatas)
			{
				if(ad.name == actionName)
				{
					for each(var ld:LayerData in ad.layerDatas)
					{
						for(var i:int=0;i<ld.frameDatas.length;i++)
						{
							var tmpEvts:Array = ld.frameDatas[i].event.split(",");
							if(tmpEvts.indexOf(eventName) != -1)
							{
								arr.push(ld.frameDatas[i].index);
								
								if(arr.length >= maxNum)
								{
									return arr;
								}
							}
						}
					}
					break;
				}
			}
			
			return arr;
		}
		
		protected function getBitmapFromShared(assetName:String,i:int):MmeAssetBitmap
		{
			var mmeData:MmeData = mmeAsset.getSharedMmeData();
			if(mmeData)
			{
				var assetData:AssetData = mmeAsset.getSharedAssetData(assetName);
				if(assetData==null)
				{
					return null;
				}
				
				var bpd:BitmapData = mmeAsset.getSharedAsset(assetData.className);
				if(bpd==null)
				{
					return null;
				}
				
				
				if(!bitmaps)bitmaps = new Dictionary();
				if(!bitmaps[i])
				{
					bitmaps[i] = new MmeAssetBitmap(bpd,assetData.x,assetData.y);
				}else
				{
					bitmaps[i].setData(bpd,assetData.x,assetData.y);
				}
				return bitmaps[i];
			}
			return null;
		}
		
		protected function getBitmap(name333:String,i:int):MmeAssetBitmap
		{
			var bpd:BitmapData = mmeAsset.getAsset(name333,appDomain);
			var shape:Shape;
			
			var assetData:AssetData = mmeData.assetDatas[name333];
			if(assetData==null)
			{
				return null;
			}
			
			if(!bitmaps)bitmaps = new Dictionary();
			if(!bitmaps[i])
			{
				bitmaps[i] = new MmeAssetBitmap(bpd,assetData.x,assetData.y);
			}else
			{
				bitmaps[i].setData(bpd,assetData.x,assetData.y);
			}
			return bitmaps[i];
		}
		
		protected function getTweenFrameData(cf:int,fd:FrameData,fds:Vector.<FrameData>):FrameData
		{
			var nfd:FrameData = fd.clone();
//			var tfd:FrameData = fds[cf+fd.length];
			var tfd:FrameData;
			for each(var fdtmp:FrameData in fds)
			{
				if(fdtmp != fd && fdtmp.index == fd.index + fd.length)
				{
					if(fdtmp.element is ElementData && fd.element is ElementData && ElementData(fdtmp.element).assetId == ElementData(fd.element).assetId)
					{
						tfd = fdtmp;
						break;
					}
					if(fdtmp.element is PointElementData && fd.element is PointElementData)
					{
						tfd = fdtmp;
						break;
					}
				}
			}
			if(tfd)
			{
//				var nfd:FrameData = fd.clone();
				var r:Number = (cf - fd.index)/(tfd.index - fd.index);
				
				nfd.element.x = r * (tfd.element.x - fd.element.x) + fd.element.x;
				nfd.element.y = r * (tfd.element.y - fd.element.y) + fd.element.y;
				
				if(tfd.element is ElementData)
				{
					ElementData(nfd.element).scaleX = r * (ElementData(tfd.element).scaleX - ElementData(fd.element).scaleX) + ElementData(fd.element).scaleX;
					ElementData(nfd.element).scaleY = r * (ElementData(tfd.element).scaleY - ElementData(fd.element).scaleY) + ElementData(fd.element).scaleY;
					ElementData(nfd.element).rotation = r * (ElementData(tfd.element).rotation - ElementData(fd.element).rotation) + ElementData(fd.element).rotation;
					ElementData(nfd.element).alpha = r * (ElementData(tfd.element).alpha - ElementData(fd.element).alpha) + ElementData(fd.element).alpha;
				}
				return nfd;
			}else
			{
				return null;
			}
		}
		
		public function destroyBitmaps():void
		{
			var ks:Array = [];
			for(var k:String in bitmaps)
			{
				ks.push(k);
			}
			for each(k in ks)
			{
				bitmaps[k].destroy();
				delete bitmaps[k];
			}
			bitmaps = null;
		}
		
		override public function destroy():void
		{
			destroyBitmaps();
			
			mmeAsset = null;
			mmeData = null;
			appDomain = null;
			currActionIndex = -1;
			
			super.destroy();
		}
		
		private var hitTestPointTemp:Point;
		
		override public function hitTestPoint(x:Number, y:Number):Boolean
		{
			for(var i:int=render.numChildren-1;i>=0;i--)
			{
				var bp:MmeAssetBitmap = render.getChildAt(i) as MmeAssetBitmap;
				if(bp)
				{
					if(hitTestPointTemp == null)
					{
						hitTestPointTemp = new Point();
					}
					if(bp.hitTestPoint(x,y))
					{
						return true;
					}
				}
			}
			return false;
		}
	}
}