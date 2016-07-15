package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight
{
	
	import com.tencent.morefun.naruto.plugin.motion.data.BeHitEffectDef;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.SceneInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.event.SceneEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	
	import flash.geom.Point;
	
    import com.tencent.morefun.naruto.i18n.I18n;
	public class BackDefence extends BaseBattleAction
	{
		private var sameRowHeroList:Array;
		private var _playNextDefenceFun:Function;
		
		private var motionEnd:Boolean;
		private var acitonNinjaList:Array = [];
		
		public function BackDefence(passiveHero:PassiveHero, defenceActionIndex:int)
		{
			super();
			
			this.passiveHero = passiveHero;
			this.passiveNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
			this.defenceActionIndex = defenceActionIndex;
		}
		
		override protected function onBegin():void
		{
			passiveNinja.endAction();
			passiveNinja.hideUI();
			
			if(this.curHitCount == this.maxHitCount)
			{
				sameRowHeroList = getSameRowNinjaList();
			}
			
			if(passiveNinja.resComplete && (passiveNinja.hasAction(NinjaMotionDef.beatback_1)  == false ||
				passiveNinja.hasAction(NinjaMotionDef.beatback_2) == false ||
				passiveNinja.hasAction(NinjaMotionDef.beatback_3) == false ||
				passiveNinja.hasAction(NinjaMotionDef.beatback_4) == false ||
				passiveNinja.hasAction(NinjaMotionDef.beatback_5) == false))
			{
				throw new Error(I18n.lang("as_motion_1451031573_4353_0") + passiveNinja.cfg.cfgInfo.refId + "]" + passiveNinja.cfg.cfgInfo.name + I18n.lang("as_motion_1451031573_4353_1"));
			}
			
			passiveNinja.playRoleAction(NinjaMotionDef.beatback_1, false, onBeatbackHitComplete);
			if(isFirsetDefenceAction())
			{
				if(hitPointInfo.ignoreDamage == false)
				{
					passiveNinja.updateMoney(passiveHero.hpChangedInfo, maxDamageCount, curDamageCount);
					passiveNinja.updateHp(passiveHero.hpChangedInfo, passiveHero.isCritical, maxDamageCount, curDamageCount);
				}
			}
			EventCenter.addEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt, true);
//			FightManagerCenter.sceneMgr.addEventListener(SceneEvent.MOVE_COMPLETE, onFlyComplete);
			
			acitonNinjaList.push(passiveNinja);
			
			TimerProvider.addEnterFrameTask(onBeatBackUpdate);
		}
		
		private function onBeatBackUpdate():void
		{
			var ninja:Ninja;
			var beatbackEffectHero:PassiveHero;
			for(var i:int = 0;i < sameRowHeroList.length;i ++)
			{
				beatbackEffectHero = sameRowHeroList[i];
				
				//				if(!beatbackEffectHero.isMajor)
				//				{
				//					continue ;
				//				}
				
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(beatbackEffectHero.pos);
				if(hitTest(ninja))
				{
					if(beatbackEffectHero.behitEffect == BeHitEffectDef.BEATBACK){continue ;}
					//					if(beatbackEffectHero.isMajor)//主受击者只有一个 即被击退者
					//					{
					//						ninja.updateHp(beatbackEffectHero.hpChangedInfo, beatbackEffectHero.isCritical, 1, 1);
					//					}
					//					else
					//					{
					ninja.updateHp(beatbackEffectHero.hpChangedInfo, beatbackEffectHero.isCritical, 1, 1);
					//					}
					sameRowHeroList.splice(i, 1);
					i --;
					
					if(beatbackEffectHero.isDead)
					{
						(ninja as Ninja).dead(onNinjaDeadComplete, [beatbackEffectHero]);
						acitonNinjaList.push(passiveNinja);
					}
				}
			}
		}
		
		private function onNinjaDeadComplete(args:Array):void
		{
			var ninja:Ninja;
			var passiveHero:PassiveHero;
			
			passiveHero = args[0];
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(passiveHero.pos);
			acitonNinjaList.splice(acitonNinjaList.indexOf(ninja), 1);
			
			checkEnd();
		}
		
		private function hitTest(otherNinja:Ninja):Boolean
		{
			if(passiveNinja.isRealLeft)
			{
				if(passiveNinja.x < otherNinja.x)
				{
					return true;
				}
			}
			else
			{
				if(passiveNinja.x > otherNinja.x)
				{
					return true;
				}
			}
			
			return false;
		}
		
		public function set playNextDefenceFunction(value:Function):void
		{
			_playNextDefenceFun = value;
		}
		
		private function getSameRowNinjaList():Array
		{
			var list:Array = [];
			var ninja:Ninja;
			for each(var otherPassiveHero:PassiveHero in passiveHeros)
			{
				if(SceneConfig.isBeatbackEffectPos(otherPassiveHero.pos, passiveHero.pos))
				{
					if(otherPassiveHero.behitEffect == BeHitEffectDef.BEATBACK)//如果前面已经有人击退了 那么这个击退忍者不域任何人相撞
					{
						return [];
					}
				}
				
				if(SceneConfig.isBeatbackEffectPos(passiveHero.pos, otherPassiveHero.pos))
				{
					list.push(otherPassiveHero);
				}
			}
			
			return list;
		}
		
		private function onBeatbackHitComplete():void
		{
			var beatbackPoint:Point;
			var sceneInfo:SceneInfo;
			
			sceneInfo = SceneConfig.getCurSceneInfo();
			passiveNinja.playRoleAction(NinjaMotionDef.beatback_2, false);
			if(passiveNinja.isRealLeft)
			{
				beatbackPoint = sceneInfo.positionInfo.beatBackPt[0];
			}
			else
			{
				beatbackPoint = sceneInfo.positionInfo.beatBackPt[1];
			}
			beatbackPoint.y = passiveNinja.y;
			
			FightManagerCenter.sceneMgr.moveSceneItem(passiveNinja.data.pos, beatbackPoint, (FightManagerCenter.frameRate * 4 / 1000));
			FightManagerCenter.sceneMgr.addEventListener(SceneEvent.MOVE_COMPLETE, onFlyComplete);
		}
		
		private function onFlyComplete(evt:SceneEvent):void
		{
			if(evt.id != passiveNinja.data.pos)
			{
				return ;
			}
			
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onFlyComplete);
			passiveNinja.playRoleAction(NinjaMotionDef.beatback_3, false, onFallDownComplete);
		}
		
		private function onFallDownComplete():void
		{
			passiveNinja.playRoleAction(NinjaMotionDef.beatback_4, true);
			
			FightManagerCenter.sceneMgr.moveSceneItem(passiveNinja.data.pos, new Point(passiveNinja.data.x, passiveNinja.data.y), (FightManagerCenter.frameRate * 4 / 1000));
			FightManagerCenter.sceneMgr.addEventListener(SceneEvent.MOVE_COMPLETE, onRollBackComplete);
		}
		
		private function onRollBackComplete(evt:SceneEvent):void
		{
			if(evt.id != passiveNinja.data.pos)
			{
				return ;
			}
			
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onRollBackComplete);
			if(passiveHero.isDead)
			{
				TimerProvider.addTimeTask(0, playDead, null, 0, 0, 1);
				return ;
			}
			
			passiveNinja.playRoleAction(NinjaMotionDef.beatback_5, false, onBeatbackComplete);
		}
		
		private function playDead():void
		{
			passiveNinja.dead(onDeadComplete);
		}
		
		private function onDeadComplete():void
		{
			acitonNinjaList.splice(acitonNinjaList.indexOf(passiveNinja), 1);
			
			motionEnd = true;
			checkEnd();
		}
		
		private function onBeatbackComplete():void
		{
			if(isEnd == true){return ;}//当 onActionInterrupt执行过这里会有可能发生
			
			if(!hitPointInfo.ignoreResetIdle)
			{
				passiveNinja.idle();
			}
			
			acitonNinjaList.splice(acitonNinjaList.indexOf(passiveNinja), 1);
			
			motionEnd = true;
			checkEnd();
			
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onFlyComplete);
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onRollBackComplete);
			TimerProvider.removeEnterFrameTask(onBeatBackUpdate);
			
			if(haveNextDefenceAction())
			{
				_playNextDefenceFun(passiveHero, defenceActionIndex + 1);
				return ;
			}
			
			passiveNinja.showUI();
		}
		
		private function onActionInterrupt():void
		{
			finishOhterNinjaDenfence();
			
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt);
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onFlyComplete);
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onRollBackComplete);
			
			TimerProvider.removeEnterFrameTask(onBeatBackUpdate);
			end();
		}
		
		private function finishOhterNinjaDenfence():void
		{
			var ninja:Ninja;
			var beatbackEffectHero:PassiveHero;
			
			for (var i:int = 0;i < sameRowHeroList.length;i ++)
			{
				beatbackEffectHero = sameRowHeroList[i];
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(beatbackEffectHero.pos);
				
				if(beatbackEffectHero.behitEffect == BeHitEffectDef.BEATBACK){continue ;}
				//					if(beatbackEffectHero.isMajor)//主受击者只有一个 即被击退者
				//					{
				//						ninja.updateHp(beatbackEffectHero.hpChangedInfo, beatbackEffectHero.isCritical, 1, 1);
				//					}
				//					else
				//					{
				ninja.updateHp(beatbackEffectHero.hpChangedInfo, beatbackEffectHero.isCritical, 1, 1);
				//					}
				sameRowHeroList.splice(i, 1);
				i --;
				
				if(beatbackEffectHero.isDead)
				{
					(ninja as Ninja).dead(onNinjaDeadComplete, [beatbackEffectHero]);
					acitonNinjaList.push(passiveNinja);
				}
			}
		}
		
		private function checkEnd():void
		{
			
			if(acitonNinjaList.length == 0)
			{
				finishOhterNinjaDenfence();
				
				TimerProvider.removeEnterFrameTask(onBeatBackUpdate);
				end();
			}
		}
		
		override protected function onEnd():void
		{
			if(haveNextDefenceAction() == false)
			{
				passiveNinja.updateAttribute(passiveHero.attributeChangedInfo);
			}
		}
		
		override protected function onDestroy():void
		{
			super.onDestroy();
			
			TimerProvider.removeTimeTask(0, playDead, null, 0, 0, 1);
			EventCenter.removeEventHandler(passiveNinja, RenderEvent.ACTION_INTERRUPT, onActionInterrupt);
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onFlyComplete);
			FightManagerCenter.sceneMgr.removeEventListener(SceneEvent.MOVE_COMPLETE, onRollBackComplete);
			TimerProvider.removeEnterFrameTask(onBeatBackUpdate);
		}
		
		
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}
			
			sameRowHeroList = null;
			_playNextDefenceFun = null;
			acitonNinjaList = null;
		}
	}
}