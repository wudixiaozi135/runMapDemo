package com.tencent.morefun.naruto.plugin.motion.manager.frame
{
	import com.greensock.TweenLite;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import com.tencent.morefun.naruto.plugin.motion.manager.frame.event.FrameEvent;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.system.ApplicationDomain;
	import flash.utils.Dictionary;
	import com.tencent.morefun.naruto.util.CollectionClearUtil
	import com.tencent.morefun.naruto.util.CollectionClearUtil

	public class FrameManager extends Sprite
	{
		private var frameUI:MovieClip;
		private var domainMap:Dictionary;
		private var showFrameMap:Dictionary = new Dictionary();
		
		public function FrameManager()
		{

		}
		
		public function set resMap(value:Dictionary):void
		{
			domainMap = value;
			
			init();
		}
		
		private function init():void
		{
			var index:int;
			var render:MmeAssetRender;
			var frame:MovieClip;
			var uiDomain:ApplicationDomain;
			
			uiDomain = domainMap["plugin.battle.frameUI"];
			frameUI = new (uiDomain.getDefinition("naruto.battle.FrameUI") as Class);
			addChild(frameUI);
			
			frame = getFrame("left", index);
			while(frame != null)
			{
				render = new MmeAssetRender();
				frame.renderer.addChild(render);
				index += 1;
				frame = getFrame("left", index);
			}
			
			index = 0;
			frame = getFrame("right", index);
			while(frame != null)
			{
				render = new MmeAssetRender();
				frame.renderer.addChild(render);
				index += 1;
				frame = getFrame("right", index);
			}
		}
		
		public function resetFrame(direction:String, frameIndex:int):void
		{
			var frame:MovieClip;
			
			frame = getFrame(direction, frameIndex);
			
			TweenLite.killTweensOf(frame);
			frame.x = 0;
			frame.renderer.unload();
		}
		
		public function showFrame(id:int, frameIndex:int, direction:String, time:int, continuace:int, faceRes:String):void
		{
			var frame:MovieClip;
			var frameWidth:int;
			var domian:ApplicationDomain;
			
			frame = getFrame(direction, frameIndex);
			if(showFrameMap[frame] == true)
			{
				TweenLite.killTweensOf(frame);
				frame.x = 0;
			}
			
			frame.renderer.unload();
			
			domian = domainMap[faceRes];
			if(domian != null)
			{
				frame.renderer.load(domian);
			}
			else
			{
				frame.renderer.load(domainMap["plugin.battle.faceDefault"]);
			}
			
			frameWidth = frame.width;
			if(direction == "left")
			{
				TweenLite.to(frame, time, {x:frameWidth, onComplete:onShowFrameComplete, onCompleteParam:[frame, continuace, time, id, direction, frameIndex]});
			}
			else
			{
				TweenLite.to(frame, time, {x:-frameWidth, onComplete:onShowFrameComplete, onCompleteParam:[frame, continuace, time, id, direction, frameIndex]});
			}
			
			showFrameMap[frame] = true;
		}
		
		private function onShowFrameComplete(param:Array):void
		{
			TweenLite.to(param[0], param[1],{onComplete:hideFrame,onCompleteParam:param});
		}
		
		private function hideFrame(param:Array):void
		{
			TweenLite.to(param[1], param[2], {x:0, onComplete:onHideFrameComplete, onCompleteParam:param});
		}
		
		private function onHideFrameComplete(param:Array):void
		{
			var event:FrameEvent;
			
			delete showFrameMap[param[1]];
			
			event = new FrameEvent(FrameEvent.SHOW_FRAME_COMPLETE);
			event.frameInfoId = param[3];
			event.direction = param[4];
			event.index = param[5];
			this.dispatchEvent(event);
		}
		
		public function reset():void
		{
			for each(var frame:MovieClip in showFrameMap)
			{
				frame.renderer.unload();
				TweenLite.killTweensOf(frame);
			}
			
			CollectionClearUtil.clearDictionary(showFrameMap);
		}
		
		public function destroy():void
		{
			reset();
			removeChildren();
		}
		
		private function getFrame(direction:String, index:int):MovieClip
		{
			return frameUI[direction + index];
		}
	
															
		public function autoSetNull():void
		{

			frameUI = null;
			domainMap = null;
			showFrameMap = null;
		}
	}
}