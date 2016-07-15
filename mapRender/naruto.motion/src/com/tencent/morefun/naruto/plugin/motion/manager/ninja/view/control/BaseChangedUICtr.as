package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.control
{
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.AttributeChangedUI;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.BaseInfoChangedUI;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.KathaChangedUI;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.event.BaseChangedInfoEvent;
	
	import flash.display.DisplayObject;
	import flash.utils.setTimeout;

	public class BaseChangedUICtr
	{
		private var kathaChangedUI:KathaChangedUI;
		private var baseInfoChangedUI:BaseInfoChangedUI;
		private var attributeChangedUI:AttributeChangedUI;
		
		private var curRuningUI:DisplayObject;
		
		private var taskQueue:Array = [];
		
		public function BaseChangedUICtr(kathaChangedUI:KathaChangedUI, baseInfoChangedUI:BaseInfoChangedUI, attributeChangedUI:AttributeChangedUI)
		{
			this.kathaChangedUI = kathaChangedUI;
			this.baseInfoChangedUI = baseInfoChangedUI;
			this.attributeChangedUI = attributeChangedUI;
			
			attributeChangedUI.addEventListener(BaseChangedInfoEvent.START_BASE_CHANGED, onStartBaseChanged);//TODO:这里有两份一样的，应该是BUG
			baseInfoChangedUI.addEventListener(BaseChangedInfoEvent.START_BASE_CHANGED, onStartBaseChanged);
			attributeChangedUI.addEventListener(BaseChangedInfoEvent.START_BASE_CHANGED, onStartBaseChanged);
			
			attributeChangedUI.addEventListener(BaseChangedInfoEvent.END_BASE_CHANGED, onEndBaseChanged);
			baseInfoChangedUI.addEventListener(BaseChangedInfoEvent.END_BASE_CHANGED, onEndBaseChanged);
			attributeChangedUI.addEventListener(BaseChangedInfoEvent.END_BASE_CHANGED, onEndBaseChanged);
		}
		
		private function onStartBaseChanged(evt:BaseChangedInfoEvent):void
		{
			taskQueue.push(evt.currentTarget);//TODO:这个写法的问题是，这三个UI，会被重复加进来，然后第一个invoke执行完了，后面的都会白等n*500毫秒
			if(curRuningUI){return ;}
			
			startNext();
		}
		
		private function onEndBaseChanged(evt:BaseChangedInfoEvent):void
		{
			curRuningUI = null;
			setTimeout(startNext, 500);
		}
		
		private function startNext():void
		{
			if(taskQueue.length != 0)
			{
				curRuningUI = taskQueue.shift();
				curRuningUI["invoke"]();
			}
		}
		
		public function destroy():void
		{
			taskQueue = [];
			
			attributeChangedUI.removeEventListener(BaseChangedInfoEvent.START_BASE_CHANGED, onStartBaseChanged);
			baseInfoChangedUI.removeEventListener(BaseChangedInfoEvent.START_BASE_CHANGED, onStartBaseChanged);
			attributeChangedUI.removeEventListener(BaseChangedInfoEvent.START_BASE_CHANGED, onStartBaseChanged);
			
			attributeChangedUI.removeEventListener(BaseChangedInfoEvent.END_BASE_CHANGED, onEndBaseChanged);
			baseInfoChangedUI.removeEventListener(BaseChangedInfoEvent.END_BASE_CHANGED, onEndBaseChanged);
			attributeChangedUI.removeEventListener(BaseChangedInfoEvent.END_BASE_CHANGED, onEndBaseChanged);
		}
	}
}