package com.tencent.morefun.naruto.plugin.motion.player
{

	import com.tencent.morefun.naruto.plugin.motion.data.BubbleDialogueActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.BubbleDialogueData;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class DialoguePlayer extends BasePlayer
	{
		private var dialogueActionInfo:BubbleDialogueActionInfo;
		private var dialogueData:BubbleDialogueData;
		private var existTime:int;
		private var lastTime:int;
		private var totalTime:int;
		
		public function DialoguePlayer()
		{
			super();
		}
		
		override public function playAction(actionInfo:Object, roleMgr:NinjaManager, buffMgr:BuffManager, skillMgr:SkillManager, sceneMgr:SceneManager):void
		{
			var pos:Array;
			var ninja:Ninja;
			
			super.playAction(actionInfo, roleMgr, buffMgr, skillMgr, sceneMgr);
			
			dialogueActionInfo = actionInfo as BubbleDialogueActionInfo;
			
			for each(dialogueData in dialogueActionInfo.dialogueDataList)
			{
				existTime = dialogueActionInfo.dialogueDataList[0].existTime;
				lastTime = dialogueActionInfo.dialogueDataList[0].lastTime;
				pos = dialogueData.pos;
				for each(var thePos:int in pos)
				{
					ninja = roleMgr.getNinjaByPos(thePos);
					ninja.baseUI.updateDialogue(dialogueData.dialogue);
				}
			}
			
			if(existTime == 0 || lastTime == 0)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4402"));
			}
			
			totalTime = Math.max(existTime, lastTime);
			
			TimerProvider.addTimeTask(1000, onTimerEvent);
		}
		
		private function onTimerEvent():void
		{
			existTime -= 1;
			lastTime -= 1;
			totalTime -= 1;
			
			if(existTime == 0)
			{
				onDialogueComplete();
			}
			
			if(lastTime == 0)
			{
				onHideDialogue();
			}
			
			if(totalTime <= 0)
			{
				TimerProvider.removeTimeTask(1000, onTimerEvent);
			}
		}
		
		private function onDialogueComplete():void
		{
			this.playComplete();
		}
		
		private function onHideDialogue():void
		{
			var pos:Array;
			var ninja:Ninja;
			
			dialogueActionInfo = actionInfo as BubbleDialogueActionInfo;
			
			for each(dialogueData in dialogueActionInfo.dialogueDataList)
			{
				existTime = dialogueActionInfo.dialogueDataList[0].existTime;
				lastTime = dialogueActionInfo.dialogueDataList[0].lastTime;
				pos = dialogueData.pos;
				for each(var thePos:int in pos)
				{
					ninja = m_roleMgr.getNinjaByPos(thePos);
					if(ninja != null)
					{
						ninja.baseUI.clearDialogue();
					}
				}
			}
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			dialogueActionInfo = null;
			dialogueData = null;
		}
	}
}