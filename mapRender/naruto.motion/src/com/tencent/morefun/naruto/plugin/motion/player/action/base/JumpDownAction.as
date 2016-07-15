package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.MoveType;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.event.SceneEvent;
	import flash.geom.Point;

	public class JumpDownAction extends BaseBattleAction
	{
		public function JumpDownAction()
		{
			super();
			
		}
		
		override protected function onParentActionEnd():void
		{
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onJumpDownComplete);
		}
		
		override protected function onBegin():void
		{
			var destPos:Point;
			var attackPos:Point;
						
			attackPos = FightManagerCenter.sceneMgr.getScenePosById(activityHero.pos);
			if(skillInfo.moveType == MoveType.JUMP)
			{
				destPos = attackPos.clone();
				destPos.y += skillInfo.attackDistance.y;
				activityNinja.resetShadowVerPos();
				activityNinja.lockShadowVerPos(destPos);
				FightManagerCenter.sceneMgr.addEventListener(SceneEvent.MOVE_COMPLETE, onJumpDownComplete);
				FightManagerCenter.sceneMgr.moveSceneItem(activityHero.pos, destPos);
				
				activityNinja.playRoleAction(NinjaMotionDef.run2_2, false);
			}
			else
			{
				this.end();
			}
		}

		private function onJumpDownComplete(evt:SceneEvent):void
		{
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onJumpDownComplete);
			activityNinja.playRoleAction(NinjaMotionDef.run2_3,false,onMotionEnd);
		}
		
		private function onMotionEnd():void
		{
			activityNinja.resetShadowVerPos();
			this.end();
		}
		
		override protected function onDestroy():void
		{
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onJumpDownComplete);
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