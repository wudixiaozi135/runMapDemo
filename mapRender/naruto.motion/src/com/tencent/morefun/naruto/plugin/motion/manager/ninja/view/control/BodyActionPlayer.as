package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.control
{

	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.data.MotionData;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.event.BodyActionEvent;
	
	import flash.events.EventDispatcher;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class BodyActionPlayer extends EventDispatcher
	{
		private var isLoop:Boolean; 
		
		private var isEnd:Boolean = true;
		private var beforeAction:String;
		private var curActionIndex:int;
		private var curAction:String;
		private var curActionList:Array = [];
		private var bodyRender:MmeAssetRender;
		
		private var skipRenderNum:int = -1;
		private var emptyFrameNum:int = -1;
		
		private var hasRender:Boolean;
		
		private var _resComplete:Boolean;
		
		public var pos:int;
		
		public function BodyActionPlayer(bodyRender:MmeAssetRender)
		{
			super();
			
			this.bodyRender = bodyRender;
			bodyRender.addEventListener(MmeAssetRenderEvent.PLAY_END, onRenderEndEvent);
		}
		
		public function preRender():void
		{
			hasRender = false;
		}
		
		public function render():void
		{
			var event:BodyActionEvent;
			
			hasRender = true;
			
			if(MotionData.debug)
			{
				logger.output("manualEnterFrame", "pos", pos, "skipRenderNum", skipRenderNum,"emptyFrameNum", emptyFrameNum);
			}
			
			skipRenderNum -= 1;
			emptyFrameNum -= 1;
			if(skipRenderNum >= 0)
			{
				return ;
			}
			
			if(emptyFrameNum > 0)
			{
				return ;
			}
			
			if(emptyFrameNum == 0)
			{
				event = new BodyActionEvent(BodyActionEvent.ACTION_END);
				dispatchEvent(event);
			}
			bodyRender.manualEnterFrame();
			
		}
		
		public function afterRender():void
		{
			hasRender = false;
		}
		
		private function resetActioInfo():void
		{
			curActionIndex = 0;
			curAction = curActionList[curActionIndex];
		}
		
		public function set resComplete(value:Boolean):void
		{
			_resComplete = value;
		}
		
		public function get resComplete():Boolean
		{
			return _resComplete;
		}
		
		public function setSkipRenderNum(value:int):void
		{
			skipRenderNum = value;
		}
		
		public function replayActions():void
		{
			playActions(curActionList, isLoop);
		}
		
		public function playEmptyAction(value:int):void
		{
			if(hasRender == false)
			{
				value ++;
			}
			emptyFrameNum = value;
		}
		
		public function changeActionList(value:Array, loop:Boolean):void
		{
			isLoop = loop;
			curActionList = value;
		}
		
		public function hasAction(action:String):Boolean
		{
			return bodyRender.hasActionName(action);
		}
		
		private var isStopToLastFrame:Boolean;
		public function stopActionToLastFrame():void
		{
			if(!_resComplete){isStopToLastFrame = true;}
			bodyRender.gotoAction(curAction, bodyRender.getTotalFrame(), true);
		}
		
		public function playActions(value:Array, loop:Boolean = false):void
		{
			if(hasRender == false)
			{
				skipRenderNum = 1;
				if(emptyFrameNum <= 0){emptyFrameNum = 0;}
			}
			
			isLoop = loop;
			
			curActionList = value;
			resetActioInfo();
			
			if(curActionList.length == 0)
			{
				return ;
			}
			
			if(_resComplete == true)
			{
				if(bodyRender.hasActionName(curAction))
				{
					if(curAction != beforeAction || isEnd == true)
					{
						if(!isStopToLastFrame)
						{
							bodyRender.gotoAction(this.curAction, 0, true);
						}
						else
						{
							bodyRender.gotoAction(this.curAction, bodyRender.getTotalFrame(), true);
						}
						bodyRender.setLoop(loop);
						beforeAction = curAction;
					}
				}
				else
				{
					throw new Error(I18n.lang("as_motion_1451031573_4247_0") + curAction + I18n.lang("as_motion_1451031573_4247_1"));
				}
			}
			else
			{
				bodyRender.gotoAction("loading", 0, true);
				bodyRender.setLoop(true);
			}
		}
		
		public function appendActions(value:Array, loop:Boolean = false):void
		{
			isLoop = loop;
			
			if(_resComplete == true)
			{
				curActionList = value;
				
				bodyRender.setLoop(loop);
				
				if(!isEnd)
				{
					curActionIndex = -1;
				}
				else
				{
					isEnd = false;
					curActionIndex = 0;
					curAction = curActionList[curActionIndex];
					bodyRender.gotoAction(this.curAction, 0, true);
					beforeAction = curAction;
				}
			}
			else
			{
				bodyRender.gotoAction("loading", 0, true);
				bodyRender.setLoop(true);
			}
		}
		
		public function getCurActionsFrameNum():int
		{
			var totalFramNum:int = 1;
			
			if(_resComplete == false)
			{
				return totalFramNum;
			}
			else
			{
				for each(var action:String in curActionList)
				{
					totalFramNum += bodyRender.getTotalFrameByActionName(action);
				}
				
				return totalFramNum - 1;
			}
		}
		
		public function getActionsFrameNum(actions:Array):int
		{
			var totalFramNum:int = 1;
			
			if(_resComplete == false)
			{
				return totalFramNum;
			}
			else
			{
				for each(var action:String in actions)
				{
					totalFramNum += bodyRender.getTotalFrameByActionName(action);
				}
				
				return totalFramNum - 1;
			}
		}
		
		public function destroy():void
		{
			bodyRender.removeEventListener(MmeAssetRenderEvent.PLAY_END, onRenderEndEvent);
		}
		
		private function onRenderEndEvent(evt:MmeAssetRenderEvent):void
		{
			var event:BodyActionEvent;
			
			evt.stopUpdate();
			
			curActionIndex += 1;
			if(curActionIndex == curActionList.length)
			{
				curActionIndex = 0;
				
				if(!isLoop)
				{
					isEnd = true;
					event = new BodyActionEvent(BodyActionEvent.ACTION_END);
					dispatchEvent(event);
					return ;
				}
			}
			
			
			curAction = curActionList[curActionIndex];
			if(_resComplete == true)
			{
				if(bodyRender.hasActionName(curAction))
				{
					isEnd = false;
					bodyRender.gotoAction(curAction, 0, true);
					beforeAction = curAction;
				}
				else
				{
					throw new Error(I18n.lang("as_motion_1451031573_4248_0") + curAction + I18n.lang("as_motion_1451031573_4248_1"));
				}
			}
			else
			{
				bodyRender.gotoAction("loading", 0, true);
			}
			
		}
	
															
		public function autoSetNull():void
		{

			beforeAction = null;
			curAction = null;
			curActionList = null;
			bodyRender = null;
		}
	}
}