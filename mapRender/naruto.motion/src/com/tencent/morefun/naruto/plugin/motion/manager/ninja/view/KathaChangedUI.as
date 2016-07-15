package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{

	import com.tencent.morefun.naruto.plugin.motion.data.KathaChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.event.BaseChangedInfoEvent;
	import com.tencent.morefun.naruto.plugin.ui.base.BitmapText;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	
	import flash.display.InteractiveObject;
	import flash.events.Event;

	public class KathaChangedUI extends BaseSceneNinjaUI
	{
		public function KathaChangedUI()
		{
			this.enableOffset = false;
		}
		
		private var baseChangedInfoList:Array;
		public function addList(baseChangedInfoList:Array):void
		{
			this.baseChangedInfoList = baseChangedInfoList;
			
			if(baseChangedInfoList.length > 0)
			{
				dispatchEvent(new BaseChangedInfoEvent(BaseChangedInfoEvent.START_BASE_CHANGED));
				
			}
		}
		
		public function invoke():void
		{
			TimerProvider.addTimeTask(100, startNext, baseChangedInfoList);
			startNext(baseChangedInfoList);
		}
		
		private function startNext(kathaChangedInfoList:Array):void
		{
			var kathaChangedInfo:KathaChangedInfo;
			
			if(kathaChangedInfoList.length == 0)
			{
				baseChangedInfoList = null;
				dispatchEvent(new BaseChangedInfoEvent(BaseChangedInfoEvent.END_BASE_CHANGED));
				TimerProvider.removeTimeTask(100, startNext, kathaChangedInfoList);
				return ;
			}
			
			kathaChangedInfo = kathaChangedInfoList.shift();
			start(kathaChangedInfo.value);
		}
		
		public function start(value:int):void
		{
			if(value == 0)
			{
				return ;
			}
			
			startShowMp(value);
		}
		
		private function startShowMp(value:int):void
		{
			var bitmapText:BitmapText;
			var defaultEffect:DefaultMpEffect;
			
			defaultEffect = new DefaultMpEffect;
			bitmapText = new BitmapText(new addBuleNumberPic(),29,29,1,true,"0123456789+-");//TODO:这里会产生很多位图消耗
			
			if(value > 0)
			{
				bitmapText.text = "+" + Math.abs(value).toString();
			}
			else
			{
				bitmapText.text = "-" + Math.abs(value).toString();
			}
			
			bitmapText.x = -bitmapText.width / 2 + (Math.random() * 25 - 25);
			bitmapText.y = -bitmapText.sourceBitmapHeight / 2 + (Math.random() * 25 - 25);
			defaultEffect.addEventListener(Event.COMPLETE, onEffectComplete);
			defaultEffect.effectContainer.numContainer.addChild(bitmapText);
			this.addChild(defaultEffect);
		}
		
		private function onEffectComplete(e:Event):void
		{
			var target:InteractiveObject;
			
			target = e.currentTarget as InteractiveObject;
			target.removeEventListener(Event.COMPLETE, onEffectComplete);
			this.removeChild(target);
		}
		
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

		}
	}
}