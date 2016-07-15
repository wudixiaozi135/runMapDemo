package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{

	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent;
	import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.res.data.MMEAssetsProvider;
	import com.tencent.morefun.naruto.plugin.ui.util.TweenManager;
	import flash.display.Sprite;
	import flash.geom.ColorTransform;
	import flash.geom.Point;
	import flash.system.ApplicationDomain;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class Role extends Sprite
	{
		private var roleRenderer:MmeAssetRender;
		private var curRoleAction:String;
		private var curLoop:Boolean;
		private var actionUpdated:Boolean;		
		private var colorEffect:EffectInfo;
		private var resComplete:Boolean;
		private var _skipRender:int;
		private var _delayRender:int;
		
		public function Role()
		{
			super();
			
			roleRenderer = new MmeAssetRender(MMEAssetsProvider.asstets);
			
			addChild(roleRenderer);
			
			roleRenderer.addEventListener(MmeAssetRenderEvent.PLAY_END, onRendererEvent);
			roleRenderer.addEventListener(MmeAssetRenderEvent.FRAME_EVENT, onRendererEvent);
		}
		
		public function get hpSite():Point
		{
			var arr:Array = roleRenderer.getReferPointsFromAction("D_HPSite",0);
			var tmp:PointElementData =  arr[0] as PointElementData;
			
			return new Point(tmp.x,tmp.y);
		}
		
		public function setDomain(value:ApplicationDomain, url:String, resComplete:Boolean):void
		{
			this.resComplete = resComplete;
			
			roleRenderer.load(value, url);
			if(curRoleAction)
			{
				if(roleRenderer.gotoAction(curRoleAction, 0, true) == false)
				{
					throw new Error("action " + curRoleAction + " attackResult can't found");
				}
				roleRenderer.setLoop(curLoop);
			}
		}
		
		public function destroy():void
		{
			roleRenderer.removeEventListener(MmeAssetRenderEvent.PLAY_END, onRendererEvent);
			roleRenderer.removeEventListener(MmeAssetRenderEvent.FRAME_EVENT, onRendererEvent);
			removeChild(roleRenderer);
			roleRenderer.destroy();
		}
		
		public function resetRenderSkip():void
		{
			actionUpdated = false;
		}
		
		public function set skipRender(value:int):void
		{
			_skipRender = value;
		}
		
		public function get skipRender():int
		{
			return _skipRender;
		}
		
		public function playEmptyAction(delayRender:int, callBack:Function, param:Array = null):void
		{
			callBackHandler();
			
			_delayRender = delayRender;
			
			if(callBack != null && callBackList.indexOf(callBack) == -1)
			{
				callBackList.push({callback:callBack,param:param});
			}
			
			if(_delayRender == 0)
			{
				EventCenter.executeHandler(this, RenderEvent.ROLE_END);
				callBackHandler();
			}
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
		
		public function render():void
		{
			if(_delayRender == 1)
			{
				EventCenter.executeHandler(this, RenderEvent.ROLE_END);
				callBackHandler();
			}
			
			_delayRender = Math.max(0, _delayRender - 1);
			
			if(_skipRender > 0)
			{
				_skipRender -= 1;
				return ;
			}
			
			if(actionUpdated)
			{
				actionUpdated = false;
				return ;
			}
			
			roleRenderer.manualEnterFrame();
			
			EventCenter.executeHandler(this, RenderEvent.FRAME_RENDER);
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
		
		private var callBackList:Array = [];
		public function playAction(action:String, loop:Boolean, callBack:Function = null, param:Array = null):void
		{
			curLoop = loop;
			curRoleAction = action;
			_delayRender = 0;
			_skipRender = 0;
			
			if(resComplete)
			{
				callBackHandler();
				
				
				actionUpdated = true;
				
				if(roleRenderer.gotoAction(action, 0, true) == false)
				{
					throw new Error(action + I18n.lang("as_motion_1451031573_4251"));
				}
				roleRenderer.setLoop(loop);
				
			}
			else
			{
//				callBackHandler();
//				
//				if(callBack != null && callBackList.indexOf(callBack) == -1)
//				{
//					callBackList.push({callback:callBack,param:param});
//				}
//				
//				EventCenter.executeHandler(this, RenderEvent.ROLE_END);
//				callBackHandler();
				
				playEmptyAction(1, callBack, param);
				return ;
			}
			
			if(callBack != null && callBackList.indexOf(callBack) == -1)
			{
				callBackList.push({callback:callBack,param:param});
			}
		}
		
		public function clearActionCallBack():void
		{
			callBackList = [];
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
					mmePoints = roleRenderer.getReferPointsFromAction(curRoleAction, index);
				}
				else
				{
					mmePoints = [roleRenderer.getReferPointFromActionByName(curRoleAction, index, pointName)];
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
		
		public function isColorEffect(effectInfo:EffectInfo):Boolean
		{
			return colorEffect == effectInfo;
		}
		
		public function hasAction(name:String):Boolean
		{
			return resComplete;
		}
		
		public function getCurAction():String
		{
			return roleRenderer.getCurrActionName();
		}
		
		public function getCurFrame():int
		{
			return roleRenderer.getCurrFrame();
		}
		
		public function getCurTotalFrameNum():int
		{
			return roleRenderer.getTotalFrame();
		}
		
		public function getFrameNum(action:String):int
		{
			return roleRenderer.getTotalFrameByActionName(action);
		}
		
		public function getFrameEventIndex(action:String, event:String, time:int):Array
		{
			return roleRenderer.eventIndexOf(action, event, time);
		}
		
		public function checkColorEffect(buffInfoList:Array, effectInfoList:Array):void
		{
			var effectInfo:EffectInfo;
			
			resetColorEffect();
			
			for each(effectInfo in buffInfoList)
			{
				if(effectInfo.type == EffectDef.TYPE_FILTERS 
					|| effectInfo.type == EffectDef.TYPE_MOVIE_CLIP_N_FILTERS)
				{
					colorEffect = effectInfo;
					setColorEffect(colorEffect);
					return ;
				}
			}
			
			for each(effectInfo in effectInfoList)
			{
				if(effectInfo.type == EffectDef.TYPE_FILTERS 
					|| effectInfo.type == EffectDef.TYPE_MOVIE_CLIP_N_FILTERS)
				{
					colorEffect = effectInfo;
					setColorEffect(colorEffect);
					return ;
				}
			}
		}
		
		private var colorTransform:ColorTransform = new ColorTransform(1, 1, 1, 1, 0, 0, 0, 0);
		private function setColorEffect(effect:EffectInfo):void
		{
			var a:Number;
			var r:Number;
			var g:Number;
			var b:Number;
			
			a = effect.maxAlpha;
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
			
			colorEffect = effect;
			
			this.transform.colorTransform = colorTransform;
			this.alpha = effect.ninjaAlpha;
		}
		
		public function resetColorEffect():void
		{
			colorEffect = null;
			
			this.transform.colorTransform = new ColorTransform();
			this.alpha = 1;
		}
		
		private function callBackHandler():void
		{
			var callbackInfoList:Array;
			
			callbackInfoList = callBackList.concat();
			callBackList = [];
			
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
				case MmeAssetRenderEvent.PLAY_END:
					EventCenter.executeHandler(this, RenderEvent.ROLE_END);
					callBackHandler();
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
					//					MotionLogger.output("[Battle]", "[Role][onRendererEvent]>>>>","pos", pos, "event", evt.frameEvent, "action", curRoleAction);
					break;
			}
		}
	
															
		public function autoSetNull():void
		{

			roleRenderer = null;
			curRoleAction = null;
			colorEffect = null;
			glowParam = null;
			callBackList = null;
			colorTransform = null;
		}
	}
}