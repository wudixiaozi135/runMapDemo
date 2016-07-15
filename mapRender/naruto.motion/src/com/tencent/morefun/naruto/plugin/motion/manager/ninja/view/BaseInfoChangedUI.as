package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{

	import com.tencent.morefun.naruto.plugin.motion.data.BaseChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.KathaChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.event.BaseChangedInfoEvent;
	import com.tencent.morefun.naruto.plugin.ui.base.BitmapText;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	import com.tencent.morefun.naruto.plugin.ui.util.TweenManager;
	
	import flash.display.InteractiveObject;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.Dictionary;

	public class BaseInfoChangedUI extends BaseSceneNinjaUI
	{
		private static var POSITION_OFFSET:int = 10;
		
		private var bitmapTextMap:Dictionary = new Dictionary();
		public function BaseInfoChangedUI()
		{
			this.enableOffset = false;
		}
		
		private var changeInfoList:Array = [];
		public function addList(baseChangedInfoList:Array):void
		{
			var hpChangedInfo:HpChangedInfo;
			var kathaChangedInfo:KathaChangedInfo;
			
			if(baseChangedInfoList.length == 0)
			{
				return ;
			}
			
			for each(var baseChangedInfo:BaseChangedInfo in baseChangedInfoList)
			{
				if(baseChangedInfo.type != BaseChangedInfo.MP)
				{
					hpChangedInfo = new HpChangedInfo();
					hpChangedInfo.baseChangedInfo = baseChangedInfo;
					hpChangedInfo.critical = baseChangedInfo.critical;
					changeInfoList.push(hpChangedInfo);
				}
				else
				{
					kathaChangedInfo = new KathaChangedInfo();
					kathaChangedInfo.value = baseChangedInfo.value;
					changeInfoList.push(kathaChangedInfo);
				}
			}
			
			if(baseChangedInfoList.length > 0)
			{
				dispatchEvent(new BaseChangedInfoEvent(BaseChangedInfoEvent.START_BASE_CHANGED));
			}
		}
		
		public function invoke():void
		{
			TimerProvider.addTimeTask(100, startNext, changeInfoList);
			startNext(changeInfoList);
		}
		
		private function startNext(hpChangedInfoList:Array):void
		{
			var hpChangedInfo:HpChangedInfo;
			var kathaChangedInfo:KathaChangedInfo;
			
			if(hpChangedInfoList.length == 0)
			{
				changeInfoList.splice(0, changeInfoList.length);//TODO:多余
				dispatchEvent(new BaseChangedInfoEvent(BaseChangedInfoEvent.END_BASE_CHANGED));
				TimerProvider.removeTimeTask(100, startNext, hpChangedInfoList);
				return ;
			}
			
			if(hpChangedInfoList[0] is HpChangedInfo)
			{
				hpChangedInfo = hpChangedInfoList.shift();
				startHp(hpChangedInfo.baseChangedInfo.type, hpChangedInfo.baseChangedInfo.value, hpChangedInfo.critical);
			}
			else
			{
				kathaChangedInfo = hpChangedInfoList.shift();
				startMp(kathaChangedInfo.value);
			}
		}
		
		public function startMp(value:int):void
		{
			var bitmapText:BitmapText;
			var defaultEffect:DefaultMpEffect;
			
			defaultEffect = new DefaultMpEffect;
			bitmapText = new BitmapText(new addBuleNumberPic(),29,29,1,true,"0123456789+-");//TODO:same
			
			if(value > 0)
			{
				bitmapText.text = "+" + Math.abs(value).toString();
			}
			else
			{
				bitmapText.text = "-" + Math.abs(value).toString();
			}
			
			bitmapText.x = -bitmapText.width / 2 + (Math.random() * POSITION_OFFSET * 2 - POSITION_OFFSET);
			bitmapText.y = -bitmapText.sourceBitmapHeight / 2 + (Math.random() * POSITION_OFFSET * 2 - POSITION_OFFSET);
			defaultEffect.addEventListener(Event.COMPLETE, onEffectComplete);
			defaultEffect.effectContainer.numContainer.addChild(bitmapText);
			bitmapTextMap[defaultEffect] = [];
			bitmapTextMap[defaultEffect].push(bitmapText);
			this.addChild(defaultEffect);
		}
		
		public function startDamageFromOther(value:int):void
		{
			startShowHp(BaseChangedInfo.BLOOD, value);
		}
		
		public function startHp(type:int, value:int, critical:Boolean):void
		{
			if(value == 0)
			{
				return ;
			}
			
			if(type == BaseChangedInfo.DAMAGE_FROM_OTHER)
			{
//				type = BaseChangedInfo.BLOOD;
				TweenManager.delayedCall(1 + (3 * Math.random()), startDamageFromOther, [value]);
				return ;
			}
			
			if(type == BaseChangedInfo.ALLELOPATHY ||
				type == BaseChangedInfo.RESTRAIN_WATER_TO_FIRE ||
				type == BaseChangedInfo.RESTRAIN_FIRE_TO_WIND ||
				type == BaseChangedInfo.RESTRAIN_WIND_TO_THUNDER ||
				type == BaseChangedInfo.RESTRAIN_THUNDER_TO_EARTH ||
				type == BaseChangedInfo.RESTRAIN_EARTH_TO_WATER)
			{
				startAllelopathyHp(type, value, critical);
				return ;
			}
			
			//暴击类
			if(critical)
			{
				startShowCriticalHp(type, value);
				return ;
			}
			
			//常规类
			if(type == BaseChangedInfo.BLOOD)
			{
				startShowHp(type, value);
				return ;
			}
			
			//特殊类
			startShowSpecialHp(type, value);
		}
		
		private function startShowHp(type:int, value:int):void
		{
			var bitmapText:BitmapText;
			var defaultEffect:DefaultHpEffect;
			
			defaultEffect = new DefaultHpEffect();
			defaultEffect.gotoAndStop("type_" + type);
			if(value > 0)
			{
				if(value.toString().length <= 2)
				{
					bitmapText = new BitmapText(new cutNumberPic(),29,29,0,true,"0123456789");
				}
				else if(value.toString().length == 3)
				{
					bitmapText = new BitmapText(new cut3NumberPic(),29,29,0,true,"0123456789");
				}
				else if(value.toString().length >= 4)
				{
					bitmapText = new BitmapText(new cut4NumberPic(),29,29,0,true,"0123456789-");
				}
			}
			else
			{
				//加血
				bitmapText = new BitmapText(new addNumberPic(),29,29,1,true,"0123456789");
			}
			
			bitmapText.text = Math.abs(value).toString();
			
			bitmapText.x = -bitmapText.width / 2 + (Math.random() * POSITION_OFFSET * 2 - POSITION_OFFSET);
			bitmapText.y = -bitmapText.sourceBitmapHeight / 2 + (Math.random() * POSITION_OFFSET * 2 - POSITION_OFFSET);
			defaultEffect.addEventListener(Event.COMPLETE, onEffectComplete);
			defaultEffect.effectContainer.numContainer.addChild(bitmapText);
			bitmapTextMap[defaultEffect] = [];
			bitmapTextMap[defaultEffect].push(bitmapText);
			this.addChild(defaultEffect);
		}
		
		private function startShowSpecialHp(type:int, value:int):void
		{
			var bitmapText1:BitmapText;
			var bitmapText2:BitmapText;
			var typeFlag1:MovieClip;
			var typeFlag2:MovieClip;
			var effectContainerWidth:int;
			var specialEffect:DefaultHpEffect;
			
			specialEffect = new DefaultHpEffect();
			specialEffect.gotoAndStop("type_special");
			
			switch(type)
			{
				case BaseChangedInfo.IGNITE:
				case BaseChangedInfo.PRISON:
					bitmapText1 = new BitmapText(new cut4NumberPic(),29,29,0,true,"0123456789");
					bitmapText2 = new BitmapText(new cut4NumberPic(),29,29,0,true,"0123456789");
					break;
				case BaseChangedInfo.POISON:
					bitmapText1 = new BitmapText(new PurpleNumBtimap(),29,29,0,true,"0123456789");
					bitmapText2 = new BitmapText(new PurpleNumBtimap(),29,29,0,true,"0123456789");
					break;
				case BaseChangedInfo.STEAL_HP:
					bitmapText1 = new BitmapText(new addNumberPic(),29,29,1,true,"0123456789");
					bitmapText2 = new BitmapText(new addNumberPic(),29,29,1,true,"0123456789");
					break;
			}
			
			typeFlag1 = specialEffect.effectContainer.effectContainer1.type;
			typeFlag2 = specialEffect.effectContainer.effectContainer2.type;
			
			bitmapText1.text = Math.abs(value).toString();
			bitmapText2.text = Math.abs(value).toString();
			typeFlag1.gotoAndStop("type_" + type);
			typeFlag2.gotoAndStop("type_" + type);
			
			effectContainerWidth = bitmapText1.width + typeFlag1.width;
			bitmapText1.x = effectContainerWidth / 2 - bitmapText1.width;
			bitmapText1.y = -bitmapText1.sourceBitmapHeight/ 2;
			bitmapText2.x = effectContainerWidth / 2 - bitmapText2.width;
			bitmapText2.y = -bitmapText2.sourceBitmapHeight/ 2;
			
			typeFlag1.x = -effectContainerWidth / 2;
			typeFlag2.x = -effectContainerWidth / 2;
			typeFlag1.y = -(typeFlag1.height + 1) / 2;
			typeFlag2.y = -(typeFlag2.height + 1) / 2;
			
			specialEffect.effectContainer.effectContainer1.addChild(bitmapText1);
			specialEffect.effectContainer.effectContainer2.addChild(bitmapText2);
			specialEffect.addEventListener(Event.COMPLETE, onEffectComplete);
			bitmapTextMap[specialEffect] = [];
			bitmapTextMap[specialEffect].push(bitmapText1);
			bitmapTextMap[specialEffect].push(bitmapText2);
			this.addChild(specialEffect);
		}
		
		private function startAllelopathyHp(type:int, value:int, critical:Boolean):void
		{
			var bitmapText:BitmapText;
			var numContainerWidth:int;
			var allelopathyHpEffect:AllelopathyHpEffect;
			
			allelopathyHpEffect = new AllelopathyHpEffect();
			
			bitmapText = new BitmapText(new bj4NumberPic(),58,58,0,true,"0123456789");
			bitmapText.text = Math.abs(value).toString();
			if(critical)
			{
				allelopathyHpEffect.gotoAndStop("type_critical");
				allelopathyHpEffect.effectContainer.criticalBackground.gotoAndStop(3);
				allelopathyHpEffect.effectContainer.numContainer.criticalFlag.gotoAndStop(3);
				numContainerWidth = bitmapText.width + allelopathyHpEffect.effectContainer.numContainer.criticalFlag.width;
				allelopathyHpEffect.effectContainer.numContainer.criticalFlag.x = numContainerWidth / 2 - allelopathyHpEffect.effectContainer.numContainer.criticalFlag.width;
				allelopathyHpEffect.effectContainer.typeAnimation.type.gotoAndStop("type_" + type);
				allelopathyHpEffect.effectContainer.typeAnimation.type2.gotoAndStop("type_" + type);
			}
			else
			{
				allelopathyHpEffect.gotoAndStop("type_default");
				numContainerWidth = bitmapText.width;
				allelopathyHpEffect.effectContainer.typeAnimation.mc.type.gotoAndStop("type_" + type);
				allelopathyHpEffect.effectContainer.typeAnimation.mc.type2.gotoAndStop("type_" + type);
			}
			

			
			bitmapText.x = -numContainerWidth / 2 + (Math.random() * POSITION_OFFSET * 2 - POSITION_OFFSET);
			bitmapText.y = -bitmapText.sourceBitmapHeight / 2 + (Math.random() * POSITION_OFFSET * 2 - POSITION_OFFSET);
			allelopathyHpEffect.addEventListener(Event.COMPLETE, onEffectComplete);
			allelopathyHpEffect.effectContainer.numContainer.addChild(bitmapText);
			bitmapTextMap[allelopathyHpEffect] = [];
			bitmapTextMap[allelopathyHpEffect].push(bitmapText);
			this.addChild(allelopathyHpEffect);
		}
		
		private function startShowCriticalHp(type:int, value:int):void
		{
			var bitmapText:BitmapText;
			var numContainerWidth:int;
			var criticalHpEffect:CriticalHpEffect;
			var bitmapNumHeihgt:int;
			
			criticalHpEffect = new CriticalHpEffect();
			criticalHpEffect.gotoAndStop("type_" + type);
			
			if(value.toString().length <= 2)
			{
				criticalHpEffect.effectContainer.criticalBackground.gotoAndStop(1);
				criticalHpEffect.effectContainer.numContainer.criticalFlag.gotoAndStop(1);
				bitmapText = new BitmapText(new bjNumberPic(),40,40,0,true,"0123456789");
			}
			else if(value.toString().length == 3)
			{
				criticalHpEffect.effectContainer.criticalBackground.gotoAndStop(2);
				criticalHpEffect.effectContainer.numContainer.criticalFlag.gotoAndStop(2);
				bitmapText = new BitmapText(new bj3NumberPic(),40,40,0,true,"0123456789");
			}
			else if(value.toString().length >= 4)
			{
				criticalHpEffect.effectContainer.criticalBackground.gotoAndStop(3);
				criticalHpEffect.effectContainer.numContainer.criticalFlag.gotoAndStop(3);
				bitmapText = new BitmapText(new bj4NumberPic(),58,58,0,true,"0123456789");
			}
			
			bitmapText.text = value.toString();
			numContainerWidth = bitmapText.width + criticalHpEffect.effectContainer.numContainer.criticalFlag.width;
			
			bitmapText.x = -numContainerWidth / 2 + (Math.random() * POSITION_OFFSET * 2 - POSITION_OFFSET);
			bitmapText.y = -bitmapText.sourceBitmapHeight / 2 + (Math.random() * POSITION_OFFSET * 2 - POSITION_OFFSET);
			criticalHpEffect.effectContainer.numContainer.criticalFlag.x = bitmapText.x + bitmapText.width;
			criticalHpEffect.addEventListener(Event.COMPLETE, onEffectComplete);
			criticalHpEffect.effectContainer.numContainer.addChild(bitmapText);
			bitmapTextMap[criticalHpEffect] = [];
			bitmapTextMap[criticalHpEffect].push(bitmapText);
			this.addChild(criticalHpEffect);
		}
		
		private function onEffectComplete(e:Event):void
		{
			var textList:Array;
			var target:InteractiveObject;
			
			target = e.currentTarget as InteractiveObject;
			target.removeEventListener(Event.COMPLETE, onEffectComplete);
			
			textList = bitmapTextMap[target];
			for each(var bitmapText:BitmapText in textList)
			{
				bitmapText.destroy();
			}
			
			delete bitmapTextMap[target];
			
			this.removeChild(target);
		}
		
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			bitmapTextMap = null;
		}
	}
}

import com.tencent.morefun.naruto.plugin.motion.data.BaseChangedInfo;

class HpChangedInfo
{
	public var critical:Boolean;
	public var baseChangedInfo:BaseChangedInfo;
	
	public function HpChangedInfo()
	{
		
	}

							
	public function autoSetNull():void
	{

		baseChangedInfo = null;
	}
}