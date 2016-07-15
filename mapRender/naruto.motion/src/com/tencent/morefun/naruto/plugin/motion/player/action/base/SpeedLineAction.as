package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.SceneInfo;

	public class SpeedLineAction extends BaseBattleAction
	{
		public function SpeedLineAction()
		{
			super();
		}
		
		private var playingEffectList:Array = [];
		override protected function onBegin():void
		{
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_SPEED_LINE, onSpeedLineEvent, true);
			EventCenter.addEventHandler(activityNinja, RenderEvent.EFFECT_END, onEffectEnd, true);
			
			this.end();
		}
		
		private function onSpeedLineEvent(speedLineIdStr:String):void
		{
			var speedId:int;
			var sceneInfo:SceneInfo;
			var speedLineIndex:int;
			var effectInfo:EffectInfo;
			
			sceneInfo = SceneConfig.getCurSceneInfo();
			speedLineIndex = int(speedLineIdStr);
			speedId = sceneInfo.speedLineEffectIds[speedLineIndex - 1];
			effectInfo = EffectConfig.getEffectInfoById(speedId);
			effectInfo = effectInfo.clone();
			playingEffectList.push(effectInfo);
			
			FightManagerCenter.sceneMgr.addEffect(effectInfo);
			FightManagerCenter.sceneMgr.playEffect(effectInfo);
		}
		
		private function onEffectEnd(args:Array):void
		{
			var effectInfo:EffectInfo;
			var effectInfoObj:Object;
			
			effectInfoObj = args[0];
			if(effectInfoObj == null)
			{
				return ;
			}
			
			effectInfo = effectInfoObj.effectInfo;
			
			if(playingEffectList.indexOf(effectInfo) != -1)
			{
				playingEffectList.splice(effectInfo, 1);
				FightManagerCenter.sceneMgr.removeEffect(effectInfo);
			}
		}
		
		override protected function onParentActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja.effect, RenderEvent.EFFECT_END, onEffectEnd);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SPEED_LINE, onSpeedLineEvent);
		}
		
		override protected function onDestroy():void
		{
			EventCenter.removeEventHandler(activityNinja.effect, RenderEvent.EFFECT_END, onEffectEnd);
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_SPEED_LINE, onSpeedLineEvent);
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			playingEffectList = null;
		}
	}
}