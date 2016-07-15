package com.tencent.morefun.naruto.plugin.motion.player.action.base
{

	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.MoveType;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.event.SceneEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.notice.PromptSkillClearNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.PromptSkillStartNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.UseKathaSkillNotice;
	import flash.geom.Point;
	import flash.geom.Rectangle;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class MoveToCenterAction extends BaseBattleAction
	{
		private var moveAction1:String;
		private var moveAction2:String;
		private var moveAction3:String;
		
		public function MoveToCenterAction()
		{
			super();
		}
		
		private var destPos:Point;
		private var passiveStandArea:Rectangle;
		/**
		 * 
		 * @param args 
		 * args[0] ActivityHero 攻击者数据 args[1] attackCount 第几次攻击
		 */
		override protected function onBegin():void
		{
			var motionNinjaPos:Array = [];
			var useSkillInfo:SkillInfo;
			
			if(skillInfo.moveType != MoveType.WALK_TO_CENTER)
			{
				this.end();
				return ;
			}
			
			motionNinjaPos.push(activityNinja.data.pos);
			motionNinjaPos = motionNinjaPos.concat(caootPosList);
			passiveStandArea = getPassiveStandArea(passiveHeros);
			for each(var pos:int in motionNinjaPos)
			{
				if(SceneConfig.getPosIsServerLeft(pos))
				{
					destPos = SceneConfig.getPositionInfo(4).clone();
					destPos.x -= skillInfo.attackDistance.x;
					destPos.y -= skillInfo.attackDistance.y;
//					destPos.x -= 25;
				}
				else
				{
					destPos = SceneConfig.getPositionInfo(104).clone();
					destPos.x += skillInfo.attackDistance.x;
					destPos.y += skillInfo.attackDistance.y;
//					destPos.x += 25;
				}
				moveToDest(destPos, pos);
			}
		}
		
		private function getPassiveStandArea(passiveHeros:Array):Rectangle
		{
			var top:int;
			var bottom:int;
			var left:int;
			var right:int;
			var rect:Rectangle;
			var position:Point;
			var inited:Boolean;
			
			for each(var passiveNinja:Ninja in this.passiveNinjas)
			{
				position = passiveNinja.getRoleRefPoint(NinjaMotionDef.defaultDefencePoint).clone();
				if(position == null)
				{
					throw new Error(I18n.lang("as_motion_1451031573_4347"));
					return null;
				}
				position.x += passiveNinja.data.x;
				position.y += passiveNinja.data.y;
				
				if(inited == false)
				{
					inited = true;
					left = position.x;
					right = position.x;
					top = position.y;
					bottom = position.y;
				}
				
				if(position.x < left)
				{
					left = position.x;
				}
				
				if(position.x > right)
				{
					right = position.x;
				}
				
				if(position.y < top)
				{
					top = position.y;
				}
				
				if(position.y > bottom)
				{
					bottom = position.y;
				}
				
			}
			
			rect = new Rectangle(left, top, right - left, bottom - top);
			return rect;
		}
		
		private function moveToDest(destPos:Point, ninjaPos:int):void
		{
			var ninja:Ninja;
			var pos:Point;
			var useSkillInfo:SkillInfo;
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(ninjaPos);
			pos = FightManagerCenter.sceneMgr.getScenePosById(ninja.data.pos);
			
			if(destPos.x == pos.x && destPos.y == pos.y)
			{
				checkAndSetMirror(ninja, destPos);
				notifySkillStart(ninja, skillInfo);
				
				this.end();
				return ;
			}
			
			if((destPos.x > pos.x && ninja.isRealLeft) || (destPos.x <= pos.x && ninja.isRealLeft == false))
			{
				moveAction1 = skillInfo.moveActionList[0];
				moveAction2 = skillInfo.moveActionList[1];
				moveAction3 = skillInfo.moveActionList[2];
			}
			else
			{
				moveAction1 = NinjaMotionDef.run2_1;
				moveAction2 = NinjaMotionDef.run2_2;
				moveAction3 = NinjaMotionDef.run2_3;
			}
			
			
			//播放移动前得动画
			ninja.playRoleAction(moveAction1, false, onPreRunComplete, [ninja]);
		}
		
		private var moveList:Array = [];
		private function onPreRunComplete(args:Array):void
		{
			var ninja:Ninja;
			
			ninja = args[0];
			ninja.playRoleAction(moveAction2, false);
			moveList.push(ninja.data.pos);
			
			//控制位移，4帧后移动到目标点
			FightManagerCenter.delayCallBack(onSceneMoveComplete, 4, [ninja.data.pos]);
			FightManagerCenter.sceneMgr.moveSceneItem(ninja.data.pos, destPos, (FightManagerCenter.frameRate * 4 / 1000));
		}
		
		private function onSceneMoveComplete(params:Array):void
		{
			var ninja:Ninja;
			var pos:int;
			
			pos = params[0];
			if(moveList.indexOf(pos) == -1)
			{
				return ;
			}
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(pos);
			
			//播放移动后的动画
			ninja.playRoleAction(moveAction3, false, onRunComplete, [ninja]);
		}
		
		private function onRunComplete(args:Array):void
		{
			var ninja:Ninja;
			var destPoint:Point;
			var pos:int;
			
			var useSkillInfo:SkillInfo;
			
			ninja = args[0];
			moveList.splice(moveList.indexOf(ninja.data.pos), 1);
			if(ninja.isRealLeft)
			{
				destPoint = new Point(passiveStandArea.x, passiveStandArea.y);
			}
			else
			{
				destPoint = new Point(passiveStandArea.x + passiveStandArea.width, passiveStandArea.y);
			}
			
			if(destPoint.x == 0 && destPoint.y == 0)
			{
				destPoint.x = ninja.x;
				destPoint.y = ninja.y
			}
			
			if(ninja.data.pos == activityHero.pos)
			{
				notifySkillStart(ninja, skillInfo);
				//				checkAndSetMirror(ninja, destPoint);
			}
			
			ninja.idle();
			
			if(moveList.length == 0)
			{
				FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onSceneMoveComplete);
				
				this.end();
			}
			
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
		
		public function getDestPoint(ninjaPos:int):Point
		{
			var pos:Point;
			var roleRefPoint:Point;
			var ninja:Ninja;
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(ninjaPos);
			passiveStandArea = getPassiveStandArea(passiveHeros);
			roleRefPoint = ninja.getRoleRefPoint(NinjaMotionDef.defaultAttackPoint);
			
			if(roleRefPoint == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4348"));
				return null;
			}
			
			destPos = new Point();
			//攻击点 = 受击区域 + 技能释放距离 + 攻击方的参考点（默认身宽）
			if(ninja.isRealLeft)
			{
				destPos.x =  passiveStandArea.x - skillInfo.attackDistance.x - roleRefPoint.x;
			}
			else
			{
				destPos.x = passiveStandArea.x + passiveStandArea.width + skillInfo.attackDistance.x + roleRefPoint.x;
			}
			
			destPos.y = passiveStandArea.y + (passiveStandArea.height / 2) + skillInfo.attackDistance.y + 1;
			
			
			return destPos;
		}
		
		private function notifySkillStart(ninja:Ninja, skillInfo:SkillInfo):void
		{
			var skillInfo:SkillInfo;
			
			if(comboIndex == 0)
			{
				checkAndNotifyPromptSkill(ninja.data.pos, skillInfo);
				for each(var skillId:int in activityHero.useSkillIdList)
				{
					skillInfo = FightManagerCenter.skillMgr.getSkillInfo(skillId);
					checkAndNotifyPromptSkill(ninja.data.pos, skillInfo);
				}
			}
			
			if(activityHero.useSpecialSkill)
			{
				new UseKathaSkillNotice(activityHero.pos, activityHero.skillId).send();
			}
		}
		
		private function checkAndNotifyPromptSkill(pos:int, skillInfo:SkillInfo):void
		{
			if(skillInfo.type != SkillDef.TYPE_COMMON || isCombo == true)
			{
				new PromptSkillStartNotice(pos, comboIndex, skillInfo.id).send();
			}
			else
			{
				new PromptSkillClearNotice().send();
			}
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

			moveAction1 = null;
			moveAction2 = null;
			moveAction3 = null;
			destPos = null;
			passiveStandArea = null;
			moveList = null;
		}
	}
}


