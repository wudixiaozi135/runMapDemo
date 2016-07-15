package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;

	public class FlashScreenAction extends BaseBattleAction
	{
		private static const FLASH_EFFECT_1:int = 00000001;
		private static const FLASH_EFFECT_2:int = 00000002;
		private static const FLASH_EFFECT_3:int = 00000003;
		
		private var playingEffect:Array = [];
		public function FlashScreenAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_FLASH_SCREEN, onFlashScreenEvent, true);
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_FLASH_SCREEN, onFlashScreenEvent, true);
			EventCenter.addEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.EFFECT_END, onEffectEnd, true);
			
			this.end();
		}
		
		private function onFlashScreenEvent(type:String):void
		{
			var effectInfo:EffectInfo;
						
			switch(type)
			{
				case "1":
					effectInfo = EffectConfig.getEffectInfoById(FLASH_EFFECT_1);
					effectInfo = effectInfo.clone();
					playingEffect.push(effectInfo);
					FightManagerCenter.sceneMgr.addEffect(effectInfo);
					FightManagerCenter.sceneMgr.playEffect(effectInfo);
					break;
				case "2":
					effectInfo = EffectConfig.getEffectInfoById(FLASH_EFFECT_2);
					effectInfo = effectInfo.clone();
					playingEffect.push(effectInfo);
					FightManagerCenter.sceneMgr.addEffect(effectInfo);
					FightManagerCenter.sceneMgr.playEffect(effectInfo);
					break;
				case "3":
					effectInfo = EffectConfig.getEffectInfoById(FLASH_EFFECT_3);
					effectInfo = effectInfo.clone();
					playingEffect.push(effectInfo);
					FightManagerCenter.sceneMgr.addEffect(effectInfo);
					FightManagerCenter.sceneMgr.playEffect(effectInfo);
					break;
			}
		}
		
		private function onEffectEnd(args:Array):void
		{
			var effectInfo:EffectInfo;
			var effectInfoObj:Object;
			
			effectInfoObj = args[0];
			effectInfo = effectInfoObj.effectInfo;
			if(playingEffect.indexOf(effectInfo) != -1)
			{
				playingEffect.splice(playingEffect.indexOf(effectInfo), 1);
				FightManagerCenter.sceneMgr.removeEffect(effectInfo);
			}
		}
		
		override protected function onParentActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_FLASH_SCREEN, onFlashScreenEvent);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_FLASH_SCREEN, onFlashScreenEvent);
			EventCenter.removeEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.EFFECT_END, onEffectEnd);
		}
		
		override protected function onDestroy():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_FLASH_SCREEN, onFlashScreenEvent);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_FLASH_SCREEN, onFlashScreenEvent);
			EventCenter.removeEventHandler(FightManagerCenter.sceneMgr.effect, RenderEvent.EFFECT_END, onEffectEnd);
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			playingEffect = null;
		}
	}
}