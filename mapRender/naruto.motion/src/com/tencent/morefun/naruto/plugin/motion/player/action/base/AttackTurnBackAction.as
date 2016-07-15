package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.plugin.motion.data.AfterActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.event.SceneEvent;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	
	import flash.geom.Point;
	import flash.utils.Dictionary;

	public class AttackTurnBackAction extends BaseBattleAction
	{
		private var lastActionMap:Dictionary = new Dictionary();
		private var destPos:Point;
		private var moveAction1:String;
		private var moveAction2:String;
		private var moveAction3:String;
		private var turningBackList:Array = [];
		public function AttackTurnBackAction()
		{
			super();
		}
		/**
		 * 
		 * @param args 
		 * args[0] ActivityHero 攻击者数据 args[1] attackCount 第几次攻击
		 */	
		override protected function onBegin():void
		{
			TimerProvider.addTimeTask(200, beginTurnBack);
		}
		
		public function beginTurnBack():void
		{
			TimerProvider.removeTimeTask(200, beginTurnBack);
			
			var turnBackNinja:Ninja;
			FightManagerCenter.ninjaMgr;
			
			for each(var afterActionInfo:AfterActionInfo in trunBackList)
			{
				//afterActionInfo.pos阵型里的位置
				turnBackNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(afterActionInfo.pos);
				//进场站的位置turnBackNinja.data.x,turnBackNinja.data.pos服务器下发阵型中的位置
				
				if(turningBackList.indexOf(turnBackNinja) == -1)
				{
					turningBackList.push(turnBackNinja);
					destPos = new Point(turnBackNinja.data.x, turnBackNinja.data.y);
					moveNinjaToDest(turnBackNinja, destPos);
				}
			}
			
			if(turningBackList.length == 0)
			{
				this.end();
			}
		}
		
		private function moveNinjaToDest(ninja:Ninja, destPos:Point):void
		{
			var ninjaPos:Point;
			var destHeight:int;
			
			traceStr("moveNinjaToDest", (ninja as Ninja).data.pos);
			
			ninjaPos = FightManagerCenter.sceneMgr.getScenePosById(ninja.data.pos);
			//在上次行动就已跑到目的(比如连击)地就不用再跑了
			if(ninjaPos.x == destPos.x && ninjaPos.y == destPos.y)
			{
				this.end();
				return ;
			}
			//移动前要看看是否需要镜像反转 有可能敌人在自己后面 或 技能距离比本身站的位置远
			ninja.mirror(false);
//			checkAndSetMirror(ninja, destPos);
//			if((destPos.x > ninjaPos.x && ninja.isLeft) || (destPos.x <= ninjaPos.x && ninja.isLeft == false))
//			{
//				moveAction1 = subSkillInfo.moveActions[0];
//				moveAction2 = subSkillInfo.moveActions[1];
//				moveAction3 = subSkillInfo.moveActions[2];
//			}
//			else
//			{
				moveAction1 = NinjaMotionDef.run2_1;
				moveAction2 = NinjaMotionDef.run2_2;
				moveAction3 = NinjaMotionDef.run2_3;
//			}
			
			lastActionMap[ninja] = moveAction3;
			
			ninja.playRoleAction(moveAction1, false,onRunComplete,[ninja, destPos, moveAction1, moveAction2, moveAction3]);
		}
		
		private function onRunComplete(ninjaArr:Array):void
		{
			var ninja:Ninja;
			
			
			ninja = ninjaArr[0] as Ninja;
			
			traceStr("onRunComplete", (ninja as Ninja).data.pos);
			ninja.playRoleAction(ninjaArr[3], false);
			
			//控制位移，4帧后移动到目标点
			FightManagerCenter.sceneMgr.moveSceneItem(ninja.data.pos, ninjaArr[1], (FightManagerCenter.frameRate * 4 / 1000));
			FightManagerCenter.delayCallBack(onSceneMoveComplete, 4, [ninja.data.pos]);
		}
		
		private function onSceneMoveComplete(params:Array):void
		{
			var pos:int;
			var ninja:Ninja;
			var lastAction:String;
			
			pos = params[0];
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(pos);
			
			traceStr("onSceneMoveComplete", pos);
			
			if(turningBackList.indexOf(ninja) == -1)
			{
				return ;
			}
			
			lastAction = lastActionMap[ninja];
			ninja.mirror(false);//镜像
			
			//播放移动后的动画
			ninja.playRoleAction(lastAction, false, run2_3Handler, [ninja]);
		}
		
		private function run2_3Handler(ninjaArr:Array):void
		{
			var ninja:Ninja;
			
			ninja = ninjaArr[0] as Ninja;
			
			traceStr("run2_3Handler", (ninja as Ninja).data.pos);
			
			if(ninja.data.hp > 0)
			{
				ninja.idle();
			}
			else
			{				
				ninja.dead();
			}
			
			turningBackList.splice(turningBackList.indexOf(ninja), 1);
			
			if(turningBackList.length == 0)
			{
				this.end();
				FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onSceneMoveComplete);
			}
		}
		
		protected function checkAndSetMirror(ninja:Ninja, destPos:Point):void
		{
			var ninjaPos:Point;
			var mirror:Boolean;
			
			ninjaPos = FightManagerCenter.sceneMgr.getScenePosById(ninja.data.pos);
			
			traceStr("checkAndSetMirror", (ninja as Ninja).data.pos);
			
			if(destPos.x < ninjaPos.x && ninja.isRealLeft)
			{
				mirror = true;
			}
			
			if(destPos.x > ninjaPos.x && ninja.isRealLeft)
			{
				mirror = false;
			}
			
			if(destPos.x > ninjaPos.x && ninja.isRealLeft)
			{
				mirror = true;
			}
			
			if(destPos.x < ninjaPos.x && ninja.isRealLeft)
			{
				mirror = false;
			}
			
			ninja.mirror(mirror);
		}
		private function onMoveToDestComplete(battleNinja:Ninja):void
		{
			traceStr("checkAndSetMirror", battleNinja.data.pos);
			
			battleNinja.x = battleNinja.data.x;
			battleNinja.y = battleNinja.data.y;
			battleNinja.mirror(false);
		}
		
		override protected function onParentActionEnd():void
		{
			traceStr("onParentActionEnd");
			
			turningBackList = [];
			lastActionMap = new Dictionary();
		}
		
		override protected function onDestroy():void
		{
			traceStr("onDestroy");
			
			TimerProvider.removeTimeTask(200, beginTurnBack);
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			lastActionMap = null;
			destPos = null;
			moveAction1 = null;
			moveAction2 = null;
			moveAction3 = null;
			turningBackList = null;
		}
	}
}