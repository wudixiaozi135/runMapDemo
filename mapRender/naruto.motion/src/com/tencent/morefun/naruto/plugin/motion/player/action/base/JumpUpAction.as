package com.tencent.morefun.naruto.plugin.motion.player.action.base
{

	import com.tencent.morefun.naruto.plugin.motion.data.ActivityHero;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.MoveType;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.event.SceneEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SubSkillInfo;
	import flash.geom.Point;
	import flash.geom.Rectangle;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class JumpUpAction extends BaseBattleAction
	{
		public function JumpUpAction()
		{
			super();
		}
		
		private var destPos:Point;
		override protected function onBegin():void
		{
			var passiveStandArea:Rectangle;
			
			if(skillInfo.moveType != MoveType.JUMP)
			{
				this.end();
				return ;
			}
			//受击方站位区域
			passiveStandArea = getPassiveStandArea(passiveHeros);
			//移动到攻击点
			moveToDest(passiveStandArea, activityNinja);
		}
		
		private function getPassiveStandArea(passiveHeros:Array):Rectangle
		{
			var top:int;
			var bottom:int;
			var left:int;
			var right:int;
			var passiveNinja:Ninja;
			var pos:Point;
			var rect:Rectangle;
			var roleRefPoint:Point;
			var inited:Boolean;
			
			for each(var passiveHero:PassiveHero in passiveHeros)
			{
				pos = FightManagerCenter.sceneMgr.getScenePosById(passiveHero.pos).clone();
				passiveNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
				roleRefPoint = passiveNinja.getRoleRefPoint(skillInfo.attackAction);
				if(roleRefPoint == null)
				{
					roleRefPoint = passiveNinja.getRoleRefPoint(NinjaMotionDef.defaultDefencePoint);
				}
				
				if(roleRefPoint == null)
				{
					throw new Error(I18n.lang("as_motion_1451031573_4345"));
					return null;
				}
				
				if(passiveNinja.isRealLeft)
				{
					pos.x += roleRefPoint.x;
				}
				else
				{
					pos.x -= roleRefPoint.x;
				}
				
				if(inited == false)
				{
					inited = true;
					left = pos.x;
					right = pos.x;
					top = pos.y;
					bottom = pos.y;
				}
				
				if(pos.x < left)
				{
					left = pos.x;
				}
				
				if(pos.x > right)
				{
					right = pos.x;
				}
				
				if(pos.y < top)
				{
					top = pos.y;
				}
				
				if(pos.y > bottom)
				{
					bottom = pos.y;
				}
				
			}
			
			rect = new Rectangle(left, top, right - left, bottom - top);
			return rect;
		}
		
		private function moveToDest(passiveStandArea:Rectangle, activityNinja:Ninja):void
		{
			var pos:Point;
			var roleRefPoint:Point;
			var shadowPos:Point;
			
			roleRefPoint = activityNinja.getRoleRefPoint(skillInfo.attackAction);
			if(roleRefPoint == null)
			{
				roleRefPoint = activityNinja.getRoleRefPoint(NinjaMotionDef.defaultAttackPoint);
			}
			
			if(roleRefPoint == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4346"));
				return ;
			}
			
			destPos = new Point();
			//攻击点 = 受击区域 + 技能释放距离 + 攻击方的参考点（默认身宽）
			if(activityNinja.isRealLeft)
			{
				destPos.x =  passiveStandArea.x - skillInfo.attackDistance.x - roleRefPoint.x;
			}
			else
			{
				destPos.x = passiveStandArea.x + skillInfo.attackDistance.x + roleRefPoint.x;
			}
			
			destPos.y = passiveStandArea.y + (passiveStandArea.height / 2) - skillInfo.attackDistance.y + 1;
						
			pos = FightManagerCenter.sceneMgr.getScenePosById(activityNinja.data.pos);
			if(destPos.x == pos.x && destPos.y == pos.y)
			{
				this.end();
				return ;
			}
			
			shadowPos = destPos.clone();
			shadowPos.y = destPos.y + skillInfo.attackDistance.y;
			
			activityNinja.resetShadowVerPos();
			
			//播放移动前得动画
			activityNinja.playRoleAction(NinjaMotionDef.run2_1, false, onPreJumpUpComplete);
			activityNinja.calculateVerPos(shadowPos);
			checkAndSetMirror(activityNinja, destPos);
		}
		
		private function onPreJumpUpComplete():void
		{
			//控制位移，4帧后移动到目标点
			FightManagerCenter.sceneMgr.moveSceneItem(activityHero.pos, destPos, (FightManagerCenter.frameRate * 4 / 1000));
			FightManagerCenter.sceneMgr.addEventListener(SceneEvent.MOVE_COMPLETE, onSceneMoveComplete);
			
			
			activityNinja.playRoleAction(NinjaMotionDef.run2_2, false);
		}
		
		private function onSceneMoveComplete(evt:SceneEvent):void
		{
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onSceneMoveComplete);
			
			//播放移动后的动画
			activityNinja.playRoleAction(NinjaMotionDef.run2_3, false, onJumpUpComplete);
		}
		
		private function onJumpUpComplete():void
		{
			this.end();
		}
		
		protected function checkAndSetMirror(ninja:Ninja, destPos:Point):void
		{
			var ninjaPos:Point;
			var mirror:Boolean;
			
			ninjaPos = FightManagerCenter.sceneMgr.getScenePosById(ninja.data.pos);
			
			if(destPos.x < ninjaPos.x && ninja.isRealLeft)
			{
				mirror = true;
			}
			
			if(destPos.x > ninjaPos.x && ninja.isRealLeft)
			{
				mirror = false;
			}
			
			if(destPos.x > ninjaPos.x && ninja.isRealLeft == false)
			{
				mirror = true;
			}
			
			if(destPos.x < ninjaPos.x && ninja.isRealLeft == false)
			{
				mirror = false;
			}
						
			ninja.mirror(mirror);
		}
		
		override protected function onParentActionEnd():void
		{
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onSceneMoveComplete);
		}
		
		override protected function onDestroy():void
		{
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onSceneMoveComplete);
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			destPos = null;
		}
	}
}