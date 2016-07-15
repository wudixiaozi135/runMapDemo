package com.tencent.morefun.naruto.plugin.motion.player.action.skill
{
	
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.plugin.motion.MotionLogger;
	import com.tencent.morefun.naruto.plugin.motion.data.LogicEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.LogicEffectResEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.MissInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.NinjaBattleCfgInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveEffectConfig;
	import com.tencent.morefun.naruto.plugin.motion.data.SkillStatuInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.StageNinjaActionType;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffInfoCfg;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.def.NinjaDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.NinjaEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.SceneInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.SceneItem;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.notice.NinjaEnterNotice;
	import com.tencent.morefun.naruto.plugin.motion.player.action.Action;
	
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.utils.Dictionary;
	import flash.utils.setTimeout;
	
    import com.tencent.morefun.naruto.i18n.I18n;
	public class EnterAction extends Action
	{
		private var enterNinjaList:Array = [];
		private var waitNinjaList:Array = [];
		private var roundId:int;
		private var actionId:int;
		
		public function EnterAction(roundId:int, actionId:int)
		{
			super();
			
			this.roundId = roundId;
			this.actionId = actionId;
		}
		
		override protected function onBegin():void
		{
			var ninjaInfoList:Array;
			var ninjaList:Array = [];
			var ninjaInfo:NinjaInfo;
			var ninjaCfg:NinjaBattleCfgInfo;
			var sceneInfo:SceneInfo;
			var maxPtLen:int;
			var isRealLeft:Boolean;
			var battleNinja:Ninja;
			var scenePos:Point;
			var sceneItem:SceneItem;
			var skillInfo:SkillInfo;
			var skillInfoList:Array;
			var buffIds:Array;
			var resList:Array;
			var ninjaEvent:NinjaEvent;
			var buffInfoCfg:BuffInfoCfg;
			var missInfo:MissInfo;
			var enterPosList:Array;
			var enterNinjaInfoList:Array;
			
			ninjaInfoList = data as Array;
			enterPosList = [];
			enterNinjaInfoList = [];
			
			sceneInfo = SceneConfig.getCurSceneInfo();
			
			//先创建忍者信息
			for(var i:int = 0;i < ninjaInfoList.length;i ++)
			{
				ninjaInfo = ninjaInfoList[i].clone();
				enterNinjaInfoList.push(ninjaInfo);
				ninjaCfg = NinjaConfig.getNinjaInfoById(ninjaInfo.ninjaId);
				ninjaCfg.resCfgInfo.scene = SceneConfig.getNinjaBingdingScene(ninjaInfo.ninjaId);
				ninjaInfo.stagePos = ninjaInfo.pos;
				if(enterPosList.indexOf(ninjaInfo.pos) != -1)
				{
					throw new Error(I18n.lang("as_motion_1451031573_4383"));
				}
				enterPosList.push(ninjaInfo.pos);
				
				skillInfoList = ninjaInfo.skillList;
				for each(var skillId:int in skillInfoList)
				{
					skillInfo = FightManagerCenter.skillMgr.getSkillInfo(skillId);
					
					buffIds = skillInfo.buffIds;
					for each(var buffId:int in buffIds)
					{
						if(buffId == 0)
						{
							continue ;
						}
						
						buffInfoCfg = BuffConfig.getBuffInfoCfg(buffId);
						
						if(buffInfoCfg == null)
						{
							throw new Error(I18n.lang("as_motion_1451031573_4384_0") +　buffId + I18n.lang("as_motion_1451031573_4384_1"));
						}
						
						buffInfoCfg.buffEffect = FightManagerCenter.skillMgr.getEffectInfo(buffInfoCfg.buffEffectId);
						buffInfoCfg.addBuffEffect = FightManagerCenter.skillMgr.getEffectInfo(buffInfoCfg.addBuffEffectId);
					}
				}
				
				maxPtLen = sceneInfo.positionInfo.ptLen;
				isRealLeft = SceneConfig.getPosIsServerLeft(ninjaInfo.pos);
				
				setRolePos(ninjaInfo, sceneInfo);
				FightManagerCenter.ninjaMgr.createNinja(ninjaInfo, isRealLeft);
				battleNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(ninjaInfo.pos);
				battleNinja.data.exeuntStageAction = ninjaInfo.exeuntStageAction;
				battleNinja.updateHpBar(battleNinja.data.hp, battleNinja.data.maxHP);
				battleNinja.visible = false;
				battleNinja.hideUI();
				
				FightManagerCenter.skillMgr.getEffectInfo(battleNinja.cfg.resCfgInfo.beHitEffectId);
				
				sceneItem = new SceneItem();
				sceneItem.id = ninjaInfo.pos;
				sceneItem.display = battleNinja;
				
				for each(var passiveEffectInfo:LogicEffectInfo in ninjaInfo.logicEffectList)
				{
					//passiveEffectInfo.cfg = PassiveEffectConfig.getSkillLogicEffectCfg(passiveEffectInfo.id); 录像没记录这个数据 调试时打开一下 下个版本去掉
					for each(var logicResEffectInfo:LogicEffectResEffectInfo in passiveEffectInfo.cfg.resEffectInfoList)
					{
						logicResEffectInfo.startEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.startEffectId);
						logicResEffectInfo.continueEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.continueEffectId);
						logicResEffectInfo.endEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.endEffectId);
						
						if(logicResEffectInfo.startEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4385_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4385_1"));}
						if(logicResEffectInfo.continueEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4386_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4386_1"));}
						if(logicResEffectInfo.endEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4387_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4387_1"));}
					}
					
					battleNinja.addLogicEffect(passiveEffectInfo);
				}
				
				//				if(ninja.cfg.miss != 0)
				//				{
				//					skillInfo = FightManagerCenter.skillMgr.getSkillInfo(ninja.cfg.miss);
				//					missInfo = skillInfo.subSkillInfos[0];
				//					FightManagerCenter.skillMgr.getEffectInfo(missInfo.effectId);
				//				}
				
				scenePos = new Point(ninjaInfo.x, ninjaInfo.y);
				FightManagerCenter.sceneMgr.addSceneItem(sceneItem, scenePos);
				ninjaList.push(battleNinja);
			}
			
			resList = FightManagerCenter.ninjaMgr.getResRequestNinjaList();
			ninjaEvent = new NinjaEvent(NinjaEvent.RES_REQUEST);
			ninjaEvent.urlList = resList;
			FightManagerCenter.ninjaMgr.dispatchEvent(ninjaEvent);
			
			FightManagerCenter.ninjaMgr.resetRequest();
			
			//设置登场列表
			for each(battleNinja in ninjaList)
			{
				enterNinjaList.push({pos:battleNinja.data.pos, ninja:battleNinja});
			}
			
			new NinjaEnterNotice(enterNinjaInfoList).send();
			
			for each(battleNinja in ninjaList)
			{
				battleNinja.isOnline = battleNinja.data.playerOnline;
				battleNinja.updateSelf();
			}
			
			//按顺序登场
			enterNinjaList.sortOn("pos", Array.NUMERIC);
			
			if(enterNinjaList.length == 0)
			{
				this.end();
				return ;
			}
			
			//			TweenManager.delayedCall(0.01, onEnterNext);
			onEnterNext();
		}
		
		private var isLast:Boolean;
		private function onEnterNext():void
		{
			var battleNinja:Ninja;
			var ninjaObj:Object;
			
			ninjaObj = enterNinjaList[0];
			logger.output("[EnterAction]","[onEnterNext]", "ninjaObj", ninjaObj);
			if(!ninjaObj){return ;}
			battleNinja = ninjaObj.ninja;
			if(!(battleNinja as Ninja).resComplete && !ninjaObj.delay)
			{
				ninjaObj.delay = true;
				setTimeout(onEnterNext, 100);
				return ;
			}
			
			battleNinja.visible = true;
			battleNinja.showUI();
			
			enterNinjaList.shift();
			isLast = enterNinjaList.length == 0;
			waitNinjaList.push(ninjaObj);
			//			MotionLogger.output("[EnterAction]","[onEnterNext]", battleNinja.data.pos);
			logger.output("[EnterAction]","[onEnterNext]", battleNinja.data.pos);
			
			switch(battleNinja.data.enterStageAction)
			{
				case StageNinjaActionType.ENTER_NORMAL:
					if(ninjaObj.ninja.data.hp == 0)
					{
						onNinjaMotionEnd([ninjaObj]);
					}
					else if(battleNinja.data.firstGuidLargeNinja == true)
					{
						firstGuidLargeEnter({ninja:battleNinja});
					}
					else if(battleNinja.cfg.cfgInfo.type != NinjaDef.TYPE_CONTRACT_PET)
					{
						normalEnter(ninjaObj);
					}
					else
					{
						largeEnter(ninjaObj);
					}
					break;
				case StageNinjaActionType.ENTER_VANISH:
					onNinjaMotionEnd([ninjaObj]);
					break;
			}
			
			if(!isLast)
			{
				onEnterNext();
			}
		}
		
		private function normalEnter(ninjaObj:Object):void
		{
			var ninja:Ninja;
			
			ninja = ninjaObj.ninja;
			ninja.playRoleAction(NinjaMotionDef.enter, false, onNinjaMotionEnd, [ninjaObj]);
		}
		
		
		
		private function largeEnter(ninjaObj:Object):void
		{
			var ninja:Ninja;
			
			ninja = ninjaObj.ninja;
			ninja.body.visible = false;
			ninja.addEffect(ninja.data.callupEffect);
			ninja.playEffect(ninja.data.callupEffect);
			ninja.idle();
			EventCenter.addEventHandler(ninja, RenderEvent.EFFECT_END, onEffectEnd);
			
			FightManagerCenter.delayCallBack(showUpLargeNinja, 10, [ninja]);
			if(!isLast)
			{
				onEnterNext();
			}
		}
		
		private function firstGuidLargeEnter(ninjaObj:Object):void
		{
			var ninja:Ninja;
			
			ninja = ninjaObj.ninja;
			ninja.idle();
			
			onNinjaMotionEnd([{ninja:ninja}]);
			if(!isLast)
			{
				onEnterNext();
			}
		}
		
		private function showUpLargeNinja(arg:Array):void
		{
			var ninja:Ninja;
			
			ninja = arg[0] as Ninja;
			ninja.body.visible = true;
		}
		
		private function onEffectEnd(target:Object, args:Array):void
		{
			var ninja:Ninja;
			var effectInfo:EffectInfo;
			
			ninja = target as Ninja;
			effectInfo = args[0].effectInfo;
			ninja.removeEffect(effectInfo);
			onNinjaMotionEnd([{ninja:ninja}]);
		}
		
		private function getNinjaObjByNinja(ninja:Ninja):Object
		{
			for each(var ninjaObj:Object in waitNinjaList)
			{
				if(ninjaObj.ninja == ninja)
				{
					return ninjaObj;
				}
			}
			
			return null;
		}
		
		private function onNinjaMotionEnd(param:Array):void
		{
			var ninja:Ninja;
			var ninjaObj:Object;
			var waitNinjaObj:Object;
			var skillStateList:Array;
			var skillInfo:SkillInfo;
			
			ninjaObj = param[0];
			ninja = ninjaObj.ninja;
			EventCenter.removeEventHandler(ninja, RenderEvent.EFFECT_END, onEffectEnd);
			
			skillStateList = (ninja as Ninja).data.skillStates;
			for each(var skillState:SkillStatuInfo in skillStateList)
			{
				if(skillState.skillProhibitType.indexOf(7) != -1)
				{
					skillInfo = FightManagerCenter.skillMgr.getSkillInfo(skillState.skillId);
					
					if(skillInfo.skillIdleEffect && skillInfo.skillIdleEffect.resComplete != true)
					{
						skillInfo.skillIdleEffect = FightManagerCenter.skillMgr.getEffectInfo(skillInfo.skillIdleEffectId);
					}
					
					ninja.updateSkillIdleAction(skillInfo.skillIdleAction, skillInfo.skillIdleEffect);
				}
			}
			
			if(ninja.data.hp > 0)
			{
				ninja.idle();
			}
			else
			{
				ninja.dead();
				ninja.stopActionToLastFrame();
			}
			
			waitNinjaObj = getNinjaObjByNinja(ninja);
			
			ninja.showShadow();
			waitNinjaList.splice(waitNinjaList.indexOf(waitNinjaObj), 1);
			
			onBuffAdd(ninja);
			addEnterShield(ninja);
			
			logger.output("[EnterAction]","[onNinjaMotionEnd]", ninja.data.pos);
			if(isLast && waitNinjaList.length == 0)
			{
				this.end();
			}
		}
		
		private function setRolePos(ninjaInfo:NinjaInfo, sceneInfo:SceneInfo):void
		{
			var i:int;
			var topLeftScenePos:Point;
			var bottomRightScenePos:Point;
			var isLeft:Boolean;
			var horLen:int;
			var endPos:int;
			var startPos:int;
			var positionMap:Dictionary;
			var cfg:NinjaBattleCfgInfo;
			var posIndex:int;
			var fullArea:Boolean;
			
			cfg = NinjaConfig.getNinjaInfoById(ninjaInfo.ninjaId);
			
			fullArea = cfg.cfgInfo.type == NinjaDef.TYPE_CONTRACT_PET;//召唤兽等占全格角色要额外计算
			
			horLen = sceneInfo.positionInfo.horLen;
			isLeft = SceneConfig.getPosIsServerLeft(ninjaInfo.pos);
			startPos = (fullArea)?0:ninjaInfo.pos;
			endPos = startPos + cfg.resCfgInfo.area.y * horLen + cfg.resCfgInfo.area.x;
			
			posIndex = (fullArea)?0:ninjaInfo.pos;
			if(fullArea == false)
			{
				if(isLeft)
				{
					if(ninjaInfo.pos >= 100)
					{
						posIndex = posIndex - 100;
					}
				}
				
				if(!isLeft)
				{
					if(ninjaInfo.pos < 100)
					{
						posIndex = posIndex + 100;
					}
				}
				
				for(i = 0;i <= cfg.resCfgInfo.area.y * horLen + cfg.resCfgInfo.area.x;i ++)
				{
					ninjaInfo.areaPositions.push(posIndex);
					posIndex += 1;
				}
			}
			else
			{
				posIndex = (isLeft)?0:100;
				for(i = 0;i < 27;i ++)
				{
					ninjaInfo.areaPositions.push(posIndex);
					posIndex += 1;
				}
			}
			
			if(isLeft)
			{
				positionMap = sceneInfo.positionInfo.leftPt;
			}
			else
			{
				positionMap = sceneInfo.positionInfo.right;
			}
			
			if(startPos >= 100)
			{
				startPos -= 100;
			}
			
			if(endPos >= 100)
			{
				endPos -= 100;
			}
			
			topLeftScenePos = (fullArea)?positionMap[4]:positionMap[startPos];
			bottomRightScenePos = (fullArea)?positionMap[4]:positionMap[endPos];
			if(topLeftScenePos == null){throw new Error(I18n.lang("as_motion_1451031573_4389_0") + ninjaInfo.ninjaId + I18n.lang("as_motion_1451031573_4389_1") + endPos + I18n.lang("as_motion_1451031573_4389_2"));}
			if(bottomRightScenePos == null){throw new Error(I18n.lang("as_motion_1451031573_4390_0") + ninjaInfo.ninjaId + I18n.lang("as_motion_1451031573_4390_1") + endPos + I18n.lang("as_motion_1451031573_4390_2"));}
			ninjaInfo.rect = new Rectangle(topLeftScenePos.x,
				topLeftScenePos.y,
				bottomRightScenePos.x - topLeftScenePos.x,
				bottomRightScenePos.y - topLeftScenePos.y);
			
			ninjaInfo.x = topLeftScenePos.x + (bottomRightScenePos.x - topLeftScenePos.x) / 2;
			if(fullArea == false)
			{
				ninjaInfo.y = bottomRightScenePos.y;
				ninjaInfo.selectY = topLeftScenePos.y + (bottomRightScenePos.y - topLeftScenePos.y ) / 2;
			}
			else
			{
				ninjaInfo.y = topLeftScenePos.y + (bottomRightScenePos.y - topLeftScenePos.y ) / 2;
				ninjaInfo.selectY = topLeftScenePos.y + (bottomRightScenePos.y - topLeftScenePos.y ) / 2;
			}
		}
		
		private function onBuffAdd(ninja:Ninja):void
		{
			var ninja:Ninja;
			var buffInfo:BuffInfo;
			var buffCfg:BuffInfoCfg;
			var buffInfoList:Array;
			var ninjaInfo:NinjaInfo;
			
			ninjaInfo = ninja.data;
			for each(buffInfo in ninjaInfo.enterBuffList)
			{
				buffCfg = BuffConfig.getBuffInfoCfg(buffInfo.buffId);
				buffInfo.cfg = buffCfg;
				ninja.addBuff(buffInfo);
			}
		}
		
		private function addEnterShield(ninja:Ninja):void
		{
			var shieldInfo:ShieldInfo;
			var ninjaInfo:NinjaInfo;
			
			ninjaInfo = ninja.data;
			if(ninjaInfo.enterShield != null)
			{
				ninja.addShield(ninjaInfo.enterShield);
			}
		}
		
		override protected function onDestroy():void
		{
			super.onDestroy();
		}
		
		
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}
			
			enterNinjaList = null;
			waitNinjaList = null;
		}
	}
}