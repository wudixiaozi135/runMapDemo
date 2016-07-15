package com.tencent.morefun.naruto.plugin.motion.player
{
	import com.tencent.morefun.naruto.plugin.motion.data.EnervationActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import flash.events.IEventDispatcher;

	public class EnervationPlayer extends BasePlayer
	{
		private var motionList:Array = [];
		private var enervationActionInfo:EnervationActionInfo;
		
		public function EnervationPlayer(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		override public function playAction(actionInfo:Object, roleMgr:NinjaManager, buffMgr:BuffManager, skillMgr:SkillManager, sceneMgr:SceneManager):void
		{
			super.playAction(actionInfo, roleMgr, buffMgr, skillMgr, sceneMgr);
			
			enervationActionInfo = actionInfo as EnervationActionInfo;
			
			var battleNinja:Ninja;
			for each(var pos:int in enervationActionInfo.posList)
			{
				battleNinja = m_roleMgr.getNinjaByPos(pos);
				if(enervationActionInfo.type == EnervationActionInfo.TYPE_IN)
				{
					battleNinja.playRoleAction(NinjaMotionDef.inEnervation, false, onActionEnd, [battleNinja]);
					motionList.push(battleNinja);
				}
				else
				{
					battleNinja.playRoleAction(NinjaMotionDef.outEnervation, false, onActionEnd, [battleNinja]);
					motionList.push(battleNinja);
				}
			}
		}
		
		private function onActionEnd(param:Array):void
		{
			var battleNinja:Ninja;
			
			battleNinja = param[0];
			motionList.splice(motionList.indexOf(battleNinja), 1);
			if(enervationActionInfo.type == EnervationActionInfo.TYPE_IN)
			{
				battleNinja.data.enervation = true;
			}
			else
			{
				battleNinja.data.enervation = false;
			}
			battleNinja.idle();
			if(motionList.length == 0)
			{
				this.playComplete();
			}
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			motionList = null;
			enervationActionInfo = null;
		}
	}
}