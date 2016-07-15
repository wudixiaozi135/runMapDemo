package com.tencent.morefun.naruto.plugin.motion.player
{
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.notice.OpenFormationBoxNotice;
	import flash.events.IEventDispatcher;

	public class FormationPlayer extends BasePlayer
	{
		public function FormationPlayer(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		override public function playAction(actionInfo:Object, roleMgr:NinjaManager, buffMgr:BuffManager, skillMgr:SkillManager, sceneMgr:SceneManager):void
		{
			super.playAction(actionInfo, roleMgr, buffMgr, skillMgr, sceneMgr);
			
			new OpenFormationBoxNotice().send();
			
			this.playComplete();
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