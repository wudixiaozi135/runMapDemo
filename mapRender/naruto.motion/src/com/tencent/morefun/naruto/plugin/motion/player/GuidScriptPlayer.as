package com.tencent.morefun.naruto.plugin.motion.player
{
	
	import com.tencent.morefun.framework.base.CommandEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	
	import flash.events.IEventDispatcher;
	
	import battle.command.StartGuidScriptCommand;
	
	public class GuidScriptPlayer extends BasePlayer
	{
		public function GuidScriptPlayer(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		private var startGuidScriptCommand:StartGuidScriptCommand;
		override public function playAction(actionInfo:Object, roleMgr:NinjaManager, buffMgr:BuffManager, skillMgr:SkillManager, sceneMgr:SceneManager):void
		{
			super.playAction(actionInfo, roleMgr, buffMgr, skillMgr, sceneMgr);
			
			startGuidScriptCommand = new StartGuidScriptCommand(actionInfo.scriptId, actionInfo.delay);
			startGuidScriptCommand.addEventListener(CommandEvent.FINISH, onGuidScript);
			startGuidScriptCommand.call();
		}
		
		private function onGuidScript(evt:CommandEvent):void
		{
			startGuidScriptCommand.removeEventListener(CommandEvent.FINISH, onGuidScript);
			
			this.playComplete();
		}
	}
}


