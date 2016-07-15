package com.tencent.morefun.naruto.plugin.motion.player
{
	import com.tencent.morefun.naruto.plugin.motion.data.CommonActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.player.event.BasePlayerEvent;
	import flash.events.IEventDispatcher;

	public class EmptyPlayer extends BasePlayer
	{
		public function EmptyPlayer(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		override public function destroy():void
		{
			
		}
		
		override public function playAction(actionInfo:Object,
											roleMgr:NinjaManager,
											buffMgr:BuffManager,
											skillMgr:SkillManager,
											sceneMgr:SceneManager):void
		{
			var event:BasePlayerEvent;	
			
			event = new BasePlayerEvent(BasePlayerEvent.PLAY_COMPLETE);
			this.dispatchEvent(event);
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