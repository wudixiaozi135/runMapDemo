package com.tencent.morefun.naruto.plugin.motion
{
	
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.framework.net.LoadManager;
	import com.tencent.morefun.naruto.plugin.motion.after.AirAfterEffect;
	import com.tencent.morefun.naruto.plugin.motion.after.BaseAfterEffect;
	import com.tencent.morefun.naruto.plugin.motion.after.SpeedLineAfterEffect;
	import com.tencent.morefun.naruto.plugin.motion.data.ActionTypeDef;
	import com.tencent.morefun.naruto.plugin.motion.data.BaseActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.BaseChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.BuffEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.HpChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.LogicEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.LogicEffectInfoCfg;
	import com.tencent.morefun.naruto.plugin.motion.data.LogicEffectResEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.MotionData;
	import com.tencent.morefun.naruto.plugin.motion.data.NinjaBattleCfgInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.PassiveEffectConfig;
	import com.tencent.morefun.naruto.plugin.motion.data.StageInfo;
	import com.tencent.morefun.naruto.plugin.motion.event.MotionEvent;
	import com.tencent.morefun.naruto.plugin.motion.event.MotionPlayerEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffInfoCfg;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.event.BuffEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.EffectManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.frame.FrameManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.NinjaEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.res.ResManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.res.data.MMEAssetsProvider;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.SceneInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.ShieldManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldInfoCfg;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.event.ShieldEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.event.SkillEvent;
	import com.tencent.morefun.naruto.plugin.motion.player.AbortSkillPlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.BasePlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.CallUpActionPlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.ComboAttackPlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.CommonAttackPlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.DialoguePlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.EnchantmentPlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.EnervationPlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.FormationPlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.GuidScriptPlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.OnlyDefenceEffectPlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.ScriptPlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.StagePlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.TransformPlayer;
	import com.tencent.morefun.naruto.plugin.motion.player.event.BasePlayerEvent;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	import com.tencent.morefun.naruto.plugin.ui.util.TweenManager;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	import com.tencent.morefun.naruto.util.KeyboardManager;
	import com.tencent.morefun.naruto.util.LogUtil;
	
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.ProgressEvent;
	import flash.geom.Point;
	import flash.system.ApplicationDomain;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	import flash.utils.setTimeout;
	
    import com.tencent.morefun.naruto.i18n.I18n;
	public class MotionPlayer extends Sprite
	{
		//资源
		private var _configMap:Dictionary = new Dictionary();
		private var _playingPlayers:Array = [];
		
		
		//管理器
		private var _sceneMgr:SceneManager;
		private var _ninjaMgr:NinjaManager;
		private var _skillMgr:SkillManager;
		private var _buffMgr:BuffManager;
		private var _shieldMgr:ShieldManager;
		private var _effectMgr:EffectManager;
		private var _frameMgr:FrameManager;
		private var _resMgr:ResManager;
		
		private var _afterEffectList:Array = [];
		
		//配置列表
		private var _configInfoList:Array = [];
		
		//播放器相关
		private var _actionIndex:int;
		
		private var _enterPlayer:StagePlayer;
		
		private var _commondClsMap:Dictionary = new Dictionary();
		
		private var _rendererIndex:int = 0;
		
		
		private var _loader:LoadManager;
		
		public function MotionPlayer()
		{
			super();
			
			_configInfoList.push({cfg:NinjaConfig,resName:"plugin.battle.ninjacfg",fieldName:"ninjaInfoBin"});
			_configInfoList.push({cfg:NinjaConfig,resName:"plugin.battle.ninjaBaseCfg",fieldName:"baseConfigXml"});
			_configInfoList.push({cfg:BuffConfig,resName:"plugin.battle.buffInfos",fieldName:"configXml"});
			_configInfoList.push({cfg:BuffConfig,resName:"plugin.battle.buffRefInfos",fieldName:"refConfigXml"});
			_configInfoList.push({cfg:SkillConfig,resName:"plugin.battle.skillInfo",fieldName:"skillInfoConfigXml"});
			_configInfoList.push({cfg:SkillConfig,resName:"plugin.battle.skillAcion",fieldName:"skillActionConfigXml"});
			_configInfoList.push({cfg:SkillConfig,resName:"plugin.battle.skillAttribute",fieldName:"skillDefenceAttributeXml"});
			_configInfoList.push({cfg:EffectConfig,resName:"plugin.battle.effectcfg",fieldName:"configXml"});
			_configInfoList.push({cfg:EffectConfig,resName:"plugin.battle.shareEffectcfg",fieldName:"shareConfigXml"});
			_configInfoList.push({cfg:PassiveEffectConfig,resName:"plugin.battle.logicResEffect",fieldName:"batiEffectConfigXml"});
			
			//			_configInfoList.push({cfg:SceneConfig,resName:"plugin.battle.sceneCfg",fieldName:"configXml"});
			
			_configInfoList.push({cfg:SceneConfig,resName:"plugin.battle.scenePicture",fieldName:"scenePictureXml"});
			_configInfoList.push({cfg:SceneConfig,resName:"plugin.battle.scenePosition",fieldName:"scenePositionXml"});
			_configInfoList.push({cfg:SceneConfig,resName:"plugin.battle.sceneEffect",fieldName:"sceneEffectXml"});
			_configInfoList.push({cfg:SceneConfig,resName:"plugin.battle.enchantment",fieldName:"sceneEnchatmentXml"});
			_configInfoList.push({cfg:ShieldConfig,resName:"plugin.battle.shield",fieldName:"shieldConfigXml"});
			_configInfoList.push({cfg:PassiveEffectConfig,resName:"plugin.battle.skillInfo",fieldName:"skillInfoConfigXml"});
			_configInfoList.push({cfg:PassiveEffectConfig,resName:"plugin.battle.buffEffect",fieldName:"buffEffectConfigXml"});
			
			_sceneMgr = new SceneManager();
			_ninjaMgr = new NinjaManager();
			_skillMgr = new SkillManager();
			_buffMgr = new BuffManager();
			_shieldMgr = new ShieldManager();
			_effectMgr = new EffectManager();
			_frameMgr = new FrameManager();
			_resMgr = new ResManager();
			
			_loader = LoadManager.getManager("battle");
			
			_ninjaMgr.resMap = new Dictionary;
			_effectMgr.resMap = new Dictionary;
			_sceneMgr.resMap = new Dictionary;
			
			FightManagerCenter.setManagers(_sceneMgr, _ninjaMgr, _skillMgr, _buffMgr, _shieldMgr, _frameMgr, _resMgr);
			
			_commondClsMap[ActionTypeDef.COMMON] = CommonAttackPlayer;
			_commondClsMap[ActionTypeDef.COMBO] = ComboAttackPlayer;
			_commondClsMap[ActionTypeDef.STAGE] = StagePlayer;
			_commondClsMap[ActionTypeDef.CALLUP] = CallUpActionPlayer;
			_commondClsMap[ActionTypeDef.SCRIPT] = ScriptPlayer;
			_commondClsMap[ActionTypeDef.FORMATION] = FormationPlayer;
			_commondClsMap[ActionTypeDef.DIALOGUE] = DialoguePlayer;
			_commondClsMap[ActionTypeDef.ENCHATMENT] = EnchantmentPlayer;
			_commondClsMap[ActionTypeDef.ABORT] = AbortSkillPlayer;
			_commondClsMap[ActionTypeDef.TRANSFORM] = TransformPlayer;
			_commondClsMap[ActionTypeDef.ENERVATION] = EnervationPlayer;
			_commondClsMap[ActionTypeDef.ONLY_DEFENCE_EFFECT] = OnlyDefenceEffectPlayer;
			_commondClsMap[ActionTypeDef.GUID_SCRIPT] = GuidScriptPlayer;
			
			_buffMgr.addEventListener(BuffEvent.BUFF_ADD, onBuffAdd);
			_buffMgr.addEventListener(BuffEvent.BUFF_CLOSING, onBuffClosing);
			_buffMgr.addEventListener(BuffEvent.BUFF_REMOVE, onBuffRemove);
			_buffMgr.addEventListener(BuffEvent.BUFF_EFFECT, onBuffEffect);
			_shieldMgr.addEventListener(ShieldEvent.SHIELD_ADD, onShieldAdd);
			_shieldMgr.addEventListener(ShieldEvent.SHIELD_CLOSING, onShieldClose);
			_shieldMgr.addEventListener(ShieldEvent.SHIELD_REMOVE, onShieldRemove);
			
			addChild(_sceneMgr as DisplayObject);
			
			_skillMgr.addEventListener(SkillEvent.RES_REQUEST, onSkillResReques);
			_ninjaMgr.addEventListener(NinjaEvent.RES_REQUEST, onNinjaResReques);
			
			EventCenter.addEventHandler(_ninjaMgr, MotionPlayerEvent.HIDE_UI, onUIVisibleChanged);
			
			EventCenter.addEventHandler(null, RenderEvent.AIR_AFTER_EFFECT, onAirAfterEffectEvent, true);
			
			KeyboardManager.singleton.addKeyboardListener("startbattle", onStartMotionDebug);
			KeyboardManager.singleton.addKeyboardListener("stopbattle", onStopMotionDebug);
		}
		private function onStartMotionDebug():void
		{
			var ninjaMap:Dictionary;
			
			MotionData.debug = true;
			
			ninjaMap = NinjaManager.singleton.getNinjaMap();
			for each(var ninja:Ninja in ninjaMap)
			{
				logger.output("[onMotionDebug]","[ninjaMap]", ninja.data.pos);
			}
		}
		
		private function onStopMotionDebug():void
		{
			MotionData.debug = false;
		}
		
		//貌似有bug，_afterEffectList删不干净！
		private function removeAllAfterEffect():void
		{
			var afterEffect:BaseAfterEffect;
			
			for(var i:int = 0;i < _afterEffectList.length;i ++)
			{
				afterEffect = _afterEffectList[i];
				_afterEffectList.splice(_afterEffectList.indexOf(afterEffect), 1);
				afterEffect.end();
			}
		}
		
		private function onAfterEffectComplete(evt:Event):void
		{
			var afterEffect:BaseAfterEffect;
			
			afterEffect = evt.currentTarget as BaseAfterEffect;
			
			_afterEffectList.splice(_afterEffectList.indexOf(afterEffect), 1);
			afterEffect.end();
		}
		private function onUIVisibleChanged(target:Object, args:Array):void
		{
			var event:MotionPlayerEvent;
			
			if(args[0] == true)
			{
				event = new MotionPlayerEvent(MotionPlayerEvent.SHOW_UI);
			}
			else
			{
				event = new MotionPlayerEvent(MotionPlayerEvent.HIDE_UI);
			}
			
			this.dispatchEvent(event);
		}
		private function requestConfig():void
		{
			_configMap["plugin.battle.ninjacfg"] = getMissionBin("plugin.battle.ninjacfg");
			_configMap["plugin.battle.ninjaBaseCfg"] = getMissionXml("plugin.battle.ninjaBaseCfg");
			_configMap["plugin.battle.buffInfos"] = getMissionXml("plugin.battle.buffInfos");
			_configMap["plugin.battle.buffRefInfos"] = getMissionXml("plugin.battle.buffRefInfos");
			_configMap["plugin.battle.skillInfo"] = getMissionXml("plugin.battle.skillInfo");
			_configMap["plugin.battle.buffEffect"] = getMissionXml("plugin.battle.buffEffect");
			_configMap["plugin.battle.skillAcion"] = getMissionXml("plugin.battle.skillAcion");
			_configMap["plugin.battle.skillAttribute"] = getMissionXml("plugin.battle.skillAttribute");
			_configMap["plugin.battle.effectcfg"] = getMissionXml("plugin.battle.effectcfg");
			_configMap["plugin.battle.shareEffectcfg"] = getMissionXml("plugin.battle.shareEffectcfg");
			_configMap["plugin.battle.scenePicture"] = getMissionXml("plugin.battle.scenePicture");
			_configMap["plugin.battle.scenePosition"] = getMissionXml("plugin.battle.scenePosition");
			_configMap["plugin.battle.sceneEffect"] = getMissionXml("plugin.battle.sceneEffect");
			_configMap["plugin.battle.enchantment"] = getMissionXml("plugin.battle.enchantment");
			_configMap["plugin.battle.shield"] = getMissionXml("plugin.battle.shield");
			_configMap["plugin.battle.logicResEffect"] = getMissionXml("plugin.battle.logicResEffect");
		}
		
		private function getMissionXml(name:String):XML
		{
			return _resMgr.getPluginAsset(name) as XML;
		}
		
		private function getMissionBin(name:String):ByteArray
		{
			return _resMgr.getPluginAsset(name) as ByteArray;
		}
		
		private function reqeustDefaultRes():void
		{
			var maskMc:MovieClip;
			var loaderMission:Loader;
			var bitmapShareMission:Loader;
			var vectorgraphShareMission:Loader;
			
			_ninjaMgr.resMap["plugin.battle.ninjaDefault"] = _resMgr.getPluginAsset("plugin.battle.ninjaDefault");
			_ninjaMgr.resMap["plugin.battle.battleUI"] = _resMgr.getPluginAsset("plugin.battle.battleUI");
			_ninjaMgr.resMap["plugin.battle.ninjaShadow"] = _resMgr.getPluginAsset("plugin.battle.ninjaShadow");
			_effectMgr.resMap["plugin.battle.effect"] = _resMgr.getPluginAsset("plugin.battle.effect");
			_sceneMgr.resMap["plugin.battle.overText"] = _resMgr.getPluginAsset("plugin.battle.overText");
			
			bitmapShareMission = _resMgr.getPluginAsset("plugin.battle.bitmapShare") as Loader;
			MMEAssetsProvider.asstets.setSharedAppDomain(bitmapShareMission.contentLoaderInfo.applicationDomain, "");
			_effectMgr.setBitmapShareDomain(bitmapShareMission.contentLoaderInfo.applicationDomain);
			
			vectorgraphShareMission = _resMgr.getPluginAsset("plugin.battle.vectorgraphShare") as Loader;
			_effectMgr.setVectorgraphShareDomain(vectorgraphShareMission.contentLoaderInfo.applicationDomain);
		}
		
		private function onSkillResReques(evt:SkillEvent):void
		{
			_loader.loadTask(evt.url, processSkillRes, null, new ApplicationDomain(), false);
		}
		
		private function processSkillRes(loader:Loader, url:String):void 
		{
			if(_effectMgr && loader && loader.contentLoaderInfo)
			{
				_effectMgr.resMap[url] = loader.contentLoaderInfo.applicationDomain;
				_effectMgr.updateEffectRes(url);
			}
		}
		
		private function onNinjaResReques(evt:NinjaEvent):void
		{
			for each(var url:String in evt.urlList)
			{
				_loader.registerProgressListener(url, processNinjaResProgress);
				_loader.loadTask(url, processNinjaRes, null, new ApplicationDomain(), false);
			}
		}
		
		private function processNinjaResProgress(e:ProgressEvent, url:String):void 
		{
			_ninjaMgr.onMissionProgress(url, e.bytesTotal, e.bytesLoaded);
		}
		
		private function processNinjaRes(loader:Loader, url:String):void 
		{
			if(_ninjaMgr && loader && loader.contentLoaderInfo)
			{
				_ninjaMgr.onMissionComplete(url, loader.contentLoaderInfo.applicationDomain);
			}
		}
		/**
		 * 用于驱动重播
		 */
		private var renderCallBackFunc:Function;
		public function setRendererCallBack(value:Function):void
		{
			renderCallBackFunc = value;
		}
		
		public function get rendererIndex():int
		{
			return _rendererIndex;
		}
		
		private function onAirAfterEffectEvent(params:Array):void
		{
			var refPoint:Point;
			//var loader:LoaderMission;
			var res:MovieClip;
			var afterEffect:BaseAfterEffect;
			var scale:Boolean;
			
			refPoint = params[0] as Point;
			res = params[1] as MovieClip;
			scale = params[2];
			
			if(res == null)
			{
				return ;
			}
			
			afterEffect = new AirAfterEffect();
			(afterEffect as AirAfterEffect).init([res, 1300, 780, refPoint, scale]);
			afterEffect.addEventListener(Event.COMPLETE, onAfterEffectComplete);
			
			addChild(afterEffect);
			
			_afterEffectList.push(afterEffect);
		}
		
		public function slowOver():void
		{
			this._sceneMgr.showOverText();
			this._sceneMgr.setSceneWhiteMask(1, 0.2);
			TweenManager.delayedCall(0.2, onOverMaskComplete);
		}
		
		private function onOverMaskComplete():void
		{
			TweenManager.delayedCall(2.3, resetOverMask);
		}
		
		private function resetOverMask():void
		{
			this._sceneMgr.setSceneWhiteMask(0, 0.5);
		}
		
		public function render():void
		{
			if(MotionData.debug)
			{
				logger.output("render");
			}
			
			if(renderCallBackFunc != null)
			{
				renderCallBackFunc(_rendererIndex);
			}
			
			FightManagerCenter.preRender();
			FightManagerCenter.renderer();
			FightManagerCenter.afterRender();
			/*
			for each(var player:BasePlayer in _playingPlayers)
			{
			player.rendererIndex += 1;
			}
			*/
			for each(var afterEffect:BaseAfterEffect in _afterEffectList)
			{
				afterEffect.render(_sceneMgr);
			}
			
			_rendererIndex += 1;
		}
		
		public function onBuffEffect(evt:BuffEvent):void
		{
			var ninja:Ninja;
			var buffEffectInfo:BuffEffectInfo;
			
			buffEffectInfo = evt.buffEffectInfo;
			ninja = _ninjaMgr.getNinjaByPos(buffEffectInfo.pos);
			ninja.closeBuffEffect(buffEffectInfo);
		}
		
		public function onBuffAdd(evt:BuffEvent):void
		{
			var ninja:Ninja;
			var buffInfo:BuffInfo;
			var buffCfg:BuffInfoCfg;
			var logicEffectInfoCfg:LogicEffectInfoCfg;
			var logicResEffectInfo:LogicEffectResEffectInfo;
			
			buffInfo = evt.buffInfo;
			buffCfg = BuffConfig.getBuffInfoCfg(buffInfo.buffId);
			
			if(buffCfg == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4316_0") + buffInfo.buffId + I18n.lang("as_motion_1451031573_4316_1"));
			}
			
			if(!buffCfg.addBuffEffect || !buffCfg.addBuffEffect.resComplete)
			{
				buffCfg.addBuffEffect = _skillMgr.getEffectInfo(buffCfg.addBuffEffectId);
			}
			if(!buffCfg.buffEffect || !buffCfg.buffEffect.resComplete)
			{
				buffCfg.buffEffect = _skillMgr.getEffectInfo(buffCfg.buffEffectId);
			}
			
			if(buffInfo.logicEffectInfo && buffInfo.logicEffectInfo.cfg)
			{
				logicEffectInfoCfg = buffInfo.logicEffectInfo.cfg;
				for each(logicResEffectInfo in logicEffectInfoCfg.resEffectInfoList)
				{
					logicResEffectInfo.startEffectInfo = _skillMgr.getEffectInfo(logicResEffectInfo.startEffectId);
					logicResEffectInfo.continueEffectInfo = _skillMgr.getEffectInfo(logicResEffectInfo.continueEffectId);
					logicResEffectInfo.endEffectInfo = _skillMgr.getEffectInfo(logicResEffectInfo.endEffectId);
					
					if(logicResEffectInfo.startEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4317_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4317_1"));}
					if(logicResEffectInfo.continueEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4318_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4318_1"));}
					if(logicResEffectInfo.endEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4319_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4319_1"));}
				}
			}
			
			//			buffCfg.idleEffect = _skillMgr.getEffectInfo(buffCfg.idleEffectId);
			
			buffInfo.cfg = buffCfg;
			ninja = _ninjaMgr.getNinjaByPos(buffInfo.pos);
			ninja.addBuff(buffInfo);
			
			//			if(buffCfg.idleEffectId != 0)
			//			{
			//				ninja.addIdleEffect(buffCfg.idleEffect);
			//			}
		}
		
		public function onBuffRemove(evt:BuffEvent):void
		{
			var ninja:Ninja;
			var buffInfo:BuffInfo;
			var buffCfg:BuffInfoCfg;
			
			buffInfo = evt.buffInfo;
			buffCfg = BuffConfig.getBuffInfoCfg(buffInfo.buffId);
			buffInfo.cfg = buffCfg;
			ninja = _ninjaMgr.getNinjaByPos(buffInfo.pos);
			ninja.removeBuff(buffInfo);
		}
		
		public function onBuffClosing(evt:BuffEvent):void
		{
			var ninja:Ninja;
			var buffInfo:BuffInfo;
			var buffCfg:BuffInfoCfg;
			
			buffInfo = evt.buffInfo;
			buffCfg = BuffConfig.getBuffInfoCfg(buffInfo.buffId);
			ninja = _ninjaMgr.getNinjaByPos(buffInfo.pos);
			ninja.closeBuff(buffInfo, buffCfg);
			
			//回合末结算死亡由stageAction来退场
			if(ninja.data.hp <= 0)
			{
				if(ninja.isExeunt == false)
				{
					ninja.dead();
				}
			}
		}
		
		private function onShieldAdd(evt:ShieldEvent):void
		{
			var ninja:Ninja;
			var shieldInfo:ShieldInfo;
			var shieldInfoCfg:ShieldInfoCfg;
			
			shieldInfo = evt.shieldInfo;
			shieldInfoCfg = shieldInfo.cfg;
			ninja = _ninjaMgr.getNinjaByPos(shieldInfo.pos);
			
			ninja = _ninjaMgr.getNinjaByPos(shieldInfo.pos);
			ninja.addShield(shieldInfo);
		}
		
		private function onShieldRemove(evt:ShieldEvent):void
		{
			var ninja:Ninja;
			var shieldInfo:ShieldInfo;
			var shieldInfoCfg:ShieldInfoCfg;
			
			shieldInfo = evt.shieldInfo;
			shieldInfoCfg = shieldInfo.cfg;
			ninja = _ninjaMgr.getNinjaByPos(shieldInfo.pos);
			ninja.removeShield(shieldInfo);
		}
		
		private function onShieldClose(evt:ShieldEvent):void
		{
			var ninja:Ninja;
			var shieldInfo:ShieldInfo;
			
			shieldInfo = evt.shieldInfo;
			
			ninja = _ninjaMgr.getNinjaByPos(shieldInfo.pos);
			ninja.closeShield(shieldInfo);
		}
		
		public function set configMap(value:Dictionary):void
		{
			_configMap = value;
		}
		
		public function set frameResMaps(value:Dictionary):void
		{
			_frameMgr.resMap = value;
		}
		
		public function set roleResMaps(value:Dictionary):void
		{
			_ninjaMgr.resMap = value;
		}
		
		public function set effectResMap(value:Dictionary):void
		{
			_effectMgr.resMap = value;
		}
		
		public function set sceneResMap(value:Dictionary):void
		{
			_sceneMgr.resMap = value;
		}
		
		public function updateConfig(flush:Boolean = false):void
		{
			var cfg:Object;
			var resName:String;
			var fieldName:String;
			
			requestConfig();
			
			if(_configMap == null || _configMap == null)//TODO 死代码
			{
				throw new Error(I18n.lang("as_motion_1451031573_4321"));
				return ;
			}
			
			for each(var cfgInfo:Object in _configInfoList)
			{
				cfg = cfgInfo.cfg;
				resName = cfgInfo.resName;
				fieldName = cfgInfo.fieldName;
				
				if(cfg.inited == true && flush == true)
				{
					cfg.inited = false;
				}
				
				if(cfg.inited == false)
				{
					cfg[fieldName] = _configMap[resName];
					//					if(cfg.configXml == null)
					//					{
					//						throw new Error("配置 " + resName + " 未设置");
					//						return ;
					//					}
				}
			}
		}
		//TODO 死代码
		public function effectComplete(path:String, domain:ApplicationDomain):void
		{
			_effectMgr.onEffectComplete(path, domain);
		}
		//TODO 死代码
		public function roleResProgress(path:String, byteTotal:uint, byteLoad:uint):void
		{
			_ninjaMgr.onMissionProgress(path, byteTotal, byteLoad);
		}
		//TODO 死代码
		public function roleResComplete(path:String, domain:ApplicationDomain):void
		{
			_ninjaMgr.onMissionComplete(path, domain);
		}
		
		public function updateNinjaOnline(teamId:int, isOnline:Boolean):void
		{
			var battleNinja:Ninja;
			var ninjaMap:Dictionary;
			
			ninjaMap = _ninjaMgr.getNinjaMap();
			for each(battleNinja in ninjaMap)
			{
				if(battleNinja.data.teamId == teamId)
				{
					battleNinja.isOnline = isOnline;
				}
			}
		}
		
		public function updateNinjaHp(pos:int, hp:int):void
		{
			var diff:int;
			var ninja:Ninja;
			var hpChangedInfo:HpChangedInfo;
			var baseChangInfo:BaseChangedInfo;
			
			ninja = _ninjaMgr.getNinjaByPos(pos);
			if(ninja == null)
			{
				MotionLogger.output("[Battle]", "[warring][updateNinjaHp]", I18n.lang("as_motion_1451031573_4322") +　pos);
				return ;
			}
			diff = ninja.data.hp - hp;
			if(diff != 0)
			{
				hpChangedInfo = new HpChangedInfo();
				hpChangedInfo.hp = hp;
				hpChangedInfo.oldHp = ninja.data.hp;
				hpChangedInfo.curHp = ninja.data.hp;
				
				baseChangInfo = new BaseChangedInfo();
				baseChangInfo.type = BaseChangedInfo.BLOOD;
				baseChangInfo.value = -diff;
				hpChangedInfo.baseChangedInfoList = [baseChangInfo];
				ninja.updateHp(hpChangedInfo, false, 1, 1, true);
				if(hpChangedInfo.curHp == 0)
				{
					ninja.dead();
				}
			}
		}
		
		public function showNinjaGuid(pos:int):void
		{
			var ninja:Ninja;
			
			resetNinjaGuid();
			
			if(pos != -1)
			{
				ninja = _ninjaMgr.getNinjaByPos(pos);
				(ninja as Ninja).showGuid();
			}
		}
		
		private function resetNinjaGuid():void
		{
			var roleMap:Dictionary;
			
			roleMap = _ninjaMgr.getNinjaMap();
			for each(var ninja:Ninja in roleMap)
			{
				(ninja as Ninja).hideGuid();
			}
		}
		
		public function updateRole():void
		{
			if(_configMap == null)//TODO 死代码
			{
				throw new Error(I18n.lang("as_motion_1451031573_4324"));
				return ;
			}
			resetRole();
			
			reqeustDefaultRes();
		}
		
		public function showScene(sceneId:int):void
		{
			_sceneMgr.showSecen(sceneId);
		}
		
		public function updateSceneInfo(sceneId:int):void
		{
			_sceneMgr.updateSceneInfo(sceneId);
		}
		//TODO 这方法好像没用
		public function updateEffect():void
		{
			if(_effectMgr.resMap == null || _configMap == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4325"));
				return ;
			}
			
			//			_effectMgr.updateEffectRes();
		}
		
		public function resetRole():void
		{
			var ptLen:int;
			var roleMap:Dictionary;
			var ninja:Ninja;
			
			roleMap = _ninjaMgr.getNinjaMap();
			for each(ninja in roleMap)
			{
				_sceneMgr.removeSceneItem(ninja.data.pos);
				_ninjaMgr.releaseNinja(ninja.data.pos);
			}
			
			CollectionClearUtil.clearDictionary(roleMap);
			
			setTimeout(dispathSceneMouseMoveEvent, 0);//TODO 看不懂
		}
		
		private function dispathSceneMouseMoveEvent():void
		{
			var mouseEvent:MouseEvent;
			
			mouseEvent = new MouseEvent(MouseEvent.MOUSE_MOVE);
			if(_sceneMgr){_sceneMgr.dispatchEvent(mouseEvent);}
		}
		
		private var roundEndStageActions:Array = [];
		public function roundEndStageAction(actionList:Array):void
		{
			roundEndStageActions = actionList || [];
			
			for each(var actionInfo:BaseActionInfo in actionList)
			{
				playAction(actionInfo);
			}
		}
		
		private var deadNinjaList:Array = [];
		public function roundEnd(shieldInfos:Array, buffInfos:Array, roundIndex:int = 0):void
		{
			var logStr:String;
			
			var ninja:Ninja;
			var mediumActionIndex:int;
			var event:MotionPlayerEvent;
			var preActionBuffInfoList:Array = [];
			var afterActionBuffInfoList:Array = [];
			var preShieldInfoList:Array = [];
			var afterShieldInfoList:Array = [];
			
			logger.output("[RoundEnd]","[onRoundEnd]", roundIndex);
			
			
			for each(var buffInfo:BuffInfo in buffInfos)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(buffInfo.pos);
				
				if(ninja)
				{
					preActionBuffInfoList.push(buffInfo);
					
					if(buffInfo.hp == 0 && buffInfo.close == 4 && buffInfo.type == 3)
					{
						if(deadNinjaList.indexOf(ninja) == -1)
						{
							deadNinjaList.push(ninja);
							EventCenter.addEventHandler(ninja, RenderEvent.ROLE_DEAD, onDeadEnd);
							EventCenter.addEventHandler(ninja, RenderEvent.ROLE_EXEUNT, onDeadEnd);
						}
					}
				}
				else
				{
					afterActionBuffInfoList.push(buffInfo);
				}
			}
			
			for each(var shieldInfo:ShieldInfo in shieldInfos)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByArea(shieldInfo.pos);
				if(ninja)
				{
					preShieldInfoList.push(shieldInfo);
				}
				else
				{
					afterShieldInfoList.push(shieldInfo);
				}
			}
			
			
			_buffMgr.executeBuff(preActionBuffInfoList, 4);
			_shieldMgr.execute(preShieldInfoList, 4);
			
			if(deadNinjaList.length == 0 && roundEndStageActions.length == 0)
			{
				dispatchEvent(new MotionEvent(MotionEvent.ROUND_END));
			}
			
			_buffMgr.executeBuff(afterActionBuffInfoList, 4);
			_shieldMgr.execute(afterShieldInfoList, 4);
			
			logStr = LogUtil.getLogStr(buffInfos);
			MotionLogger.output("[Action]", "[roundEnd]buffInfos:" + logStr);
		}
		
		
		private function onDeadEnd(target:Object):void
		{
			var ninja:Ninja;
			
			ninja = target as Ninja;
			
			if(deadNinjaList.indexOf(ninja) == -1)
			{
				return ;
			}
			deadNinjaList.splice(deadNinjaList.indexOf(ninja), 1);
			
			EventCenter.removeEventHandler(ninja, RenderEvent.ROLE_DEAD, onDeadEnd);
			EventCenter.removeEventHandler(ninja, RenderEvent.ROLE_EXEUNT, onDeadEnd);
			
			if(deadNinjaList.length == 0 && roundEndStageActions.length == 0)
			{
				dispatchEvent(new MotionEvent(MotionEvent.ROUND_END));
			}
		}
		public function preLoadRoelRes(sceneId:int, ninjaList:Array, contractPetInfo:NinjaInfo):Vector.<String>
		{
			var id:int;
			var cfgInfo:NinjaBattleCfgInfo;
			var skillIdList:Array;
			var skillActionEffect:Array;
			var skillInfo:SkillInfo;
			var buffInfoCfg:BuffInfoCfg;
			var logicEffectInfo:LogicEffectInfo;
			var logicEffectInfoCfg:LogicEffectInfoCfg;
			var logicResEffectInfo:LogicEffectResEffectInfo;
			var buffIds:Array;
			var urlList:Vector.<String>;
			var isLeft:Boolean;
			var stageInfo:StageInfo;
			var sceneInfo:SceneInfo;
			var effectRes:String;
			var loadNinjaList:Array;
			var resEffectId:int;
			
			urlList = new Vector.<String>();
			skillIdList = [];
			buffIds = [];
			skillActionEffect = [];
			
			loadNinjaList = ninjaList.concat();
			if(contractPetInfo != null)
			{
				loadNinjaList.push(contractPetInfo);
			}
			for each(var ninjaInfo:NinjaInfo in loadNinjaList)
			{
				skillIdList = skillIdList.concat(ninjaInfo.skillList);
				isLeft = SceneConfig.getPosIsServerLeft(ninjaInfo.pos);
				
				cfgInfo = NinjaConfig.getNinjaInfoById(ninjaInfo.ninjaId);
				if(cfgInfo.resCfgInfo.mirrorRes == true && isLeft == false)
				{
					updateUrlList(urlList, cfgInfo.resCfgInfo.rightRes);
				}
				else
				{
					updateUrlList(urlList, cfgInfo.resCfgInfo.leftRes);
				}
				
				if(cfgInfo.resCfgInfo.scene != 0)//TODO: 没用
				{
					sceneInfo = SceneConfig.getSceneInfo(cfgInfo.resCfgInfo.scene);
				}
				
				updateUrlList(urlList, ninjaInfo.res);
				skillActionEffect.push(cfgInfo.resCfgInfo.skillActionEffect);
				
				effectRes = FightManagerCenter.skillMgr.getEffectRes(cfgInfo.resCfgInfo.skillActionEffect);
				updateUrlList(urlList, effectRes);
				
				if(cfgInfo.resCfgInfo.beHitEffectId != 0)
				{
					effectRes = EffectConfig.getEffectInfoById(cfgInfo.resCfgInfo.beHitEffectId).res;
					updateUrlList(urlList, effectRes);
				}
				
				for each(logicEffectInfo in ninjaInfo.logicEffectList)
				{
					if(logicEffectInfo.cfg != null)
					{
						for each(logicResEffectInfo in logicEffectInfo.cfg.resEffectInfoList)
						{
							logicResEffectInfo.startEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.startEffectId);
							effectRes = FightManagerCenter.skillMgr.getEffectRes(logicResEffectInfo.startEffectId);
							updateUrlList(urlList, effectRes);
							
							logicResEffectInfo.continueEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.continueEffectId);
							effectRes = FightManagerCenter.skillMgr.getEffectRes(logicResEffectInfo.continueEffectId);
							updateUrlList(urlList, effectRes);
							
							logicResEffectInfo.endEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.endEffectId);
							effectRes = FightManagerCenter.skillMgr.getEffectRes(logicResEffectInfo.endEffectId);
							updateUrlList(urlList, effectRes);
							
							if(logicResEffectInfo.startEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4328_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4328_1"));}
							if(logicResEffectInfo.continueEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4329_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4329_1"));}
							if(logicResEffectInfo.endEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4330_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4330_1"));}
						}
					}
				}
			}
			
			for each(id in skillIdList)
			{
				var skillResList:Array;
				
				skillResList = FightManagerCenter.skillMgr.getSkillRes(id);
				for each(var url:String in skillResList)
				{
					updateUrlList(urlList, url);
				}
				skillInfo = SkillConfig.getSkillInfo(id);
				
				buffIds = skillInfo.buffIds;
				
				for each(var buffId:int in buffIds)
				{
					if(buffId == 0)
					{
						continue ;
					}
					
					buffInfoCfg = BuffConfig.getBuffInfoCfg(buffId);
					logicEffectInfoCfg = PassiveEffectConfig.getBuffLogicEffectCfg(buffId);
					if(logicEffectInfoCfg != null)
					{
						for each(logicResEffectInfo in logicEffectInfoCfg.resEffectInfoList)
						{
							logicResEffectInfo.startEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.startEffectId);
							effectRes = FightManagerCenter.skillMgr.getEffectRes(logicResEffectInfo.startEffectId);
							updateUrlList(urlList, effectRes);
							
							logicResEffectInfo.continueEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.continueEffectId);
							effectRes = FightManagerCenter.skillMgr.getEffectRes(logicResEffectInfo.continueEffectId);
							updateUrlList(urlList, effectRes);
							
							logicResEffectInfo.endEffectInfo = FightManagerCenter.skillMgr.getEffectInfo(logicResEffectInfo.endEffectId);
							effectRes = FightManagerCenter.skillMgr.getEffectRes(logicResEffectInfo.endEffectId);
							updateUrlList(urlList, effectRes);
							
							if(logicResEffectInfo.startEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4331_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4331_1"));}
							if(logicResEffectInfo.continueEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4332_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4332_1"));}
							if(logicResEffectInfo.endEffectInfo == null){throw new Error(I18n.lang("as_motion_1451031573_4333_0") + logicResEffectInfo.effect + I18n.lang("as_motion_1451031573_4333_1"));}
						}
					}
					
					if(buffInfoCfg == null)
					{
						throw new Error("buff:" + buffId + I18n.lang("as_motion_1451031573_4334"));
					}
					
					effectRes = FightManagerCenter.skillMgr.getEffectRes(buffInfoCfg.buffEffectId);
					updateUrlList(urlList, effectRes);
					effectRes = FightManagerCenter.skillMgr.getEffectRes(buffInfoCfg.addBuffEffectId);
					updateUrlList(urlList, effectRes);
				}
			}
			
			for each(id in skillActionEffect)//TODO:　前面已经加过一次了
			{
				effectRes = FightManagerCenter.skillMgr.getEffectRes(id);
				updateUrlList(urlList, effectRes);
			}
			
			//_resMgr.requestRes(urlList);
			//			for each(url in urlList) _loader.loadTask(url, null, null, null, false);
			
			sceneInfo = SceneConfig.getSceneInfo(sceneId);
			if(sceneId != 0)
			{
				updateUrlList(urlList, sceneInfo.res);
			}
			
			if(sceneId != 0 && urlList.indexOf(sceneInfo.res) != -1)
			{
				updateUrlList(urlList, sceneInfo.res);
				//_resMgr.requestRes([sceneInfo.res], onSceneResComplete);
				//				_loader.loadTask(sceneInfo.res, null, null, null, false);
			}
			
			if(sceneId == 0)
			{
				logger.output("sceneId is 0");
			}
			
			return urlList;
		}
		
		private function processSceneRes(loader:Loader, url:String):void 
		{
			_sceneMgr.resMap[url] = loader;
		}
		
		private function updateUrlList(urlList:Vector.<String>, url:String):Vector.<String>
		{
			if (_loader.hasLoadTask(url))
			{
				return urlList;
			}
			
			if(url)
			{
				if(urlList.indexOf(url) == -1)
				{
					urlList.push(url);
				}
			}
			
			return urlList;
		}
		
		
		public function updateFrameRate():void
		{
			FightManagerCenter.updateFrameRate();
		}
		
		private function onActionComplete(evt:BasePlayerEvent):void
		{
			var player:BasePlayer;
			var actionInfo:Object;
			
			player = evt.currentTarget as BasePlayer;
			
			logger.output("[MotionPlayer]", "[onActionComplete] _playingPlayers.indexOf(player)=", _playingPlayers.indexOf(player));
			
			_playingPlayers.splice(_playingPlayers.indexOf(player), 1);
			
			actionInfo = player.actionInfo;
			//removeActionInfo(actionInfo);
			
			player.removeEventListener(BasePlayerEvent.PLAY_COMPLETE, onActionComplete);
			
			removeAllAfterEffect();
			
			if(roundEndStageActions.length != 0)
			{
				var i:int = roundEndStageActions.indexOf(actionInfo);
				if (i != -1) 
				{
					roundEndStageActions.splice(i, 1);
					if (deadNinjaList.length == 0 && roundEndStageActions.length == 0) { 
						dispatchEvent(new MotionEvent(MotionEvent.ROUND_END)); 
					}
					return ;
				}
			}
			
			var me:MotionEvent = new MotionEvent(MotionEvent.ACTION_COMPLETE);
			me.actionInfo = actionInfo;
			dispatchEvent(me);
		}
		
		public function playActions(actionList:Array):void
		{
			for each(var actionInfo:BaseActionInfo in actionList)
			{
				playAction(actionInfo);
			}
		}
		
		private function playAction(_action:BaseActionInfo):void
		{
			var player:BasePlayer;
			
			//把数据放进播放器进行播放就行了�?其他就交给播放器去搞这里不用管了�?
			player = new _commondClsMap[_action.actionType]();
			_playingPlayers.push(player);
			player.actionIndex = _actionIndex;//TODO 没用
			player.addEventListener(BasePlayerEvent.PLAY_COMPLETE, onActionComplete);
			player.playAction(_action, _ninjaMgr, _buffMgr, _skillMgr, _sceneMgr);
		}
		
		private var skillActionEffectList:Array = [];
		public function useSpecialSkillReady(ninjaPos:int, skillIndex:int):void
		{
			var ninja:Ninja;
			var ninjaCfg:NinjaBattleCfgInfo;
			var skillActionEffect:EffectInfo;
			var skillInfo:SkillInfo;
			var skillId:int;
			
			MotionLogger.output("[Battle]", "[MotionPlayer]useSpecialSkillReady:ninjaPos="+ninjaPos);
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(ninjaPos);
			
			if(ninja == null)
			{
				MotionLogger.output("[useSpecialSkillReady]", "error", "pos", ninjaPos + "is null");
				return ;
			}
			
			skillId = ninja.data.specialSkillIds[skillIndex];
			skillInfo = SkillConfig.getSkillInfo(skillId);
			
			if(ninja == null)
			{
				MotionLogger.output("[useSpecialSkillReady]", "error", "skillInfo", "pos", ninjaPos, "index", skillIndex + "is null");
				return ;
			}
			
			ninjaCfg = NinjaConfig.getNinjaInfoById(ninja.data.ninjaId);
			skillActionEffect = _skillMgr.getEffectInfo(ninjaCfg.resCfgInfo.skillActionEffect);
			ninja.showSkillIcon(skillIndex, skillId, NinjaMotionDef.skillIdle_2, skillActionEffect);
		}
		
		public function useSpecialSkill(ninjaPos:int):void
		{
		}
		
		public function noticeUseSkill(ninjaPos:int, skillId:int):void
		{
			var ninja:Ninja;
			var ninjaCfg:NinjaBattleCfgInfo;
			var skillActionEffect:EffectInfo;
			
			MotionLogger.output("[Battle]", "[MotionPlayer]useSpecialSkill:ninjaPos="+ninjaPos);
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(ninjaPos);
			ninja.hideSkillIcon();
		}
		
		public function cancelSpecialSkillReady(ninjaPos:Array):void
		{
			var ninja:Ninja;
			var ninjaCfg:NinjaBattleCfgInfo;
			var skillActionEffect:EffectInfo;
			var skillEnd:Boolean;
			
			for each(var pos:int in ninjaPos)
			{
				MotionLogger.output("[Battle]", "[MotionPlayer]useSpecialSkill:ninjaPos="+pos);
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(pos);
				ninja.cancelSkillIcon();
			}
		}
		public function getSelectedNinjaPos():int
		{
			return FightManagerCenter.sceneMgr.getSelectedFloorGridPos();
		}
		
		public function getNinjaByArea(pos:int):Ninja
		{
			return FightManagerCenter.ninjaMgr.getNinjaByArea(pos);
		}
		
		override public function get width():Number
		{
			if(scrollRect)
			{
				return scrollRect.width - scrollRect.x;
			}
			return super.width;
		}
		
		override public function get height():Number
		{
			if(scrollRect)
			{
				return scrollRect.height - scrollRect.y;
			}
			return super.height
		}
		
		public function destroy():void
		{
			var cfg:Object;
			var player:BasePlayer;
			var roleMap:Dictionary;
			
			//CollectionClearUtil.clearDictionary(_configMap);
			_configMap = null;
			
			for each(player in _playingPlayers)
			{
				player.removeEventListener(BasePlayerEvent.PLAY_COMPLETE, onActionComplete);
				player.destroy();
			}
			
			
			_effectMgr.destroy();
			_sceneMgr.destroy();
			_ninjaMgr.destroy();
			_skillMgr.destroy();
			
			//LoadManager.pub::gc(_loader);
			//			_loader.disposeAll();
			
			_buffMgr.removeEventListener(BuffEvent.BUFF_ADD, onBuffAdd);
			_buffMgr.removeEventListener(BuffEvent.BUFF_CLOSING, onBuffClosing);
			_buffMgr.removeEventListener(BuffEvent.BUFF_REMOVE, onBuffRemove);
			_shieldMgr.removeEventListener(ShieldEvent.SHIELD_ADD, onShieldAdd);
			_shieldMgr.removeEventListener(ShieldEvent.SHIELD_CLOSING, onShieldClose);
			_shieldMgr.removeEventListener(ShieldEvent.SHIELD_REMOVE, onShieldRemove);
			_skillMgr.removeEventListener(SkillEvent.RES_REQUEST, onSkillResReques);
			_ninjaMgr.removeEventListener(NinjaEvent.RES_REQUEST, onNinjaResReques);
			
			EventCenter.removeEventHandler(_ninjaMgr, MotionPlayerEvent.HIDE_UI, onUIVisibleChanged);
			
			EventCenter.destroy();
			
			removeChild(_sceneMgr as DisplayObject);
			
			//			for each(var cfgInfo:Object in _configInfoList)
			//			{
			//				cfg = cfgInfo.cfg;
			//				cfg.inited = false;
			//				cfg["destroy"]();
			//			}
			
			FightManagerCenter.destroy();
			autoSetNull();
		}
		
		public function hasPlayingPlayer():Boolean 
		{
			return _playingPlayers.length != 0
		}
		
		public function autoSetNull():void
		{
			
			_configMap = null;
			_playingPlayers = null;
			_sceneMgr = null;
			_ninjaMgr = null;
			_skillMgr = null;
			_buffMgr = null;
			_shieldMgr = null;
			_effectMgr = null;
			_frameMgr = null;
			_resMgr = null;
			_afterEffectList = null;
			_configInfoList = null;
			_enterPlayer = null;
			_commondClsMap = null;
			_loader = null;
			renderCallBackFunc = null;
			deadNinjaList = null;
			skillActionEffectList = null;
		}
	}
}