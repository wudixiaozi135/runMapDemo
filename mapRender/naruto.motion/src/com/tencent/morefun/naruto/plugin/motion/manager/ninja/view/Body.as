package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{

	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent;
	import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
	import com.tencent.morefun.naruto.plugin.motion.data.NinjaBattleCfgInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.def.NinjaDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.control.BodyActionPlayer;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.event.BodyActionEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.res.data.MMEAssetsProvider;
	import com.tencent.morefun.naruto.plugin.motion.notice.PlaySoundNotice;
	import com.tencent.morefun.naruto.plugin.ui.util.TweenManager;
	import flash.display.Sprite;
	import flash.geom.ColorTransform;
	import flash.geom.Point;
	import flash.system.ApplicationDomain;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class Body extends Sprite
	{
		private static var buffAlphaList:Array;
		
		private var buffAlphaIndex:int;
		private var roleRenderer:MmeAssetRender;
		private var bodyActionPlayer:BodyActionPlayer;
		private var buffAlphaUpdateRes:BuffAlphaUpdateUI;
		
		private var _cfg:NinjaBattleCfgInfo;
		
		public function Body()
		{
			super();
			
			roleRenderer = new MmeAssetRender(MMEAssetsProvider.asstets);
			
			if(!buffAlphaList)
			{
				buffAlphaList = [];
				buffAlphaUpdateRes = new BuffAlphaUpdateUI();
				buffAlphaUpdateRes.gotoAndStop(0);
				while(buffAlphaUpdateRes.currentFrame != buffAlphaUpdateRes.totalFrames)
				{
					buffAlphaUpdateRes.nextFrame();
					buffAlphaList.push(buffAlphaUpdateRes.alphaInfo.alpha);
				}
			}
			
			bodyActionPlayer = new BodyActionPlayer(roleRenderer);
			
			addChild(roleRenderer);
			
			bodyActionPlayer.addEventListener(BodyActionEvent.ACTION_END, onActionEnd);
			roleRenderer.addEventListener(MmeAssetRenderEvent.FRAME_EVENT, onRendererEvent);
			roleRenderer.addEventListener(MmeAssetRenderEvent.FRAME_SOUND, onRendererEvent);
		}
		
		public function set pos(value:int):void
		{
			bodyActionPlayer.pos = value;
		}
		
		public function get hpSite():Point
		{
			var arr:Array = roleRenderer.getReferPointsFromAction("D_HPSite",0);
			var tmp:PointElementData =  arr[0] as PointElementData;
			
			if(tmp == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4241"));
			}
			
			return new Point(tmp.x,tmp.y);
		}
		
		public function getBuffSite(isHpPosition:int):Point
		{
			if(isHpPosition == 0)
			{
				return new Point(0,0);
			}
			else
			{
				return new Point(hpSite.x,hpSite.y);
			}
		}
		
		public function hitTestBody(x:int, y:int):Boolean
		{
			return roleRenderer.hitTestPoint(x, y, true);
		}
		
		override public function set visible(value:Boolean):void
		{
			super.visible = value;
		}
		
		override public function get visible():Boolean
		{
			return super.visible;
		}
		
		public function set cfg(value:NinjaBattleCfgInfo):void
		{
			_cfg = value;
		}
		
		public function get cfg():NinjaBattleCfgInfo
		{
			return _cfg;
		}
		
		public function setDomain(value:ApplicationDomain, url:String, resComplete:Boolean):void
		{
			bodyActionPlayer.resComplete = resComplete;
			roleRenderer.load(value, url);
			bodyActionPlayer.replayActions();
		}
		
		public function destroy():void
		{
			roleRenderer.removeEventListener(BodyActionEvent.ACTION_END, onActionEnd);
			roleRenderer.removeEventListener(MmeAssetRenderEvent.FRAME_EVENT, onRendererEvent);
			roleRenderer.removeEventListener(MmeAssetRenderEvent.FRAME_SOUND, onRendererEvent);
			removeChild(roleRenderer);
			roleRenderer.destroy();
			bodyActionPlayer.destroy();
			
			removeChildren();
		}
		
		public function set setSkipRenderNum(value:int):void
		{
			this.bodyActionPlayer.setSkipRenderNum(value);
		}
		
		public function skipAction(callBack:Function, param:Array = null, actions:Array = null, loop:Boolean = false):void
		{
			var callbackInfoList:Array;
			
			callbackInfoList = callBackList.concat();
			callBackList = [];
			callBackHandler(callbackInfoList);
			
			bodyActionPlayer.playEmptyAction(1);
			bodyActionPlayer.changeActionList(actions, loop);
			if(callBack != null && callBackList.indexOf(callBack) == -1)
			{
				callBackList.push({callback:callBack,param:param});
			}
		}
		
		public function playEmptyAction(value:int, callBack:Function, param:Array = null):void
		{
			var callbackInfoList:Array;
			
			callbackInfoList = callBackList.concat();
			callBackList = [];
			callBackHandler(callbackInfoList);
			
			bodyActionPlayer.playEmptyAction(value);
			if(callBack != null && callBackList.indexOf(callBack) == -1)
			{
				callBackList.push({callback:callBack,param:param});
			}
			
			if(value == 0)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4242"));
			}
		}
		
		public function playLoading():void
		{
			bodyActionPlayer.playActions([NinjaMotionDef.idle]);
		}
		
		public function showComboTransform():void
		{
			transform.colorTransform = getOffsetTransform(255, 255, 255);
		}
		
		private var glowParam:Object = {redOffset:0, greenOffset:0};
		public function glow():void
		{
			TweenManager.killTweensOf(glowParam);
			glowParam.redOffset = 0;
			glowParam.greenOffset = 0;
			
			TweenManager.addTweenTo(glowParam, 0.2, {redOffset:60, greenOffset:60, onUpdate:onGlowUpdate});
			TweenManager.addTweenTo(glowParam, 0.2, {redOffset:0, greenOffset:0, delay:0.2, onUpdate:onGlowUpdate});
			
			transform.colorTransform = getOffsetTransform();
		}
		
		private function onGlowUpdate():void
		{
			transform.colorTransform = getOffsetTransform(glowParam.redOffset, glowParam.greenOffset);
		}
		
		public function preRender():void
		{
			bodyActionPlayer.preRender();
		}
		
		public function render():void
		{
			updateColorOffset();
			
			bodyActionPlayer.render();
			EventCenter.executeHandler(this, RenderEvent.FRAME_RENDER);
		}
		
		public function afterRender():void
		{
			bodyActionPlayer.afterRender();
		}
		
		private function getOffsetTransform(r:int = 0, g:int = 0, b:int = 0):ColorTransform
		{
			var tsf:ColorTransform;
			
			tsf = new ColorTransform(1, 1, 1, 1);
			tsf.redOffset = r;
			tsf.greenOffset = g;
			tsf.blueOffset = b;
			return tsf;
		}
		
		public function stopActionToLastFrame():void
		{
			bodyActionPlayer.stopActionToLastFrame();
		}
		
		public function hasAction(action:String):Boolean
		{
			return bodyActionPlayer.hasAction(action);
		}
		
		public function playAction(action:String, loop:Boolean, callBack:Function = null, param:Array = null):void
		{
			playActions([action], loop, callBack, param);
		}
		
		private var callBackList:Array = [];
		public function playActions(actions:Array, loop:Boolean, callBack:Function = null, param:Array = null):void
		{
			var callbackInfoList:Array;
			
			if(resComplete)
			{
				callbackInfoList = callBackList.concat();
				callBackList = [];
				callBackHandler(callbackInfoList);
				
				if(_cfg.cfgInfo.type != NinjaDef.TYPE_CONTRACT_PET)
				{
					bodyActionPlayer.playActions(actions, loop);
				}
				else
				{
					bodyActionPlayer.appendActions(actions, loop);
				}
			}
			else
			{
				skipAction(callBack, param, actions, loop);
				return ;
			}
			
			if(callBack != null && callBackList.indexOf(callBack) == -1)
			{
				callBackList.push({callback:callBack,param:param});
			}
		}
		
		public function get resComplete():Boolean
		{
			return bodyActionPlayer.resComplete;
		}
		
		public function getRoleRefPoint(action:String = null, pointName:String = null, index:int = -1):Point
		{
			var point:Point;
			var mmePoints:Array;
			var mmePoint:PointElementData;
			
			if(index == -1)
			{
				index = roleRenderer.getCurrFrame();
			}
			
			if(action == null)
			{
				if(pointName == null)
				{
					mmePoints = roleRenderer.getReferPointsFromAction(roleRenderer.getCurrActionName(), index);
				}
				else
				{
					mmePoints = [roleRenderer.getReferPointFromActionByName(roleRenderer.getCurrActionName(), index, pointName)];
				}
			}
			else
			{
				if(pointName == null)
				{
					mmePoints = roleRenderer.getReferPointsFromAction(action, index);
				}
				else
				{
					mmePoints = [roleRenderer.getReferPointFromActionByName(action, index, pointName)];
				}
			}
			
			mmePoints = mmePoints || [];
			
			point = (mmePoints[0] == null)?null:new Point(mmePoints[0].x, mmePoints[0].y);
			return point;
		}
		
		public function getCurFrame():int
		{
			return roleRenderer.getCurrFrame();
		}
		
		public function getCurTotalFrameNum():int
		{
			return roleRenderer.getTotalFrame();
		}
		
		public function getActionFrameNum(action:String):int
		{
			return roleRenderer.getTotalFrameByActionName(action);
		}
		
		public function getActionsFrameNum(actions:Array):int
		{
			return bodyActionPlayer.getActionsFrameNum(actions);
		}
		
		public function getFrameEventIndex(action:String, event:String, time:int):Array
		{
			return roleRenderer.eventIndexOf(action, event, time);
		}
		
		public function clearEffectColorTransform():void
		{
			colorEffectInfo = null;
			this.transform.colorTransform = new ColorTransform();
			this.alpha = 1;
		}
		
		private var colorEffectInfo:EffectInfo;
		public function updateEffectColorTransform(effectInfo:EffectInfo):void
		{
			colorEffectInfo = effectInfo;
		}
		
		private var colorTransform:ColorTransform = new ColorTransform(1, 1, 1, 1, 0, 0, 0, 0);
		private function setColorEffect(effect:EffectInfo, alpha:Number = -1):void
		{
			var a:Number;
			var r:Number;
			var g:Number;
			var b:Number;
			
			if(alpha == -1)
			{
				a = effect.maxAlpha;
			}
			else
			{
				a = alpha;
			}
			r = ((effect.color & 0xff0000) >> 16);
			g = ((effect.color & 0x00ff00) >> 8);
			b = (effect.color & 0x0000ff);
			colorTransform.redMultiplier = 1-a;
			colorTransform.greenMultiplier = 1-a;
			colorTransform.blueMultiplier = 1-a;
			colorTransform.alphaMultiplier = 1-a;
			colorTransform.redOffset = r*a;
			colorTransform.greenOffset = g*a;
			colorTransform.blueOffset = b*a;
			colorTransform.alphaOffset = a;
			
			
			this.transform.colorTransform = colorTransform;
			this.alpha = effect.ninjaAlpha;
		}
		
		public function updateColorOffset():void
		{
			var destAlpha:Number;
			var alphaRange:Number;
			if(colorEffectInfo == null)
			{
				return ;
			}
			
			buffAlphaIndex ++;
			alphaRange = colorEffectInfo.maxAlpha - colorEffectInfo.minAlpha;
			destAlpha = colorEffectInfo.minAlpha + alphaRange * buffAlphaList[buffAlphaIndex];
			setColorEffect(colorEffectInfo, destAlpha);
			
			if(buffAlphaIndex == buffAlphaList.length - 1)
			{
				buffAlphaIndex = 0;
			}
		}
		
		private function callBackHandler(callbackInfoList:Array):void
		{
			for each(var callbackInfo:Object in callbackInfoList)
			{
				if(callbackInfo.param != null)
				{
					callbackInfo.callback(callbackInfo.param);
				}
				else
				{
					callbackInfo.callback();
				}
			}
		}
		
		private function onRendererEvent(evt:MmeAssetRenderEvent):void
		{
			evt.stopUpdate();
			switch(evt.type)
			{
				case MmeAssetRenderEvent.FRAME_EVENT:
					if(evt.param != null)
					{
						EventCenter.executeHandler(this, evt.frameEvent, evt.param);
					}
					else
					{
						if(evt.frameEvent == RenderEvent.PLAY_SHAKE)
						{
							throw new Error(I18n.lang("as_motion_1451031573_4243"));
						}
						
						EventCenter.executeHandler(this, evt.frameEvent);
					}
					break;
				case MmeAssetRenderEvent.FRAME_SOUND:
					new PlaySoundNotice(evt.sound, evt.volume).send();
					break;
			}
		}
		
		private function onActionEnd(evt:BodyActionEvent):void
		{
			var callbackInfoList:Array;
			
			callbackInfoList = callBackList.concat();//TODO: 这个类有几个这样的写法，有点奇怪．
			callBackList = [];
			
			EventCenter.executeHandler(this, RenderEvent.ROLE_END);
			callBackHandler(callbackInfoList);
		}
	
															
		public function autoSetNull():void
		{

			buffAlphaList = null;
			roleRenderer = null;
			bodyActionPlayer = null;
			buffAlphaUpdateRes = null;
			_cfg = null;
			glowParam = null;
			callBackList = null;
			colorEffectInfo = null;
			colorTransform = null;
		}
	}
}