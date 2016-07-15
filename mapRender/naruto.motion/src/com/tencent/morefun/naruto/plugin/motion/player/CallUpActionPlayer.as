package com.tencent.morefun.naruto.plugin.motion.player
{

	import com.tencent.morefun.naruto.plugin.motion.MotionLogger;
	import com.tencent.morefun.naruto.plugin.motion.data.ActivityHero;
	import com.tencent.morefun.naruto.plugin.motion.data.CallupActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.HpChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.LogicEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.LogicEffectResEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.NinjaBattleCfgInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveHero;
	import com.tencent.morefun.naruto.plugin.motion.data.SkillStatuInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.def.NinjaDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.NinjaEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.SceneInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.SceneItem;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.notice.NinjaEnterNotice;
	import com.tencent.morefun.naruto.plugin.motion.player.action.event.ActionEvent;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.CommonSkillAction;
	import com.tencent.morefun.naruto.plugin.motion.player.data.BaseActionData;
	import com.tencent.morefun.naruto.plugin.motion.player.event.BasePlayerEvent;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.utils.Dictionary;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class CallUpActionPlayer extends BasePlayer
	{
		private var curSkillAction:CommonSkillAction;
		private var callUpNinjaInfos:Array;   //被召唤忍者的ninjaInfo
		private var activityHero:ActivityHero;
		private var ninjaList:Array;   //施放召唤技能和被召唤忍者的ninja
		private var effectInfo:EffectInfo;  //被召唤忍者的出场效果
		private var timeId:Number;
		private var roundId:int;
		private var actionId:int;
		private var activitySkillEnd:Boolean;
		
		public function CallUpActionPlayer(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		override public function destroy():void
		{
			curSkillAction.end();
			super.destroy();
		}
		
		override public function playAction(actionInfo:Object, roleMgr:NinjaManager, buffMgr:BuffManager, skillMgr:SkillManager, sceneMgr:SceneManager):void
		{
			super.playAction(actionInfo, roleMgr, buffMgr, skillMgr, sceneMgr);
			
			var ninja:Ninja;
			var skillAction:CommonSkillAction;
			var skillInfo:SkillInfo;
			var event:BasePlayerEvent;
			var baseActionData:BaseActionData;
			var hpChangedInfo:HpChangedInfo;
			
			attackIndex = 0;
			
			roundId = actionInfo.roundId;
			actionId = actionInfo.actionIdList.shift();
			
			activityHero = actionInfo.activiteHero;
			
			callUpNinjaInfos = actionInfo.ninjaInfos;
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(activityHero.pos);
			if(!activityHero.hpChangedInfo)
			{
				hpChangedInfo = new HpChangedInfo();
				hpChangedInfo.hp = ninja.data.hp;
				hpChangedInfo.pos = ninja.data.pos;
				hpChangedInfo.baseChangedInfoList = [];
				activityHero.hpChangedInfo = hpChangedInfo;
			}
			
			baseActionData = new BaseActionData();
			baseActionData.activityHero = activityHero;
			baseActionData.activityNinja = m_roleMgr.getNinjaByPos(activityHero.pos);
			baseActionData.skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
			baseActionData.cahootPosList = activityHero.cahootPos;
			baseActionData.trunBackList = activityHero.afterActions;
			baseActionData.isOver = (actionInfo as CallupActionInfo).isOver;
			baseActionData.roundId = roundId;
			baseActionData.actionId = actionId;
			for each(var passiveHero:PassiveHero in activityHero.passiveHeros)
			{
				baseActionData.passiveNinjas.push(m_roleMgr.getNinjaByPos(passiveHero.pos));
			}
			
			skillAction = new CommonSkillAction(baseActionData);  //归为忍者列表为空
			skillAction.addEventListener(ActionEvent.END, onPlayerExecuterEnd);
			skillAction.begin();
			
			curSkillAction = skillAction;
			
			skillInfo = m_skillMgr.getSkillInfo(activityHero.skillId);
			if(skillInfo.type == SkillDef.TYPE_SPECIAL)
			{
				event = new BasePlayerEvent(BasePlayerEvent.SPECIAL_SKILL);
				event.specialPos = activityHero.pos;
				event.skillIndex = ninja.data.specialSkillIds.indexOf(activityHero.skillId);
				this.dispatchEvent(event);
			}
			
			if(ninja.resComplete == true)
			{
				EventCenter.addEventHandler(ninja, RenderEvent.HIT, onActivityNinjaHit);
			}
			else
			{
				onActivityNinjaHit();
			}
			
			trace("[CallUp]", "[CallUpActionPlayer]", "onNinjaMotionStart");
		}
		
		private function onActivityNinjaHit(target:Ninja = null):void
		{
			if(target)
			{
				EventCenter.removeEventHandler(target, RenderEvent.HIT, onActivityNinjaHit);
			}
			showCallUpNinjas(callUpNinjaInfos);	
		}
		
		private function onPlayerExecuterEnd(evt:Event):void
		{
			var ninja:Ninja;
			var skillAction:CommonSkillAction;
			
			activitySkillEnd = true;
			
			skillAction = evt.currentTarget as CommonSkillAction;
			skillAction.removeEventListener(ActionEvent.END, onPlayerExecuterEnd);
			ninja = FightManagerCenter.ninjaMgr.getNinjaByArea(activityHero.pos);
			EventCenter.removeEventHandler(ninja, RenderEvent.HIT, onActivityNinjaHit);
			
			checkEnd();
		}
		
		private function showCallUpNinjas(ninjaInfos:Array):void
		{
			var ninja:Ninja;
			var motionList:Array;
			var effectInfo:EffectInfo;
			var skillStateList:Array;
			var skillInfo:SkillInfo;
			
			var index:int;
			
			ninjaList = createCallUpNinjas(ninjaInfos);                     //创建被召唤的忍者信息
			motionList = ninjaList.concat();
			for each(ninja in motionList)
			{
				index += 1;
				
				ninja.addEffect(ninja.data.callupEffect);
				ninja.playEffect(ninja.data.callupEffect);
				EventCenter.addEventHandler(ninja, RenderEvent.EFFECT_END, onEffectEnd);
				
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
			}
		}
		
		private function onNinjaMotionEnd(args:Array):void
		{
			var ninja:Ninja;
			var ninjaSceneList:Array;
			
			ninja = args[0];
			ninjaList.splice(ninjaList.indexOf(ninja), 1);
			ninja.showShadow();
			ninja.idle();
			EventCenter.removeEventHandler(ninja, RenderEvent.EFFECT_END, onEffectEnd);
			
			checkEnd();
		}
		
		private function checkEnd():void
		{
			var ninjaSceneList:Array;
			
			if(ninjaList.length == 0 && activitySkillEnd)
			{
				ninjaSceneList = m_roleMgr.getBindingNinjaSceneList();
				if(ninjaSceneList.length == 0)
				{
					m_sceneMgr.resetNinjaSceneInfo();
				}
				else
				{
					m_sceneMgr.updateNinjaSceneInfo(ninjaSceneList[ninjaSceneList.length - 1]);
				}
				
				MotionLogger.output("[CallUp]", "[CallUpActionPlayer]", "onNinjaMotionEnd");
				this.playComplete();
			}
		}
		
		private function onEffectEnd(target:Object, args:Array):void
		{
			var ninja:Ninja;
			var effectInfo:EffectInfo;
			
			ninja = target as Ninja;
			effectInfo = args[0].effectInfo;
			ninja.removeEffect(effectInfo);
			onNinjaMotionEnd([ninja]);
			
			trace("[CallUp]", "[CallUpActionPlayer]", "ninjaEnd", ninja.data.pos);
		}
		
		private function createCallUpNinjas(ninjaInfos:Array):Array
		{
			var isLeft:Boolean;
			var battleNinja:Ninja;
			var sceneItem:SceneItem;
			var scenePos:Point;
			var ninjaList:Array;
			var sceneInfo:SceneInfo;
			var resList:Array;
			var ninjaEvent:NinjaEvent;
			var ninjaInfo:NinjaInfo;
			
			ninjaList = new Array();
			sceneInfo = SceneConfig.getCurSceneInfo();
			for(var i:int = 0;i < ninjaInfos.length;i ++ )    
			{
				ninjaInfo = ninjaInfos[i].clone();
				ninjaInfo.specialSkillIds = SkillConfig.getSpecialSkillId(ninjaInfo.skillList);
				isLeft = SceneConfig.getPosIsServerLeft(ninjaInfo.pos);
				setRolePos(ninjaInfo, sceneInfo);
				ninjaInfo.stagePos = ninjaInfo.pos;
				FightManagerCenter.ninjaMgr.createNinja(ninjaInfo, isLeft, true);
				battleNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(ninjaInfo.pos);
				battleNinja.updateHpBar(battleNinja.data.hp, battleNinja.data.maxHP);
				
				m_skillMgr.getEffectInfo(battleNinja.cfg.resCfgInfo.beHitEffectId);
				
				sceneItem = new SceneItem();
				sceneItem.id = ninjaInfo.pos;
				sceneItem.display = battleNinja;
				
				for each(var passiveEffectInfo:LogicEffectInfo in ninjaInfo.logicEffectList)
				{
					for each(var logicResEffectInfo:LogicEffectResEffectInfo in passiveEffectInfo.cfg.resEffectInfoList)
					{
						logicResEffectInfo.startEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.startEffectId);
						logicResEffectInfo.continueEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.continueEffectId);
						logicResEffectInfo.endEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.endEffectId);
						
						if(logicResEffectInfo.startEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4397_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4397_1"));}
						if(logicResEffectInfo.continueEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4398_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4398_1"));}
						if(logicResEffectInfo.endEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4399_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4399_1"));}
					}
					battleNinja.addLogicEffect(passiveEffectInfo);
				}
				
				scenePos = new Point(ninjaInfo.x, ninjaInfo.y);
				FightManagerCenter.sceneMgr.addSceneItem(sceneItem, scenePos);
				ninjaList.push(battleNinja);
			}			
			
			resList = FightManagerCenter.ninjaMgr.getResRequestNinjaList();
			ninjaEvent = new NinjaEvent(NinjaEvent.RES_REQUEST);
			ninjaEvent.urlList = resList;
			FightManagerCenter.ninjaMgr.dispatchEvent(ninjaEvent);
			
			FightManagerCenter.ninjaMgr.resetRequest();
			
			new NinjaEnterNotice(actionInfo.ninjaInfos).send();
			return ninjaList;
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
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			curSkillAction = null;
			callUpNinjaInfos = null;
			activityHero = null;
			ninjaList = null;
			effectInfo = null;
		}
	}
}