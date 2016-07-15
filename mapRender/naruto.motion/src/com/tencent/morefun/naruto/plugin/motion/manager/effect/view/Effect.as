package com.tencent.morefun.naruto.plugin.motion.manager.effect.view
{

	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent;
	import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.res.data.MMEAssetsProvider;
	import com.tencent.morefun.naruto.plugin.motion.notice.PlaySoundNotice;
	import flash.display.Sprite;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.utils.Dictionary;
	import com.tencent.morefun.naruto.util.CollectionClearUtil
	import com.tencent.morefun.naruto.util.CollectionClearUtil
	import com.tencent.morefun.naruto.util.CollectionClearUtil;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class Effect extends Sprite
	{		
		private var centreLayer:Sprite = new Sprite();
		private var renderLayers:Array = [];
		private var freeRenderMap:Dictionary = new Dictionary();
		private var skipUpdatedMap:Dictionary = new Dictionary();
		private var effectInfoList:Array = [];
		private var playingEffectLayer:Array = [];
		public var lastPlayEffectInfo:EffectInfo;
		public var hasRender:Boolean;
		
		public function Effect()
		{
			super();
			
			addChild(centreLayer);
		}
		
		public function addEffect(effectInfo:EffectInfo, mirror:Boolean = true, scaleOffsetX:int = 0):Number
		{
			var id:Number;
			var index:int;
			var frontRender:MmeAssetRender;
			var backRender:MmeAssetRender;
			
			for each(var effectObj:Object in effectInfoList)
			{
				if(effectObj.effectInfo == effectInfo)
				{
					return 0;
				}
			}
			
			id = effectInfo.uid;
			index = getFreeIndex();
			if(index == -1)
			{
				index = effectInfoList.length;
				effectInfoList.push({id:id, effectInfo:effectInfo, mirror:mirror, scaleOffsetX:scaleOffsetX});
				frontRender = new MmeAssetRender(MMEAssetsProvider.asstets);
				frontRender.addEventListener(MmeAssetRenderEvent.PLAY_END, onRenderEvent);
				frontRender.addEventListener(MmeAssetRenderEvent.FRAME_EVENT, onRenderEvent);
				frontRender.addEventListener(MmeAssetRenderEvent.FRAME_SOUND, onRenderEvent);
				renderLayers.push(frontRender);
				backRender = new MmeAssetRender(MMEAssetsProvider.asstets);
				backRender.addEventListener(MmeAssetRenderEvent.PLAY_END, onRenderEvent);
				backRender.addEventListener(MmeAssetRenderEvent.FRAME_EVENT, onRenderEvent);
				backRender.addEventListener(MmeAssetRenderEvent.FRAME_SOUND, onRenderEvent);
				renderLayers.push(backRender);
				
				addChild(frontRender);
				addChild(backRender);
				
				updateIndex();
			}
			else
			{
				effectInfoList[index] = {id:id, effectInfo:effectInfo, mirror:mirror, scaleOffsetX:scaleOffsetX};
				
				frontRender = renderLayers[index * 2];
				backRender = renderLayers[index * 2 + 1];
			}
			
			effectInfoList[index].index = index;
			freeRenderMap[index] = false;
			
			frontRender.load(effectInfo.domain);
			backRender.load(effectInfo.domain);
			
			return id;
		}
		
		public function removeEffect(effectInfo:EffectInfo):void
		{
			var index:int;
			var effectInfoObj:Object;
			var frontRender:MmeAssetRender;
			var backRender:MmeAssetRender;
			var effectInfoIndex:int;
			
			
			effectInfoObj = getEffectInfoObj(effectInfo);
			
			if(effectInfoObj == null)
			{
				return ;
			}
			
			delete effectInfoList[effectInfoList.indexOf(effectInfoObj)];
			
			index = effectInfoObj.index;
			
			frontRender = renderLayers[index * 2];
			backRender = renderLayers[index * 2 + 1];
			
			frontRender.unload();
			backRender.unload();
			
			if(playingEffectLayer.indexOf(frontRender) != -1)
			{
				playingEffectLayer.splice(playingEffectLayer.indexOf(frontRender), 1);
			}
			
			if(playingEffectLayer.indexOf(backRender) != -1)
			{
				playingEffectLayer.splice(playingEffectLayer.indexOf(backRender), 1);
			}
			
			freeRenderMap[index] = true;
		}
		
		public function hide():void
		{
			for each(var render:MmeAssetRender in playingEffectLayer)
			{
				render.visible = false;
			}
		}
		
		public function show():void
		{
			for each(var render:MmeAssetRender in playingEffectLayer)
			{
				render.visible = true;
			}
		}
		
		public function stopEffect(effectInfo:EffectInfo):void
		{
			var index:int;
			var effectInfoObj:Object;
			var frontRender:MmeAssetRender;
			var backRender:MmeAssetRender;
			
			effectInfoObj = getEffectInfoObj(effectInfo);
			if(effectInfoObj != null)
			{
				index = effectInfoObj.index;
				
				frontRender = renderLayers[index * 2];
				backRender = renderLayers[index * 2 + 1];
				
				frontRender.unload();
				backRender.unload();
			}
		}
		
		public function playEffect(effectInfo:EffectInfo, x:int = 0, y:int = 0, loop:Boolean = false):void
		{
			var frontRender:MmeAssetRender;
			var backRender:MmeAssetRender;
			var effectInfoObj:Object;
			var index:int;
			var bound:Rectangle;
			
			
			effectInfoObj = getEffectInfoObj(effectInfo);
			if(effectInfoObj == null)
			{
				return ;
			}
			
			lastPlayEffectInfo = effectInfo;
			
			effectInfoObj.loop = loop;
			index = effectInfoObj.index;
			
			frontRender = renderLayers[index * 2];
			backRender = renderLayers[index * 2 + 1];
			
			if(effectInfo.frontAction != "")
			{
				frontRender.load(effectInfo.domain);
				try
				{
					frontRender.gotoAction(effectInfo.frontAction);
				}
				catch(e:Error)
				{
					throw new Error(I18n.lang("as_motion_1451031572_4122_0") + effectInfo.id + I18n.lang("as_motion_1451031572_4122_1") + effectInfo.frontAction);
				}
				frontRender.setLoop(loop);
				if(playingEffectLayer.indexOf(frontRender) == -1)
				{
					playingEffectLayer.push(frontRender);
				}
			}
			
			if(effectInfo.backAction != "")
			{
				backRender.load(effectInfo.domain);
				try
				{
					backRender.gotoAction(effectInfo.backAction);
				}
				catch(e:Error)
				{
					throw new Error(I18n.lang("as_motion_1451031573_4123_0") + effectInfo.id + I18n.lang("as_motion_1451031573_4123_1") + effectInfo.backAction);
				}
				backRender.setLoop(loop);
				if(playingEffectLayer.indexOf(backRender) == -1)
				{
					playingEffectLayer.push(backRender);
				}
			}
			
			frontRender.x = 0;
			backRender.x = 0;
			
			frontRender.scaleX = 1;
			backRender.scaleX = 1;
			
			
			if(effectInfoObj.mirror == true)
			{
				frontRender.scaleX = -1;
				backRender.scaleX = -1;
				frontRender.x = effectInfoObj.scaleOffsetX * 2;
				backRender.x = effectInfoObj.scaleOffsetX * 2;
				//				bound = this.getBounds(frontRender);
				//				frontRender.x = frontRender.x + frontRender.width;
				//				bound = this.getBounds(backRender);
				//				backRender.x = backRender.x + backRender.width;
			}
			
			frontRender.x += x;
			frontRender.y = y;
			backRender.x += x;
			backRender.y = y; 
			
			if(hasRender == false)
			{
				skipUpdatedMap[index] = true;
			}
		}
		
		public function getFrameNum(action:String, effectInfo:EffectInfo):int
		{
			var index:int;
			var effectInfoObj:Object;
			var rendererArr:Array;
			var frameIndex:int;
			
			effectInfoObj = getEffectInfoObj(effectInfo);
			
			rendererArr = getRendersByIndex(effectInfoObj.index);
			for each(var render:MmeAssetRender in rendererArr)
			{
				frameIndex = render.getTotalFrameByActionName(action);
				if(frameIndex != 0)
				{
					return frameIndex;
				}
			}
			
			return 0;
		}
		
		public function getEffectRefPoint(effectInfo:EffectInfo):Point
		{
			var index:int;
			var effectInfoObj:Object;
			var rendererArr:Array;
			var frameIndex:int;
			var point:Point;
			var mmePoint:PointElementData;
			
			point = new Point();
			
			effectInfoObj = getEffectInfoObj(effectInfo);
			
			rendererArr = getRendersByIndex(effectInfoObj.index);
			for each(var renderer:MmeAssetRender in rendererArr)
			{
				try
				{
					mmePoint = renderer.getCurrReferPoints()[0];
				}
				catch(e:Error)
				{
					
				}
				if(mmePoint != null)
				{
					point.x = mmePoint.x;
					point.y = mmePoint.y;
					
					return point;
				}
			}
			
			throw new Error(I18n.lang("as_motion_1451031573_4124"));		
		}
		
		public function getFrameEventIndex(effectInfo:EffectInfo, action:String, event:String, time:int = 1):Array
		{
			var index:int;
			var effectInfoObj:Object;
			var rendererArr:Array;
			var frameIndex:int;
			var frameIndexArr:Array = [];
			
			effectInfoObj = getEffectInfoObj(effectInfo);
			
			rendererArr = getRendersByIndex(effectInfoObj.index);
			for each(var render:MmeAssetRender in rendererArr)
			{
				frameIndexArr = frameIndexArr.concat(render.eventIndexOf(action, event, time));
				frameIndexArr = frameIndexArr.concat(render.eventIndexOf(action, event, time));
			}
			
			return frameIndexArr;
		}
		
		public function preRender():void
		{
			hasRender = false;
		}
		
		public function render():void
		{
			var frontRender:MmeAssetRender;
			var backRender:MmeAssetRender;
			
			hasRender = true;
			
			for(var i:int = 0;i < renderLayers.length;i += 2)
			{
				if(skipUpdatedMap[i / 2] == false)
				{	
					frontRender = renderLayers[i];
					backRender = renderLayers[i + 1];
					frontRender.manualEnterFrame();
					backRender.manualEnterFrame();
				}
				else
				{
					skipUpdatedMap[i / 2] = false;
				}
			}
		}
		
		public function afterRender():void
		{
			hasRender = false;
		}
		
		public function setCentreLayer(layer:Sprite):void
		{
			centreLayer.removeChildren();
			centreLayer.addChild(layer);
		}
		
		public function destroy():void
		{
			for each(var render:MmeAssetRender in renderLayers)
			{
				render.destroy();	
				render.removeEventListener(MmeAssetRenderEvent.PLAY_END, onRenderEvent);
				render.removeEventListener(MmeAssetRenderEvent.FRAME_EVENT, onRenderEvent);
			}
			
			lastPlayEffectInfo = null;
			
			renderLayers = [];
			effectInfoList = [];
			playingEffectLayer = [];
			
			this.removeChildren();
			centreLayer.removeChildren();
		}
		
		private function onRenderEvent(evt:MmeAssetRenderEvent):void
		{
			var render:MmeAssetRender;
			var effectObj:Object;
			var effectIndex:int;
			
			evt.stopUpdate();
			
			render = evt.currentTarget as MmeAssetRender;
			switch(evt.type)
			{
				case MmeAssetRenderEvent.PLAY_END:
					effectIndex = getEffectIndexByRender(render);
					effectObj = effectInfoList[effectIndex];
					if(effectObj && effectObj.loop == true)
					{
						return ;
					}
					
					if(playingEffectLayer.indexOf(render) != -1)
					{
						playingEffectLayer.splice(playingEffectLayer.indexOf(render), 1);
					}
					effectObj = getPlayEndEffect(render);
					render.unload();
					if(effectObj != null)
					{
						EventCenter.executeHandler(this, RenderEvent.EFFECT_END, [effectObj]);
					}
					break;
				case MmeAssetRenderEvent.FRAME_EVENT:
					if(evt.param != null)
					{
						EventCenter.executeHandler(this, evt.frameEvent, evt.param);
					}
					else
					{
						EventCenter.executeHandler(this, evt.frameEvent);
					}
					break;
				case MmeAssetRenderEvent.FRAME_SOUND:
					new PlaySoundNotice(evt.sound, evt.volume).send();
					break;
			}
		}
		
		private function getFreeIndex():int
		{
			for(var index:String in freeRenderMap)
			{
				if(freeRenderMap[index] == true)
				{
					return int(index);
				}
			}
			
			return -1;
		}
		
		private function getPlayEndEffect(render:MmeAssetRender):Object
		{
			var effectIndex:int;
			var renderers:Array;
			
			effectIndex = getEffectIndexByRender(render);
			renderers = getRendersByIndex(effectIndex);
			if(renderers.length == 0)
			{
				return null;
			}
			
			for each(var render:MmeAssetRender in renderers)
			{
				if(playingEffectLayer.indexOf(render) != -1)
				{
					return null;
				}
			}
			
			return effectInfoList[effectIndex];
		}
		
		private function getRendersByIndex(index:int):Array
		{
			var renders:Array;
			
			if(index > Math.ceil(renderLayers.length / 2))
			{
				return [];
			}
			
			renders = [];
			
			renders.push(renderLayers[index * 2]);
			renders.push(renderLayers[index * 2 + 1]);
			return renders;
		}
		
		private function getEffectIndexByRender(render:MmeAssetRender):int
		{
			var renderIndex:int;
			
			renderIndex = renderLayers.indexOf(render);
			return Math.floor(renderIndex / 2);
		}
		
		private function updateIndex():void
		{
			var midIndex:int;
			var frontIndex:int;
			var backIndex:int;
			
			midIndex = renderLayers.length / 2;
			this.swapChildren(centreLayer, this.getChildAt(midIndex));
			for(var i:int = 0;i < renderLayers.length;i += 2)
			{
				frontIndex = midIndex + i / 2 + 1;
				backIndex = midIndex - i / 2 - 1;
				this.swapChildren(renderLayers[i], this.getChildAt(frontIndex));
				this.swapChildren(renderLayers[i + 1], this.getChildAt(backIndex));
			}
			
			this.setChildIndex(centreLayer, renderLayers.length / 2);//TODO:这个应该没必要
		}
		
		public function getEffectInfoObj(effectInfo:EffectInfo):Object
		{
			for each(var effectInfoObj:Object in effectInfoList)
			{
				if(effectInfoObj.effectInfo == effectInfo)
				{
					return effectInfoObj;
				}
			}
			
			return null;
		}
	
															
		public function autoSetNull():void
		{

			centreLayer = null;
			renderLayers = null;
			freeRenderMap = null;
			skipUpdatedMap = null;
			effectInfoList = null;
			playingEffectLayer = null;
			lastPlayEffectInfo = null;
		}
	}
}