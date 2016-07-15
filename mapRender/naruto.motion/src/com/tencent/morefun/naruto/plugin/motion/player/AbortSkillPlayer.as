package com.tencent.morefun.naruto.plugin.motion.player
{
	import com.tencent.morefun.naruto.plugin.motion.data.AbortSkillActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.notice.CancelSkillNotice;

	public class AbortSkillPlayer extends BasePlayer
	{
		public function AbortSkillPlayer()
		{
			super();
		}
		
		override public function playAction(actionInfo:Object, roleMgr:NinjaManager, buffMgr:BuffManager, skillMgr:SkillManager, sceneMgr:SceneManager):void
		{
			var abortSkillInfo:AbortSkillActionInfo;
			super.playAction(actionInfo, roleMgr, buffMgr, skillMgr, sceneMgr);
			new CancelSkillNotice((actionInfo as AbortSkillActionInfo).abortPosList).send();
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