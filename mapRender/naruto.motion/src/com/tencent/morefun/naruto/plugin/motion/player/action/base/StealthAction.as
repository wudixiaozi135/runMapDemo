package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;

	public class StealthAction extends BaseBattleAction
	{
		public function StealthAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			EventCenter.addEventHandler(activityNinja, RenderEvent.PLAY_STEALTH, onPlayStealth);
			for each(var ninja:Ninja in passiveNinjas)
			{
				EventCenter.addEventHandler(ninja, RenderEvent.PLAY_STEALTH, onPlayStealth);
			}
			
			this.end();
		}
		
		override protected function onParentActionEnd():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_STEALTH, onPlayStealth);
			
			for each(var ninja:Ninja in passiveNinjas)
			{
				EventCenter.removeEventHandler(ninja, RenderEvent.PLAY_STEALTH, onPlayStealth);
			}
		}
		
		private function onPlayStealth(target:Object, args:String):void
		{
			var battleNinja:Ninja;
			var isStealth:Boolean;
			
			battleNinja = target as Ninja;
			isStealth = args == "1";
			
			battleNinja.stealth(isStealth);
		}
		
		override protected function onDestroy():void
		{
			EventCenter.removeEventHandler(activityNinja, RenderEvent.PLAY_STEALTH, onPlayStealth);
			
			for each(var ninja:Ninja in passiveNinjas)
			{
				EventCenter.removeEventHandler(ninja, RenderEvent.PLAY_STEALTH, onPlayStealth);
			}
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