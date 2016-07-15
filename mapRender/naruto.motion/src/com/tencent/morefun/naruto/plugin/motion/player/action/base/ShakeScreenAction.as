package com.tencent.morefun.naruto.plugin.motion.player.action.base
{

	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.util.Assert;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class ShakeScreenAction extends BaseBattleAction
	{
		private var shakeHandler:ShakeMotionHandler = new ShakeMotionHandler();
		private static var ms_shakeHandler:ShakeMotionHandler;
		
		public function ShakeScreenAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_SHAKE, onPlayShake, true);
			
			for each(var ninja:Ninja in passiveNinjas)
			{
				EventCenter.addEventHandler(ninja, RenderEvent.PLAY_SHAKE, onPlayShake, true);
			}
			
			this.end();
		}
		
		override protected function onParentActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SHAKE, onPlayShake);
			
			for each(var ninja:Ninja in passiveNinjas)
			{
				EventCenter.removeEventHandler(ninja, RenderEvent.PLAY_SHAKE, onPlayShake);
			}
		}
		
		private function onPlayShake(arg:String):void
		{
			Assert(arg=="1"||arg=="2",I18n.lang("as_motion_1451031573_4351_0")+arg+I18n.lang("as_motion_1451031573_4351_1"));
			
			if(ms_shakeHandler)
			{
				ms_shakeHandler.stop();
			}
			
			
			ms_shakeHandler = shakeHandler;
			
			startShakeMotion(arg);
		}
		
		private function startShakeMotion(arg:String):void
		{
			
			shakeHandler.playShake(arg);
		}
		
		private function stopShakeMotion():void
		{
			shakeHandler.release();
		}
		
		override protected function onDestroy():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SHAKE, onPlayShake);
			
			if(ms_shakeHandler)
			{
				ms_shakeHandler.stop();
			}
			ms_shakeHandler = null;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			shakeHandler = null;
			ms_shakeHandler = null;
		}
	}
}

import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;

import flash.display.DisplayObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.utils.Dictionary;

class ShakeMotionHandler extends EventDispatcher
{
	private var shakeParamObj:ShakeParam;
	private var shakeTarget:DisplayObject;
	private var typeParamMap:Dictionary = new Dictionary();
	private var destroy:Boolean;
	private static var createIndex:int;
	private static var releaseIndex:int;
	private var index:int;
	
	public function ShakeMotionHandler()
	{
		shakeTarget = FightManagerCenter.sceneMgr.content;
		
		typeParamMap["1"] = new ShakeParam(20, 20, 6);
		typeParamMap["2"] = new ShakeParam(0, 0, 0, 20, 20, 8);
		
		createIndex += 1;
		index = createIndex;
		
//		MotionLogger.output("[ShakeScreenAction][ShakeMotionHandler]", "index", index);
	}
	
	public function stop():void
	{
		if(destroy == false)
		{
			shakeTarget.x = 0;
			shakeTarget.y = 0;
			TimerProvider.removeTimeTask(FightManagerCenter.frameRate, onEnterFrame);
			this.dispatchEvent(new Event(Event.COMPLETE));
		}
	}
	
	public function release():void
	{
		destroy = true;
		
		TimerProvider.removeTimeTask(FightManagerCenter.frameRate, onEnterFrame);
		shakeTarget.x = 0;
		shakeTarget.y = 0;
		shakeTarget = null;
		
		releaseIndex += 1;
		
//		MotionLogger.output("[ShakeScreenAction][release]", "index", index);
	}
	
	public function playShake(type:String):void
	{
//		MotionLogger.output("[ShakeScreenAction][playShake]", "index", index);
		shakeParamObj = typeParamMap[type].clone();
		
		TimerProvider.addTimeTask(FightManagerCenter.frameRate, onEnterFrame);
	}
	
	private function onEnterFrame():void
	{
//		MotionLogger.output("[ShakeScreenAction][onEnterFrame]", shakeParamObj.verRange, shakeParamObj.verFalloff, shakeParamObj.verFrequency, shakeTarget.y, shakeParamObj.horRange, shakeParamObj.horFalloff, shakeParamObj.horFrequency, shakeTarget.x);
		if(shakeParamObj.verRange != 0)
		{
			verShake();
		}
		
		if(shakeParamObj.horRange != 0)
		{
			horShake();
		}
		
		if(shakeParamObj.verRange == 0 && shakeParamObj.horRange == 0)
		{
			TimerProvider.removeTimeTask(FightManagerCenter.frameRate, onEnterFrame);
			this.dispatchEvent(new Event(Event.COMPLETE));
		}
	}
	
	private function verShake():void
	{
		if(Math.abs(shakeTarget.y) == shakeParamObj.verRange)
		{
			shakeParamObj.verFrequency *= -1;
			shakeParamObj.verRange -= shakeParamObj.verFalloff;
			shakeParamObj.verRange = Math.max(0, shakeParamObj.verRange);
			
			if(Math.abs(shakeParamObj.verFrequency) > shakeParamObj.verRange)
			{
				shakeParamObj.verFrequency = (shakeParamObj.verFrequency > 0)?shakeParamObj.verRange:-shakeParamObj.verRange;
			}
		}
		
		shakeTarget.y += shakeParamObj.verFrequency;
		if(Math.abs(shakeTarget.y) > shakeParamObj.verRange)
		{
			shakeTarget.y = (shakeParamObj.verRange > 0)?shakeParamObj.verRange:-shakeParamObj.verRange;
		}
	}
	
	private function horShake():void
	{
		if(Math.abs(shakeTarget.x) == shakeParamObj.horRange)
		{
			shakeParamObj.horFrequency *= -1;
			shakeParamObj.horRange -= shakeParamObj.horFalloff;
			shakeParamObj.horRange = Math.max(0, shakeParamObj.horRange);
			if(Math.abs(shakeParamObj.horFrequency) > shakeParamObj.horRange)
			{
				shakeParamObj.horFrequency = (shakeParamObj.horFrequency > 0)?shakeParamObj.horRange:-shakeParamObj.horRange;
			}
		}
		
		shakeTarget.x += shakeParamObj.horFrequency;
		if(Math.abs(shakeTarget.x) > shakeParamObj.horRange)
		{
			shakeTarget.x = (shakeParamObj.horRange > 0)?shakeParamObj.horRange:-shakeParamObj.horRange;
		}
	}
	


							
	public function autoSetNull():void
	{

		shakeParamObj = null;
		shakeTarget = null;
		typeParamMap = null;
	}
}


class ShakeParam
{
	public var horRange:Number;
	public var horFrequency:Number;
	public var horFalloff:Number;
	public var verRange:Number;
	public var verFrequency:Number;
	public var verFalloff:Number;
	
	public function ShakeParam(verRange:Number = 0, verFrequency:Number = 0, verFalloff:Number = 0,
							   horRange:Number = 0, horFrequency:Number = 0, horFalloff:Number = 0)
	{
		this.verRange = verRange;
		this.verFrequency = verFrequency;
		this.verFalloff = verFalloff;
		this.horRange = horRange;
		this.horFrequency = horFrequency;
		this.horFalloff = horFalloff;
	}
	
	public function clone():ShakeParam
	{
		var shakeParam:ShakeParam;
		
		shakeParam = new ShakeParam();
		shakeParam.horRange = this.horRange;
		shakeParam.horFrequency = this.horFrequency;
		shakeParam.horFalloff = this.horFalloff;
		
		shakeParam.verRange = this.verRange;
		shakeParam.verFrequency = this.verFrequency;
		shakeParam.verFalloff = this.verFalloff
		
		return shakeParam;
	}

							
	public function autoSetNull():void
	{

	}
}