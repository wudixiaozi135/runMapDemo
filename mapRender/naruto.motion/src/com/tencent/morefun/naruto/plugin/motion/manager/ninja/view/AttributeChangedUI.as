package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{
	
	import com.tencent.morefun.naruto.plugin.motion.data.BaseChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.event.BaseChangedInfoEvent;
	import com.tencent.morefun.naruto.plugin.ui.util.DisplayUtils;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	
	import flash.display.InteractiveObject;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.Dictionary;
	
	public class AttributeChangedUI extends BaseSceneNinjaUI
	{
		private var index:int;
		private var attributeChangedInfoList:Array = [];
		
		private var bitmapTextMap:Dictionary = new Dictionary();
		public function AttributeChangedUI()
		{
			this.enableOffset = false;
		}
		
		
		override public function get baseY():int
		{
			return y;
		}
		
		public function add(attributeChangedInfo:BaseChangedInfo):void
		{
			attributeChangedInfoList.push(attributeChangedInfo);
			dispatchEvent(new BaseChangedInfoEvent(BaseChangedInfoEvent.START_BASE_CHANGED));
		}
		
		public function invoke():void
		{
			TimerProvider.addTimeTask(300, startNext);
			startNext();
		}
		
		private function startNext():void
		{
			var attrbuteChangedInfo:BaseChangedInfo;
			
			if(attributeChangedInfoList.length == index)
			{
				dispatchEvent(new BaseChangedInfoEvent(BaseChangedInfoEvent.END_BASE_CHANGED));
				TimerProvider.removeTimeTask(300, startNext);
				return ;
			}
			
			index ++;
			attrbuteChangedInfo = attributeChangedInfoList[index - 1];
			start(attrbuteChangedInfo.type, attrbuteChangedInfo.value);
		}
		
		private function start(type:int, value:int):void
		{
			if(value > 0)
			{
				showPositiveChanged(type);
			}
			else if(value < 0)
			{
				showNegativeChanged(type);
			}
			else
			{
				showStateChanged(type);
			}
		}
		
		private function showPositiveChanged(type:int):void
		{
			var attributeEffect:AttributeChangedEffect;
			
			attributeEffect = new AttributeChangedEffect();
			attributeEffect.gotoAndStop("type_positive");
			attributeEffect.effectContainer.type.gotoAndStop("type_" + type);
			attributeEffect.addEventListener(Event.COMPLETE, onEffectComplete);
			addChild(attributeEffect);
		}
		
		private function showNegativeChanged(type:int):void
		{
			var attributeEffect:AttributeChangedEffect;
			
			attributeEffect = new AttributeChangedEffect();
			attributeEffect.gotoAndStop("type_negative");
			attributeEffect.effectContainer.type.gotoAndStop("type_" + type);
			attributeEffect.addEventListener(Event.COMPLETE, onEffectComplete);
			addChild(attributeEffect);
		}
		
		private function showStateChanged(type:int):void
		{
			var attributeEffect:AttributeChangedEffect;
			
			attributeEffect = new AttributeChangedEffect();
			attributeEffect.gotoAndStop("type_state");
			attributeEffect.effectContainer.type1.gotoAndStop("type_" + type);
			attributeEffect.effectContainer.type2.gotoAndStop("type_" + type);
			attributeEffect.addEventListener(Event.COMPLETE, onEffectComplete);
			addChild(attributeEffect);
		}
		
		private function onEffectComplete(evt:Event):void
		{
			var target:InteractiveObject;
			
			index --;
			attributeChangedInfoList.shift();
			
			target = evt.currentTarget as InteractiveObject;
			target.removeEventListener(Event.COMPLETE, onEffectComplete);
			DisplayUtils.stop(target as MovieClip);
			this.removeChild(target);
		}
		
		
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}
			
			attributeChangedInfoList = null;
			bitmapTextMap = null;
		}
	}
}