package tx.mme
{
	import tx.mme.datas.FlaData;
	import tx.mme.datas.FlaFrameBitmapData;
	import tx.mme.datas.FlaFrameEventData;
	import tx.mme.datas.PointElementData;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.FrameLabel;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.system.ApplicationDomain;

	public class FlaInnerRenderer extends BaseInnerRenderer
	{
		private var mmeAsset:MmeAssetEx;
		private var appDomain:ApplicationDomain;
		
		private var mc:MovieClip;
		private var events:Array;
		
		private var flaData:FlaData;
		private var frameBitmapDatas:Array;
		private var frameBitmap:Bitmap;
//		private var shape:Shape;
		
		public function FlaInnerRenderer(render:MmeAssetRender, mmeAsset:MmeAssetEx, appDomain:ApplicationDomain)
		{
			this.mmeAsset = mmeAsset;
			this.appDomain = appDomain;
			this.flaData = mmeAsset.getFlaData(appDomain);
			super(render);
		}
		
		override internal function gotoAction(action:String,frame:int=0):Boolean
		{
			if(action != currActionName)
			{
				destroyMc();
				destroyFrameBitmapData();
				
				if(flaData && flaData.hasActionName(action))
				{
					frameBitmapDatas = flaData.getAction(action);
					currTotalFrame = flaData.getTotalFrame(action) - 1;
				}else
				{
					mc = MmeAssetEx.createObject(action, appDomain) as MovieClip;
					mc.gotoAndStop(mc.totalFrames); // 兼容
					render.addChild(mc);
					mc.gotoAndStop(1); // 兼容flash导出音效放在第一帧的情况
					currTotalFrame = mc.totalFrames - 1;
				}
				
				var datamc:MovieClip = MmeAssetEx.createObject(action+"_Data",appDomain) as MovieClip;
				if(datamc)
				{
					events = createEvents(datamc);
				}else
				{
					events = null;
				}
				
				currActionName = action;
			}
			
			setCurrFrame(frame);
			update();
			
			return true;
		}
		
		override public function getActionNames():Array
		{
			var names:Array = [];
			for each(var name:String in appDomain["getQualifiedDefinitionNames"]())
			{
				names.push(name);
			}
			return names;
		}
		
		override public function hasActionName(name:String):Boolean
		{
			for each(var tmpName:String in appDomain["getQualifiedDefinitionNames"]())
			{
				if(tmpName == name)
				{
					return true;
				}
			}
			return false;
		}
		
		
		override public function getCurrReferPoints():Array
		{
			throw new Error("as_core_1451031566_663");
			return null;
		}
		
		override public function getCurrReferPointByName(pointName:String):PointElementData
		{
			throw new Error("as_core_1451031566_664");
			return null;
		}
		
		override public function getReferPointsFromAction(actionName:String, frame:int):Array
		{
			var arr:Array = [];
			var f:int = frame;
			if(f==-1)
			{
				f = currFrame;
			}
			if(frameBitmapDatas)
			{
				var rbds:Array = currActionName == actionName ? frameBitmapDatas : flaData.getAction(actionName);
				
				for each(var tmp:FlaFrameBitmapData in rbds)
				{
					if(tmp.index <= f && tmp.index + tmp.length > f)
					{
						return tmp.referPointDatas || arr;
					}
				}
			}else
			{
				var datamc:MovieClip = MmeAssetEx.createObject(actionName+"_Data",appDomain) as MovieClip;
				if(datamc)
				{
					datamc.gotoAndStop(f+1);
					
//					var arr:Array = [];
					for(var i:int = datamc.numChildren-1;i>=0;i--)
					{
						var rp:DisplayObject = datamc.getChildAt(i);
						if(rp.name.indexOf("referPoint")==0)
						{
							var ped:PointElementData = new PointElementData();
							ped.x = rp.x;
							ped.y = rp.y;
							arr.push(ped);
						}
					}
					return arr;
				}
			}
			return arr;
		}
		
		override public function getReferPointFromActionByName(actionName:String, frame:int, pointName:String):PointElementData
		{
			throw new Error("as_core_1451031566_665");
			return null;
		}
		
		override public function eventIndexOf(actionName:String, eventName:String, maxNum:int=1):Array
		{
			var es:Array;
			if(actionName == currActionName)
			{
				es = events;
			}else
			{
				var datamc:MovieClip = MmeAssetEx.createObject(actionName+"_Data",appDomain) as MovieClip;
				if(datamc)
				{
					es = createEvents(datamc);
				}
			}
			
			var arr:Array = [];
			for each(var ffed:FlaFrameEventData in es)
			{
				var tmpEvts:Array = ffed.event.split(",");
				if(tmpEvts.indexOf(eventName)!=-1)
				{
					arr.push(ffed.index);
					if(maxNum>0 && arr.length>= maxNum)
					{
						return arr;
					}
				}
			}
			return arr;
		}
		
		
		private function onFlaEvent(event:Event):void
		{
			var eventName:String = event["name"];
			var eventParam:String = event["param"];
			
			var re:MmeAssetRenderEvent = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_EVENT,eventName);
			re.param = eventParam;
			render.dispatchEvent(re);
		}
		
		override internal function update():void
		{
			if(frameBitmapDatas)
			{
				updateFrameBitmapData();
			}
			else if(mc)
			{
				updateMc();
			}
		}
		
		private function updateFrameBitmapData():void
		{
			if(frameBitmap)
			{
				frameBitmap.bitmapData = null;
			}else
			{
				frameBitmap = new Bitmap();
				render.addChild(frameBitmap);
			}
			
//			if(!shape)
//			{
//				shape = new Shape();
//				render.addChild(shape);
//			}else
//			{
//				shape.graphics.clear();
//			}
			
			var fbd:FlaFrameBitmapData;
			for each(var tmp:FlaFrameBitmapData in frameBitmapDatas)
			{
				if(tmp.index <= currFrame && tmp.index + tmp.length > currFrame)
				{
					fbd = tmp;
					break;
				}
			}
			
			if(fbd)
			{
				frameBitmap.x = fbd.x;
				frameBitmap.y = fbd.y;
				if(!fbd.bitmapData && fbd.bytes && fbd.width && fbd.height)
				{
					fbd.bitmapData = new BitmapData(fbd.width,fbd.height,true,0);
					fbd.bitmapData.setPixels(new Rectangle(0,0,fbd.width,fbd.height),fbd.bytes);
					fbd.bytes = null;
				}
				
				frameBitmap.bitmapData = fbd.bitmapData;
				
//				shape.x = fbd.x;
//				shape.y = fbd.y;
//				if(fbd.width && fbd.height)
//				{
//					var bd:BitmapData = new BitmapData(fbd.width,fbd.height,true,0);
//					fbd.bytes.position = 0;
//					bd.setPixels(new Rectangle(0,0,fbd.width,fbd.height),fbd.bytes);
//					shape.graphics.beginBitmapFill(bd);
//					shape.graphics.drawRect(0,0,fbd.width,fbd.height);
//				}
			}else
			{
//				frameBitmap.bitmapData = null;
				
			}
			
			
			
			
			updateEvent();
		}
		
		private function destroyFrameBitmapData():void
		{
			if(frameBitmap)
			{
				frameBitmap.bitmapData = null;
				if(frameBitmap.parent)
				{
					frameBitmap.parent.removeChild(frameBitmap);
				}
				frameBitmap = null;
			}
//			if(shape)
//			{
//				shape.graphics.clear();
//				if(shape.parent)
//				{
//					shape.parent.removeChild(shape);
//				}
//				shape = null;
//			}
		}
		
		private function updateMc():void
		{
			eachgoto(mc);
			
			updateEvent();
		}
		
		private function createEvents(mc:MovieClip):Array
		{
			var ffeds:Array = [];
			for each(var l:FrameLabel in mc.currentLabels)
			{
				if(l.name.indexOf("e:")==0)
				{
					var ffed:FlaFrameEventData = new FlaFrameEventData();
					ffed.index = l.frame;
					ffed.event = l.name.substr(2);
					ffeds.push(ffed);
				}
			}
			return ffeds;
		}
		
		private function updateEvent():void
		{
			for each(var ffed:FlaFrameEventData in events)
			{
				if(currFrame == ffed.index)
				{
					var esarr:Array = ffed.event.split(",");
					for each(var e:String in esarr)
					{
						var earr:Array = e.split(":");
						if(earr.length>0)
						{
							var re:MmeAssetRenderEvent = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_EVENT,earr[0]);
							if(earr.length>1)
							{
								re.param = earr[1];
							}
							render.dispatchEvent(re);
						}
					}
				}
			}
		}
		
		private function eachgoto(mc:MovieClip):void
		{
//			mc.gotoAndStop(currFrame);
			mc.gotoAndStop((currFrame%(currTotalFrame+1))+1);
			
			var i:int = mc.numChildren;
			while(i--)
			{
				var imc:MovieClip = mc.getChildAt(i) as MovieClip;
				if(imc)
				{
					eachgoto(imc);
				}
			}
		}
			
		
		
		private function destroyMc():void
		{
			if(mc)
			{
				mc.stop();
				mc.removeEventListener("FlaEvent",onFlaEvent);
				if(mc.parent)
				{
					mc.parent.removeChild(mc);
				}
				mc = null;
			}
		}
		
		override public function destroy():void
		{
			destroyMc();
			destroyFrameBitmapData();
			
			currFrame = -1;
			mmeAsset = null;
			appDomain = null;
			events = null;
			frameBitmapDatas = null;
			
			flaData = null;
			
			super.destroy();
		}
	}
}