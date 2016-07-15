package com.tencent.morefun.naruto.plugin.motion.manager.ninja
{
	
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.data.AttributeChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.BaseChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.BuffEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.HpChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.KathaChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.LogicEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.LogicEffectInfoCfg;
	import com.tencent.morefun.naruto.plugin.motion.data.LogicEffectResEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.NinjaBattleCfgInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.StageNinjaActionType;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffInfoCfg;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.view.Effect;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.def.NinjaDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.VirtualNinjaMouseEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.AttributeChangedUI;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.BaseInfoChangedUI;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.Body;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.HpBar;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.KathaChangedUI;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.NinjaUI;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.Shadow;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.control.BaseChangedUICtr;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldInfo;
	import com.tencent.morefun.naruto.plugin.motion.notice.AddSceneNinjaUINotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.HpChangedNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.HpUpdateNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.KathaChangedNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.MoneyUpdateNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.NinjaDeadNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.PlayNinjaDeadSoundNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.PlaySoundNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.RemoveSceneNinjaUINotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.SlowRenderNotice;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.GlowFilter;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.system.ApplicationDomain;
	import flash.utils.Dictionary;
	
	import majorRole.def.MajorNinjaDef;
	
	import skill.SkillAssetDef;
	
    import com.tencent.morefun.naruto.i18n.I18n;
	public class Ninja extends Sprite
	{
		public var body:Body;
		public var baseUI:NinjaUI;
		public var buff:Effect;
		public var skillEffect:Effect;
		public var buffEffect:Effect;
		public var shadow:Shadow;
		public var effect:Effect;
		public var baseInfoChangedUI:BaseInfoChangedUI;
		public var kathaChangedUI:KathaChangedUI;
		public var attributeChangedUI:AttributeChangedUI;
		
		private var curShowingBuff:BuffInfo;
		private var curColorEffectInfo:EffectInfo;
		
		private var skillActionEffect:EffectInfo;
		private var buffInfoList:Array = [];
		private var effectInfoList:Array = [];
		private var skillEffectInfoList:Array = [];
		private var buffEffectInfoList:Array = [];
		private var logicEffectList:Array = [];
		private var shieldInfo:ShieldInfo;
		
		private var curRenderIndex:int;
		private var lastBuffUpdateRenderIndex:int;
		private var baseChangedUICtr:BaseChangedUICtr;
		
		private var _isRollOver:Boolean;
		private var _isRealLeft:Boolean;
		private var _isFight:Boolean;
		private var _isDefence:Boolean;
		private var _gainDefence:Boolean;
		private var _isExeunt:Boolean;
		private var _isSkillIdle:Boolean;
		private var _x:int;
		private var _y:int;
		private var _isMirror:Boolean;
		private var _cfg:NinjaBattleCfgInfo;
		private var _data:NinjaInfo;
		private var _isIdle:Boolean;
		private var _skillId:int;
		
		private var _remainActionFrame:int;
		private var _isUseSkill:Boolean;
		
		private var _ninjaIdleAction:String;
		private var _ninjaIdleEffect:EffectInfo;
		
		private var _skillIdleAction:String;
		private var _skillIdleEffect:EffectInfo;
		
		private var comboRender:MmeAssetRender;
		
		private var _isSelected:Boolean;
		private var _selectedEffectFront:NinjaSelectedEffectFront;
		private var _selectedEffectBack:NinjaSelectedEffectBack;
		private var bodyOverFilter:GlowFilter = new GlowFilter(0x66ff00, 10, 5, 5);
		private var bodySelectFileter:GlowFilter = new GlowFilter(0xffffff, 10, 5, 5);
		public function Ninja()
		{
			super();
			
			baseUI = new NinjaUI();
			body = new Body();
			buff = new Effect();
			buffEffect = new Effect();
			skillEffect = new Effect();
			effect = new Effect();
			shadow = new Shadow(effect);
			kathaChangedUI = new KathaChangedUI();
			baseInfoChangedUI = new BaseInfoChangedUI();
			attributeChangedUI = new AttributeChangedUI();
			
			baseChangedUICtr = new BaseChangedUICtr(kathaChangedUI, baseInfoChangedUI, attributeChangedUI);
			
			_selectedEffectFront = new NinjaSelectedEffectFront();
			_selectedEffectBack = new NinjaSelectedEffectBack();
			
			buff.setCentreLayer(body);
			buffEffect.setCentreLayer(buff);
			skillEffect.setCentreLayer(buffEffect);
			effect.setCentreLayer(skillEffect);
			
			comboRender = new MmeAssetRender();
			addChild(comboRender);
			
			addChild(_selectedEffectBack);
			addChild(shadow);
			addChild(effect);
			addChild(_selectedEffectFront);
			
			EventCenter.addEventProxy(effect, this);
			EventCenter.addEventProxy(body, this);
			
			shadow.visible = false;
			comboRender.visible = false;
			EventCenter.addEventHandler(effect, RenderEvent.EFFECT_END, onEffectEnd, true);
			EventCenter.addEventHandler(buff, RenderEvent.EFFECT_END, onBuffEnd);
			EventCenter.addEventHandler(buffEffect, RenderEvent.EFFECT_END, onBuffEffectEnd);
			
			new AddSceneNinjaUINotice(baseInfoChangedUI).send();
			new AddSceneNinjaUINotice(kathaChangedUI).send();
			new AddSceneNinjaUINotice(attributeChangedUI).send();
			new AddSceneNinjaUINotice(baseUI).send();
			
			// 侦听flash导出SWF特效事件
			addEventListener("fla.sound", effectSoundHandler);
			//			body.addEventListener(MouseEvent.ROLL_OUT, onMouseRollOut);
			//			body.addEventListener(MouseEvent.ROLL_OVER, onMouseRollOver);
			
			_selectedEffectBack.mouseEnabled = _selectedEffectBack.mouseChildren = false;
			_selectedEffectFront.mouseEnabled = _selectedEffectFront.mouseChildren = false;
			
			_selectedEffectBack.visible = false;
			_selectedEffectBack.gotoAndStop(1);
			_selectedEffectFront.visible = false;
			_selectedEffectFront.gotoAndStop(1);
			
			addEventListener(VirtualNinjaMouseEvent.MOUSE_ROLL_OUT, onMouseRollOut);
			addEventListener(VirtualNinjaMouseEvent.MOUSE_ROLL_OVER, onMouseRollOver);
			addEventListener(VirtualNinjaMouseEvent.MOUSE_SELECTED, onMouseSelected);
			addEventListener(VirtualNinjaMouseEvent.MOUSE_UNSELECTED, onMouseUnSelected);
		}
		
		public function get isExeunt():Boolean
		{
			return _isExeunt;
		}
		
		public function set isExeunt(value:Boolean):void
		{
			_isExeunt = value;
		}
		
		private var comboEffectEndCallBack:Function;
		public function showComboEffect(callBack:Function):void
		{
			var positionRect:Rectangle;
			
			comboRender.visible = true;
			
			comboEffectEndCallBack = callBack;
			comboRender.addEventListener(MmeAssetRenderEvent.PLAY_END, onComboEffectEnd);
			comboRender.addEventListener(MmeAssetRenderEvent.FRAME_SOUND, onComboSound);
			comboRender.gotoAction(data.comboEffect.backAction, 0);
			TimerProvider.addEnterFrameTask(renderComboEffect);
			
			positionRect = bodyRect;
			positionRect.x = positionRect.x + positionRect.width / 2;
			positionRect.y = positionRect.y + positionRect.height;
			
			comboRender.x = effect.x + positionRect.x;
			comboRender.y = effect.y + positionRect.y - positionRect.height * 0.7;
			body.showComboTransform();
		}
		
		/**
		 * 播放combo音效
		 */
		private function onComboSound(e:MmeAssetRenderEvent):void 
		{
			new PlaySoundNotice(e.sound, e.volume).send();
		}
		
		public function get bodyRect():Rectangle
		{
			return body.getRect(effect);
		}
		
		private function renderComboEffect():void
		{
			comboRender.manualEnterFrame();
		}
		
		private function onComboEffectEnd(evt:MmeAssetRenderEvent):void
		{
			comboRender.visible = false;
			
			comboRender.removeEventListener(MmeAssetRenderEvent.PLAY_END, onComboEffectEnd);
			comboRender.removeEventListener(MmeAssetRenderEvent.FRAME_SOUND, onComboSound);
			
			TimerProvider.removeEnterFrameTask(renderComboEffect);
			comboEffectEndCallBack();
			body.clearEffectColorTransform();
			resetContinueBuff();
		}
		
		private function onMouseSelected(evt:VirtualNinjaMouseEvent):void
		{
			_isSelected = true;
			
			_selectedEffectBack.visible = true;
			_selectedEffectFront.visible = true;
			
			if(cfg.cfgInfo.type == 2)
			{
				return ;
			}
			
			body.filters = [bodySelectFileter];
		}
		
		private function onMouseUnSelected(evt:VirtualNinjaMouseEvent):void
		{
			_isSelected = false;
			
			_selectedEffectBack.visible = false;
			_selectedEffectFront.visible = false;
			
			if(cfg.cfgInfo.type == 2)
			{
				return ;
			}
			
			body.filters = [];
		}
		
		public function set isOnline(value:Boolean):void
		{
			baseUI.isOnline = value;
			
		}
		
		public function get isOnline():Boolean
		{
			return baseUI.isOnline;
		}
		
		private var _visible:Boolean;
		override public function set visible(value:Boolean):void
		{
			_visible = value;
			shadow.visible = value;
			effect.visible = value;
		}
		
		override public function get visible():Boolean
		{
			return _visible;
		}
		
		private function onMouseRollOver(evt:Event):void
		{
			if(_isRollOver == true)
			{
				return ;
			}
			
			_isRollOver = true;
			
			this.addEventListener(Event.ENTER_FRAME, updateFilterLater);
		}
		
		private function onMouseRollOut(evt:Event):void
		{
			if(_isRollOver == false)
			{
				return ;
			}
			
			_isRollOver = false;
			
			this.addEventListener(Event.ENTER_FRAME, updateFilterLater);
		}
		
		private function updateFilterLater(evt:Event):void
		{
			this.removeEventListener(Event.ENTER_FRAME, updateFilterLater);
			
			if(cfg.cfgInfo.type == 2)
			{
				return ;
			}
			
			if(_isRollOver)
			{
				body.filters = [bodyOverFilter];
			}
			else
			{
				if(_isSelected)
				{
					body.filters = [bodySelectFileter];
				}
				else
				{
					body.filters = [];
				}
			}
		}
		
		public function hitTestBody(x:int, y:int):Boolean
		{
			return body.hitTestBody(x, y);
		}
		
		/**
		 * 处理flash导出SWF特效音效播放
		 */
		private function effectSoundHandler(e:Event):void 
		{
			e.stopPropagation();
			
			var target:MovieClip = e.target as MovieClip;
			if ("data" in target)
			{
				var sound:Object = target["data"];
				new PlaySoundNotice(parseInt(sound["id"]), parseInt(sound["volume"])).send();
			}
		}
		
		public function set cfg(value:NinjaBattleCfgInfo):void
		{
			this._cfg = value;
			
			body.cfg = value; 
			
			baseUI.setHpBarSize(cfg.cfgInfo.hpSize);
			baseUI.setHpBarType(cfg.cfgInfo.hpType);
			baseUI.setShieldBarSize(cfg.cfgInfo.hpSize);
			if(cfg.cfgInfo.hideHpBar)
			{
				baseUI.hideHpBar();
			}
			
			if(cfg.cfgInfo.type == 2)
			{
				_selectedEffectFront.gotoAndStop(3);
				_selectedEffectBack.gotoAndStop(3);
				return ;
			}
			
			if(cfg.resCfgInfo.area.x == 1)
			{
				_selectedEffectFront.gotoAndStop(2);
				_selectedEffectBack.gotoAndStop(2);
				return ;
			}
			
			if(cfg.resCfgInfo.area.x == 2 && cfg.resCfgInfo.area.y == 2)
			{
				_selectedEffectFront.gotoAndStop(4);
				_selectedEffectBack.gotoAndStop(4);
				return ;
			}
		}
		
		public function get cfg():NinjaBattleCfgInfo
		{
			return _cfg;
		}
		
		public function set data(value:NinjaInfo):void
		{
			this._data = value;
			
			baseUI.updateImmediately(value.hp, value.maxHP);
			if(value.isDisplayName)
			{
				baseUI.showNinjaName();
			}
			
			if(value.name == null)
			{
				baseUI.updateNinjaName(cfg.cfgInfo.name + " Lv" + value.level);
			}
			else
			{
				baseUI.updateNinjaName(value.name + " Lv" + value.level);
			}
			
			if(MajorNinjaDef.isMajorNinjaId(value.ninjaId))
			{
				if(value.selfTeam){baseUI.updateSelfNameColor(true);}
				baseUI.majorRole = true;
			}
			
			baseUI.pos = value.pos;
			baseUI.posList = value.areaPositions;
			
			comboRender.x = value.x;
			comboRender.y = value.y;
			
			_selectedEffectBack.x = value.x;
			_selectedEffectBack.y = value.selectY;
			_selectedEffectFront.x = value.x;
			_selectedEffectFront.y = value.selectY;
			
			comboRender.load(value.comboEffect.domain);
			
			if(data.areaPositions[0] >= 100)
			{
				_selectedEffectBack.scaleX = -1;
				_selectedEffectFront.scaleX = -1;
			}
			
			body.pos = data.pos;
			
			_x = value.x;
			_y = value.y;
		}
		
		public function updateSelf():void
		{
			if(MajorNinjaDef.isMajorNinjaId(data.ninjaId))
			{
				if(data.selfTeam){baseUI.updateSelfNameColor(true);}
				baseUI.majorRole = true;
			}
		}
		
		public function get data():NinjaInfo
		{
			return _data;
		}
		
		public function destroy():void
		{
			new RemoveSceneNinjaUINotice(baseInfoChangedUI).send();
			new RemoveSceneNinjaUINotice(kathaChangedUI).send();
			new RemoveSceneNinjaUINotice(attributeChangedUI).send();
			new RemoveSceneNinjaUINotice(baseUI).send();
			
			for each(var logicResEffectInfo:LogicEffectResEffectInfo in logicResEffectList)
			{
				this.removeEffect(logicResEffectInfo.startEffectInfo);
				this.removeEffect(logicResEffectInfo.continueEffectInfo);
				this.removeEffect(logicResEffectInfo.endEffectInfo);
			}
			
			effectInfoList.splice(0, effectInfoList.length);
			
			removeEventListener(VirtualNinjaMouseEvent.MOUSE_ROLL_OVER, onMouseRollOut);
			removeEventListener(VirtualNinjaMouseEvent.MOUSE_ROLL_OUT, onMouseRollOver);
			removeEventListener(VirtualNinjaMouseEvent.MOUSE_SELECTED, onMouseSelected);
			removeEventListener(VirtualNinjaMouseEvent.MOUSE_UNSELECTED, onMouseUnSelected);
			
			body.destroy();
			buff.destroy();
			shadow.destroy();
			effect.destroy();
			baseUI.destroy();
			buffEffect.destroy();
			skillEffect.destroy();
			baseChangedUICtr.destroy();
			
			EventCenter.removeEventProxy(body);
			EventCenter.removeEventProxy(effect);
			EventCenter.removeEventHandler(effect, RenderEvent.EFFECT_END, onEffectEnd);
			EventCenter.removeEventHandler(buff, RenderEvent.EFFECT_END, onBuffEnd);
			EventCenter.removeEventHandler(buffEffect, RenderEvent.EFFECT_END, onBuffEffectEnd);
			
			removeEventListener("fla.sound", effectSoundHandler);
			
			removeChildren();
		}
		
		private function playDeadSound():void
		{
			new PlayNinjaDeadSoundNotice(cfg.cfgInfo.refId).send();
		}
		
		public function updateMoney(hpChangedInfo:HpChangedInfo, totalAtkTime:int, curAtkTime:int):void
		{
			var ramian:int;
			var changedMomeyNum:int;
			
			if(hpChangedInfo == null)
			{
				return ;
			}
			
			changedMomeyNum = hpChangedInfo.money;
			ramian = changedMomeyNum%totalAtkTime;
			
			if(curAtkTime != totalAtkTime){
				changedMomeyNum = (changedMomeyNum > 0)?Math.floor(changedMomeyNum / totalAtkTime):Math.ceil(changedMomeyNum / totalAtkTime);
			}
			else
			{
				changedMomeyNum = (changedMomeyNum > 0)?Math.floor(changedMomeyNum / totalAtkTime) + ramian:Math.ceil(changedMomeyNum / totalAtkTime) + ramian;
			}
			
			noticeMoneyUpdate(changedMomeyNum);
		}
		
		public function updateHp(hpChangedInfo:HpChangedInfo, isCritical:Boolean, totalAtkTime:int, curAtkTime:int, isUpdate:Boolean = false):void
		{
			var curHp:int;
			var ramian:int;
			var changedHpNum:int;
			var baseChangedInfo:BaseChangedInfo;
			var subBaseChangedInfo:BaseChangedInfo;
			var baseChangedInfoList:Array = [];
			
			if(hpChangedInfo == null)
			{
				return ;
			}
			
			if(totalAtkTime == curAtkTime && hpChangedInfo.hp == 0)
			{
				if(cfg.cfgInfo.hpType != HpBar.TYPE_WHITE)
				{
					playDeadSound();
				}
			}
			
			for(var i:int = 0;i < hpChangedInfo.baseChangedInfoList.length;i ++)
			{
				baseChangedInfo = hpChangedInfo.baseChangedInfoList[i];
				changedHpNum = baseChangedInfo.value;
				
				ramian = changedHpNum%totalAtkTime;
				if(baseChangedInfo.type != BaseChangedInfo.MP)
				{
					if(curAtkTime != totalAtkTime){
						changedHpNum = (changedHpNum > 0)?Math.floor(changedHpNum / totalAtkTime):Math.ceil(changedHpNum / totalAtkTime);
					}
					else
					{
						changedHpNum = (changedHpNum > 0)?Math.floor(changedHpNum / totalAtkTime) + ramian:Math.ceil(changedHpNum / totalAtkTime) + ramian;
					}
				}
				else
				{
					if(curAtkTime != totalAtkTime)
					{
						continue ;
					}
					changedHpNum = baseChangedInfo.value;
				}
				
				subBaseChangedInfo = new BaseChangedInfo();
				subBaseChangedInfo.type = baseChangedInfo.type;
				subBaseChangedInfo.value = -changedHpNum;
				
				if(subBaseChangedInfo.value >= 0)//扣血
				{
					subBaseChangedInfo.critical = isCritical;
					
					baseChangedInfoList.push(subBaseChangedInfo);
				}
				else
				{
					subBaseChangedInfo.critical = false;
					baseChangedInfoList.push(subBaseChangedInfo);
				}
			}
			
			baseInfoChangedUI.addList(baseChangedInfoList);
			
			changedHpNum = hpChangedInfo.oldHp - hpChangedInfo.hp;
			ramian = changedHpNum%totalAtkTime;
			if(curAtkTime != totalAtkTime)
			{
				changedHpNum = (changedHpNum > 0)?Math.floor(changedHpNum / totalAtkTime):Math.ceil(changedHpNum / totalAtkTime);
			}
			else
			{
				changedHpNum = (changedHpNum > 0)?Math.floor(changedHpNum / totalAtkTime) + ramian:Math.ceil(changedHpNum / totalAtkTime) + ramian;
			}
			hpChangedInfo.curHp -= changedHpNum;
			curHp = hpChangedInfo.curHp;
			
			updateHpBar(curHp, data.maxHP, isUpdate);
		}
		
		public function updateMp(mpChangedInfo:KathaChangedInfo):void
		{
			this.kathaChangedUI.addList([mpChangedInfo]);
		}
		
		public function updateAttribute(attributeChangedInfo:AttributeChangedInfo):void
		{
			var attributeChangeList:Array;
			
			if(attributeChangedInfo == null || attributeChangedInfo.baseChangedInfoList.length == 0)
			{
				return ;
			}
			
			attributeChangeList = attributeChangedInfo.baseChangedInfoList;
			
			for(var i:int = 0;i < attributeChangeList.length;i ++)
			{
				attributeChangedUI.add(attributeChangeList[i]);
			}
		}
		
		public function updateHpBar(hp:int,maxhp:int, isUpdate:Boolean = false):void
		{
			var changedHp:int;
			changedHp = hp - data.hp;
			data.hp = hp;
			baseUI.updateHp(hp,maxhp);
			
			if(cfg.cfgInfo.noticeUI == true)
			{
				if(isUpdate)
				{
					new HpUpdateNotice(data.hp, data.pos, data.teamId).send();
				}
				else
				{
					new HpChangedNotice(changedHp, data.pos, data.teamId).send();
				}
			}
		}
		
		public function noticeMoneyUpdate(changedMoney:int, isUpdate:Boolean = true):void
		{
			new MoneyUpdateNotice(changedMoney, data.pos, data.teamId).send();
		}
		
		public function idle():void
		{
			var idleAction:String;
			var idleEffect:EffectInfo;
			
			idleAction = getIdleAction();
			playRoleAction(idleAction, true);
			
			idleEffect = getIdleEffect();
			if(idleEffect && idleEffect.resComplete)
			{
				addSkillEffect(idleEffect);
				playSkillEffect(idleEffect);
			}
			
			_isIdle = true;
			
		}
		
		//		public function skillIdleComplete():void
		//		{
		//			var idleAction:String;
		//			var idleEffect:EffectInfo;
		//			
		//			if(_isIdle == false)
		//			{
		//				return ;
		//			}
		//			
		//			idleAction = getIdleAction();
		//			playRoleAction(idleAction, true);
		//			
		//			idleEffect = getIdleEffect();
		//			if(idleEffect && idleEffect.domain != null)
		//			{
		//				playEffect(idleEffect, true);
		//			}
		//		}
		
		private function stopIdleEffect():void
		{
			var idleEffect:EffectInfo;
			
			idleEffect = getIdleEffect();
			if(idleEffect && idleEffect.domain != null)
			{
				effect.stopEffect(idleEffect);
			}
		}
		
		private function getIdleAction():String
		{
			var buffCfg:BuffInfoCfg;
			
			//			if(shieldInfo != null && shieldInfo.cfg.idleAction != "" && shieldInfo.hp != 0)
			//			{
			//				return shieldInfo.cfg.idleAction;
			//			}
			
			if(_skillIdleAction && _skillIdleAction != "")
			{
				return _skillIdleAction;
			}
			
			if(_ninjaIdleAction && !cfg.resCfgInfo.ignoreSkillAction)
			{
				return _ninjaIdleAction;
			}
			
			if(data.enervation)
			{
				return NinjaMotionDef.enervationIdle;
			}
			
			return NinjaMotionDef.idle;
		}
		
		private var deadCallBack:Function;
		private var deadCallBackParam:Array;
		public function dead(callback:Function = null, param:Array = null, clearEffect:Boolean = true):void
		{
			var idleEffect:EffectInfo;
			
			baseUI.visible = false;
			
			deadCallBack = callback;
			deadCallBackParam = param;
			
			idleEffect = getIdleEffect();
			if(idleEffect && idleEffect.resComplete)
			{
				removeSkillEffect(idleEffect);
			}
			
			if(clearEffect)
			{
				for(var i:int = 0;i < effectInfoList.length;i ++)
				{
					removeEffect(effectInfoList[i]);
					i --;
				}
			}
			
			if(data.exeuntStageAction != StageNinjaActionType.EXIT_SMOKE)
			{
				playRoleAction(NinjaMotionDef.dead, false, onDeadEnd, [deadCallBack, param]);
			}
			else
			{
				shadow.visible = false;
				body.visible = false;
				addEffect(data.exeuntEffect);
				playEffect(data.exeuntEffect);
				EventCenter.addEventHandler(this, RenderEvent.EFFECT_END, onDeadEffectEnd);
			}
			
			new NinjaDeadNotice(data.pos).send();
		}
		
		public function callupExeunt(callback:Function = null, param:Array = null):void
		{
			baseUI.visible = false;
			
			deadCallBack = callback;
			deadCallBackParam = param;
			
			for(var i:int = 0;i < effectInfoList.length;i ++)
			{
				removeEffect(effectInfoList[i]);
				i --;
			}
			
			if(data.callupEffect == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4230_0") +  cfg.cfgInfo.name +"[" + data.ninjaId + I18n.lang("as_motion_1451031573_4230_1") );
			}
			
			shadow.visible = false;
			body.visible = false;
			addEffect(data.exeuntEffect);
			playEffect(data.exeuntEffect);
			EventCenter.addEventHandler(this, RenderEvent.EFFECT_END, onDeadEffectEnd);
		}
		
		private function onDeadEnd(args:Array):void
		{
			if(args[0] == null)
			{
				EventCenter.executeHandler(this, RenderEvent.ROLE_DEAD);
				return ;
			}
			
			if(args[1])
			{
				args[0](args[1]);
			}
			else
			{
				args[0]();
			}
			
			EventCenter.executeHandler(this, RenderEvent.ROLE_DEAD);
		}
		
		private function onDeadEffectEnd(target:Object, args:Array):void
		{
			EventCenter.removeEventHandler(this, RenderEvent.EFFECT_END, onDeadEffectEnd);
			
			for(var i:int = 0;i < effectInfoList.length;i ++)
			{
				removeEffect(effectInfoList[i]);
				i --;
			}
			
			if(deadCallBack != null)
			{
				if(deadCallBackParam)
				{
					deadCallBack(deadCallBackParam);
				}
				else
				{
					deadCallBack();
				}
			}
			
			EventCenter.executeHandler(this, RenderEvent.ROLE_DEAD);
		}
		
		override public function set x(value:Number):void
		{
			var baseX:int;
			
			_x = value;
			
			effect.x = value;
			
			//			baseUI.x = body.hpSite.x + value;
			//			bloodChangedUI.x = body.hpSite.x + value;
			//			attributeChangedUI.x = body.hpSite.x + value;
			
			if(this.isMirror())
			{
				baseX = x + body.hpSite.x;
			}
			else
			{
				baseX = x - body.hpSite.x;
			}
			
			baseUI.uiX =  baseX;
			baseInfoChangedUI.uiX = baseX;
			kathaChangedUI.uiX = baseX;
			attributeChangedUI.uiX = baseX;
			
			baseUI.ninjaX = value;
			baseInfoChangedUI.ninjaX = value;
			kathaChangedUI.ninjaX = value;
			attributeChangedUI.ninjaX = value;
		}
		
		override public function get x():Number
		{
			return _x;
		}
		
		override public function set y(value:Number):void
		{			
			_y = value;
			
			effect.y = value;
			//			baseUI.y = body.hpSite.y + value;
			//			bloodChangedUI.y = body.hpSite.y + value  - 30;
			//			attributeChangedUI.y = body.hpSite.y + value - 30;
			baseUI.uiY = body.hpSite.y + value;
			baseInfoChangedUI.uiY = body.hpSite.y + value  - 30;
			kathaChangedUI.uiY = body.hpSite.y + value  - 30;
			attributeChangedUI.uiY = body.hpSite.y + value  - 30;
			
			baseUI.ninjaY = value;
			baseInfoChangedUI.ninjaY = value;
			kathaChangedUI.ninjaY = value;
			attributeChangedUI.ninjaY = value;
		}
		
		override public function get y():Number
		{
			return _y;
		}
		
		public function set remainActionFrame(value:int):void
		{
			_remainActionFrame = value;
		}
		
		public function get remainActionFrame():int
		{
			return _remainActionFrame;
		}
		
		public function setRoleDomain(value:ApplicationDomain, url:String, resComplete:Boolean = false):void
		{
			var baseX:int;
			logger.output("setRoleDomain", "pos", data.pos, "resComplete", resComplete, "name", name);
			
			//			if(resComplete)
			//			return ;
			var obj:Object;
			obj = value.getQualifiedDefinitionNames();
			
			body.setDomain(value, url, resComplete);
			resComplete = resComplete;
			
			if(this.isMirror())
			{
				baseX = x + body.hpSite.x;
			}
			else
			{
				baseX = x - body.hpSite.x;
			}
			baseUI.uiX =  baseX;
			kathaChangedUI.uiX = baseX;
			baseInfoChangedUI.uiX = baseX;
			attributeChangedUI.uiX = baseX;
			
			baseUI.uiY = body.hpSite.y + y;
			kathaChangedUI.uiY = body.hpSite.y + y - 30;
			baseInfoChangedUI.uiY = body.hpSite.y + y - 30;
			attributeChangedUI.uiY = body.hpSite.y + y - 30;
			
			if(resComplete == true)
			{
				baseUI.notifyResize();
			}
			
			baseUI.ninjaX = x;
			baseUI.ninjaY = y; 
		}
		
		public function set shadowDomain(value:ApplicationDomain):void
		{
			shadow.domain = value;
		}
		
		public function set resProgress(value:int):void
		{
			
		}
		
		public function preRender():void
		{
			body.preRender();
			effect.preRender();
		}
		
		public function render():void
		{
			curRenderIndex += 1;
			checkBuffUpdate();
			
			body.render();
			buff.render();
			shadow.render();
			effect.render();
			buffEffect.render();
			skillEffect.render();
		}
		
		public function afterRender():void
		{
			body.afterRender();
			effect.afterRender();
		}
		
		public function get isRealLeft():Boolean
		{
			return _isRealLeft;
		}
		
		public function set isRealLeft(value:Boolean):void
		{
			_isRealLeft = value;
			
			updateDirection(false);
		}
		
		public function mirror(value:Boolean):void
		{
			_isMirror = value;
			updateDirection(value);
		}
		
		public function isMirror():Boolean
		{
			return _isMirror;
		}
		
		public function playRoleActions(actions:Array, loop:Boolean, callback:Function = null, param:Array = null, isIdle:Boolean = false):void
		{
			_isIdle = isIdle;
			
			stopIdleEffect();
			
			body.playActions(actions, loop, callback, param);
		}
		
		public function hasAction(action:String):Boolean
		{
			return body.hasAction(action);
		}
		
		public function playRoleAction(action:String, loop:Boolean, callback:Function = null, param:Array = null, isIdle:Boolean = false):void
		{
			_isIdle = isIdle;
			
			stopIdleEffect();
			
			body.playAction(action, loop, callback, param);
		}
		
		public function stopActionToLastFrame():void
		{
			body.stopActionToLastFrame();
		}
		
		public function playEmptyBeHitAction(callBack:Function = null):void
		{
			body.glow();
			body.playEmptyAction(12, callBack);
		}
		
		public function playLoading():void
		{
			body.playLoading();
		}
		
		public function endAction():void
		{
			var effectInfoCopy:Array;
			
			EventCenter.executeHandler(body, RenderEvent.ACTION_INTERRUPT);
		}
		
		public function get resComplete():Boolean
		{
			return body.resComplete;
		}
		
		private function addSkillEffect(value:EffectInfo):void
		{
			if(skillEffectInfoList.indexOf(value) != -1)
			{
				return ;
			}
			
			skillEffectInfoList.push(value);
			skillEffect.addEffect(value, false);
			updateColorEffect(value);
		}
		
		public function hasEffect(value:EffectInfo):Boolean
		{
			return effectInfoList.indexOf(value) != -1;
		}
		
		public function addEffect(value:EffectInfo, mirror:Boolean = false):void
		{
			logger.output("[effectModiy]", "addEffect", value.uid);
			
			if(effectInfoList.indexOf(value) != -1)
			{
				return ;
			}
			
			effectInfoList.push(value);
			effect.addEffect(value, mirror);
			updateColorEffect(value);
		}
		
		public function updateColorEffect(effectInfo:EffectInfo):void
		{
			if(effectInfo.type == EffectDef.TYPE_FILTERS || 
				effectInfo.type == EffectDef.TYPE_MOVIE_CLIP_N_FILTERS)
			{
				curColorEffectInfo = effectInfo;
				this.body.updateEffectColorTransform(effectInfo);
			}
		}
		
		private function removeSkillEffect(value:EffectInfo):void
		{
			if(skillEffectInfoList.indexOf(value) == -1)
			{
				return ;
			}
			
			logger.output("[effectModiy]", "removeEffect", value.uid);
			
			skillEffectInfoList.splice(skillEffectInfoList.indexOf(value), 1);
			skillEffect.removeEffect(value);
			
			if(curColorEffectInfo == value)
			{
				body.clearEffectColorTransform();
			}
		}
		
		public function removeEffect(value:EffectInfo):void
		{
			if(effectInfoList.indexOf(value) == -1)
			{
				return ;
			}
			
			logger.output("[effectModiy]", "removeEffect", value.uid);
			
			effectInfoList.splice(effectInfoList.indexOf(value), 1);
			effect.removeEffect(value);
			
			if(curColorEffectInfo == value)
			{
				body.clearEffectColorTransform();
			}
		}
		
		private function getIdleEffect():EffectInfo
		{
			var effectInfo:EffectInfo;
			
			if(_skillIdleEffect && _skillIdleAction != "" && _skillIdleEffect != null)
			{
				return _skillIdleEffect;
			}
			
			if(_ninjaIdleEffect)
			{
				return _ninjaIdleEffect;
			}
			
			return null;
		}
		
		private function onBuffEnd(targer:Object, args:Array):void
		{
			var effectObj:Object;
			var effectInfo:EffectInfo;
			
			effectObj = args[0];
			if(effectObj)
			{
				effectInfo = args[0].effectInfo;
				for each(var buffInfo:BuffInfo in buffInfoList)
				{
					if(buffInfo.cfg.addBuffEffect == effectInfo)
					{
						buffInfo.buffInited = true;
						checkBuffUpdate(true);
						break;
					}
				}
			}
		}
		
		private function onBuffEffectEnd(targer:Object, args:Array):void
		{
			var effectObj:Object;
			var effectInfo:EffectInfo;
			
			effectObj = args[0];
			if(effectObj)
			{
				effectInfo = args[0].effectInfo;
				buffEffect.removeEffect(effectInfo);
			}
		}
		
		public function addLogicEffect(passiveEffectInfo:LogicEffectInfo):void
		{
			if(passiveEffectInfo == null)
			{
				return ;
			}
			
			logicEffectList.push(passiveEffectInfo);
		}
		
		public function removeLogicEffect(passiveEffectInfo:LogicEffectInfo):void
		{
			if(passiveEffectInfo == null)
			{
				return ;
			}
			
			for each(var thePassiveEffect:LogicEffectInfo in logicEffectList)
			{
				if(thePassiveEffect.id == passiveEffectInfo.id)
				{
					logicEffectList.splice(logicEffectList.indexOf(thePassiveEffect), 1);
					break;
				}
			}
		}
		
		public function getLogicEffect(effect:int = -1):Array
		{
			var resultList:Array;
			
			if(effect == -1)
			{
				return logicEffectList;
			}
			
			resultList = [];
			for each(var logicEffectInfo:LogicEffectInfo in logicEffectList)
			{
				if(logicEffectInfo.cfg == null)
				{
					throw new Error(I18n.lang("as_motion_1451031573_4231_0") + logicEffectInfo.buffId + I18n.lang("as_motion_1451031573_4231_1"));
				}
				
				if(logicEffectInfo.cfg.effectList.indexOf(effect) != -1)
				{
					resultList.push(logicEffectInfo);
				}
			}
			
			return resultList;
		}
		
		public function getLogicEffectList():Array
		{
			return logicEffectList;
		}
		
		public function getShiled():ShieldInfo
		{
			return shieldInfo;
		}
		
		public function addShield(value:ShieldInfo):void
		{
			baseUI.showShield();
			this.shieldInfo = value;
			baseUI.updateShield(value.hp, value.maxHp);
		}
		
		public function removeShield(value:ShieldInfo):void
		{
			if(value.id == shieldInfo.id)
			{
				baseUI.hideShield();
				this.shieldInfo = null;
			}
		}
		
		public function closeShield(value:ShieldInfo):void
		{
			shieldInfo.hp = value.hp;
			baseUI.updateShield(value.hp, value.maxHp);
			new MoneyUpdateNotice(value.money, data.pos, data.teamId).send();
		}
		
		public function addBuff(buffInfo:BuffInfo):void
		{
			var buffSite:Point;
			
			buffInfoList.unshift(buffInfo);
			
			addLogicEffect(buffInfo.logicEffectInfo);
			
			for(var i:int = 0;i < buffInfoList.length;i ++)
			{
				buffInfoList[i].buffInited = true;
			}
			
			resetContinueBuff();
			if(buffInfo.cfg.addBuffEffect != null && buffInfo.cfg.addBuffEffect.domain != null)
			{
				buffSite = body.getBuffSite(buffInfo.cfg.startPosition);
				buffInfo.buffInited = false;
				if(buffInfo.cfg.mirror)
				{
					buff.addEffect(buffInfo.cfg.addBuffEffect);
				}
				else
				{
					buff.addEffect(buffInfo.cfg.addBuffEffect, !isRealLeft);
				}
				buff.playEffect(buffInfo.cfg.addBuffEffect, buffSite.x, buffSite.y);
			}
			else
			{
				buffInfo.buffInited = true;
				checkBuffUpdate(true);
			}
			
			for each(var attributeChangedInfo:BaseChangedInfo in buffInfo.attributeChangedInfo)
			{
				attributeChangedUI.add(attributeChangedInfo);
			}
			
			baseInfoChangedUI.addList(buffInfo.baseChangedInfo);
		}
		
		public function removeBuff(buffInfo:BuffInfo):void
		{
			var cloneBuffInfoList:Array;
			
			cloneBuffInfoList = buffInfoList.concat();
			for each(var ninjaBuffInfo:BuffInfo in cloneBuffInfoList)
			{
				if(ninjaBuffInfo.buffId == buffInfo.buffId)
				{
					buffInfoList.splice(buffInfoList.indexOf(ninjaBuffInfo), 1);
				}
			}
			
			removeLogicEffect(buffInfo.logicEffectInfo);
			buff.removeEffect(buffInfo.cfg.addBuffEffect);
			
			if(curShowingBuff && buffInfo.buffId == curShowingBuff.buffId)
			{
				this.body.clearEffectColorTransform();
				this.buff.removeEffect(curShowingBuff.cfg.buffEffect);
				curShowingBuff = null;
			}
			checkBuffUpdate(true);
			
			for each(var attributeChangedInfo:BaseChangedInfo in buffInfo.attributeChangedInfo)
			{
				attributeChangedUI.add(attributeChangedInfo);
			}
			
			baseInfoChangedUI.addList(buffInfo.baseChangedInfo);
		}
		
		private function resetContinueBuff():void
		{
			if(curShowingBuff)
			{
				curShowingBuff.buffInited = true;
				body.clearEffectColorTransform();
				buff.removeEffect(curShowingBuff.cfg.buffEffect);
			}
			
			lastBuffUpdateRenderIndex = 0;
			curShowingBuff = null;
		}
		
		private function checkBuffUpdate(updateNow:Boolean = false):void
		{
			var diffTime:int;
			var oldBuffIndex:int;
			var buffEffect:EffectInfo;
			var nextShowingBuff:BuffInfo;
			var buffSite:Point;
			
			diffTime = (curRenderIndex - lastBuffUpdateRenderIndex) * 41;
			if(diffTime < 3000 && updateNow == false)
			{
				return ;
			}
			
			lastBuffUpdateRenderIndex = curRenderIndex;
			
			oldBuffIndex = buffInfoList.indexOf(curShowingBuff);
			nextShowingBuff = getNextBuffInfo(oldBuffIndex + 1);
			if(nextShowingBuff == curShowingBuff)
			{
				return ;
			}
			
			if(curShowingBuff)
			{
				body.clearEffectColorTransform();
				buff.removeEffect(curShowingBuff.cfg.buffEffect);
			}
			
			if(nextShowingBuff.cfg.buffEffect.resComplete)
			{
				curShowingBuff = nextShowingBuff;
				buffEffect = curShowingBuff.cfg.buffEffect;
				
				buffSite = body.getBuffSite(curShowingBuff.cfg.continuePosition);
				if(buffEffect.type == EffectDef.TYPE_MOVIE_CLIP || 
					buffEffect.type == EffectDef.TYPE_MOVIE_CLIP_N_FILTERS)
				{
					this.buff.addEffect(buffEffect, !curShowingBuff.cfg.mirror && !isRealLeft);
					this.buff.playEffect(buffEffect, buffSite.x, buffSite.y, true);
				}
				
				updateColorEffect(buffEffect);
			}
		}
		
		private function getNextBuffInfo(buffIndex:int):BuffInfo
		{
			var buffInfo:BuffInfo;
			
			for(var i:int = buffIndex;i < buffInfoList.length;i ++)
			{
				buffInfo = buffInfoList[i];
				if(buffInfo.cfg.buffEffect != null && buffInfo.buffInited == true)
				{
					return buffInfo;
				}
			}
			
			for(var j:int = 0;j < buffIndex;j ++)
			{
				buffInfo = buffInfoList[j];
				if(buffInfo.cfg.buffEffect != null && buffInfo.buffInited == true)
				{
					return buffInfo;
				}
			}
			
			return null;
		}
		
		public function closeBuff(info:BuffInfo, cfg:BuffInfoCfg):void
		{
			var changedHp:int;
			
			changedHp = info.hp - data.hp;
			data.hp = info.hp;
			baseUI.updateHp(data.hp,data.maxHP);
			if(_cfg.cfgInfo.noticeUI == true)
			{
				new HpChangedNotice(changedHp, data.pos, data.teamId).send();
			}
			new KathaChangedNotice(data.pos, -1, info.mp).send();
			new MoneyUpdateNotice(info.money, data.pos, data.teamId).send();
			
			if(info.isOver)
			{
				new SlowRenderNotice(6, 2).send();
			}
			for each(var buffInfo:BuffInfo in buffInfoList)
			{
				if(buffInfo.buffId == info.buffId)
				{
					buffInfo.protectHp = info.protectHp;
					buffInfo.overlay = info.overlay;
				}
			}
			
			for each(var attributeChangedInfo:BaseChangedInfo in info.attributeChangedInfo)
			{
				attributeChangedUI.add(attributeChangedInfo);
			}
			
			if(info.baseChangedInfo != null)
			{
				baseInfoChangedUI.addList(info.baseChangedInfo);
			}
			
			//buff结算在回合末 motionplayer来控制
			//			if(info.hp <= 0)
			//			{
			//				this.dead();
			//			}
		}
		
		public function closeBuffEffect(info:BuffEffectInfo):void
		{
			switch(info.effect)
			{
				case BuffEffectInfo.EFFCT_IMMUNITY:
					var attributeChangedInfo:BaseChangedInfo;
					
					attributeChangedInfo = new BaseChangedInfo();
					attributeChangedInfo.type = BaseChangedInfo.IMMUNITY;
					attributeChangedUI.add(attributeChangedInfo);
					break;
				case BuffEffectInfo.EFFCT_TRANSFORM:
					var effectInfoPoint:Point;
					var effectInfo:EffectInfo;
					
					effectInfo = data.buffTransformEffect;
					effectInfoPoint = getEffectInfoPoint(effectInfo);
					buffEffect.addEffect(effectInfo, false);
					buffEffect.playEffect(effectInfo, effectInfoPoint.x, effectInfoPoint.y);
					break;
			}
		}
		
		private function playSkillEffect(effectInfo:EffectInfo):void
		{
			var refPoint:Point;
			
			refPoint = getEffectInfoPoint(effectInfo);
			skillEffect.playEffect(effectInfo, refPoint.x, refPoint.y, true);
		}
		
		public function playEffect(effectInfo:EffectInfo, loop:Boolean = false):void
		{
			var refPoint:Point;
			
			refPoint = getEffectInfoPoint(effectInfo);
			effect.playEffect(effectInfo, refPoint.x, refPoint.y, loop);
		}
		
		public function getEffectInfoPoint(effectInfo:EffectInfo):Point
		{
			var refPoint:Point;
			
			if(effectInfo.refPointName != "")
			{
				refPoint = this.body.getRoleRefPoint(null, effectInfo.refPointName);
			}
			
			if(refPoint == null)
			{
				refPoint = new Point(0, 0);
			}
			
			return refPoint;
		}
		
		public function updateSkillIdleAction(action:String, effect:EffectInfo):void
		{
			if(_skillIdleAction == action && _skillIdleEffect == effect)
			{
				return ;
			}
			
			_skillIdleAction = action;
			_skillIdleEffect = effect;
			
			if(_isFight == false)
			{
				idle();
			}
		}
		
		public function clearSkillIdleAction():void
		{
			if(_skillIdleAction == null && _skillIdleEffect == null)
			{
				return ;
			}
			
			if(_skillIdleEffect && _skillIdleEffect.resComplete)
			{
				removeSkillEffect(_skillIdleEffect);
			}
			
			_skillIdleAction = null;
			_skillIdleEffect = null;
			
			if(_isFight == false)
			{
				idle();
			}
		}
		
		public function lockShadowVerPos(pos:Point):void
		{
			shadow.lockVerPos(pos);
		}
		
		public function calculateVerPos(pos:Point):void
		{
			shadow.calculatVerPos(pos);
		}
		
		public function resetShadowVerPos():void
		{
			shadow.resetVerLock();
		}
		
		public function getCurTotalFrameNum():int
		{
			return body.getCurTotalFrameNum();
		}
		
		public function getRoleFrameNum(actionName:String):int
		{
			return body.getActionFrameNum(actionName);
		}
		
		public function getActionsFrameNum(actions:Array):int
		{
			return body.getActionsFrameNum(actions);
		}
		
		public function getEffectFrameNum(actionName:String, effectInfo:EffectInfo):int
		{
			return effect.getFrameNum(actionName, effectInfo);
		}
		
		public function getRoleFrameEventIndex(action:String, event:String, time:int = 1):Array
		{
			return body.getFrameEventIndex(action, event, time);
		}
		
		public function getRoleRefPoint(action:String = null, pointName:String = null, index:int = 0):Point
		{
			return body.getRoleRefPoint(action, pointName, index);
		}
		
		public function getEffectRefPoint(effectInfo:EffectInfo):Point
		{
			return effect.getEffectRefPoint(effectInfo);
		}
		
		private function updateDirection(mirror:Boolean):void
		{
			if(_isRealLeft == false && mirror == false)
			{
				effect.scaleX = -1;
			}
			
			if(_isRealLeft == false && mirror == true)
			{
				effect.scaleX = 1;
			}
			
			if(_isRealLeft == true && mirror == true)
			{
				effect.scaleX = -1;
			}
			
			if(_isRealLeft == true && mirror == false)
			{
				effect.scaleX = 1;
			}
		}
		
		public function showShadow():void
		{
			if(_cfg.resCfgInfo.hideShadow)
			{
				return ;
			}
			
			shadow.visible = true;
		}
		
		public function hideShadow():void
		{
			if(_cfg.resCfgInfo.hideShadow)
			{
				return ;
			}
			
			shadow.visible = false;
		}
		
		public function showGuid():void
		{
			baseUI.showGuid();
		}
		
		public function hideGuid():void
		{
			baseUI.hideGuid();
		}
		
		public function showText():void
		{
			baseUI.showText();
		}
		
		public function hideHpText():void
		{
			baseUI.hideText();
		}
		
		public function showSkillIcon(skillIndex:int, skillId:int, ninjaIdleAction:String, ninjaIdleEffect:EffectInfo):void
		{
			var idleEffect:EffectInfo;
			
			_isUseSkill = true;
			_skillId = skillId;
			baseUI.showSkillIcon();
			baseUI.updateSkillIcon(SkillAssetDef.getAsset(SkillAssetDef.SKILL_ICON,skillId));
			if(cfg.cfgInfo.type != NinjaDef.TYPE_CONTRACT_PET) 
			{
				_ninjaIdleAction = ninjaIdleAction;
				_ninjaIdleEffect = ninjaIdleEffect;
				
				if(_isFight == false)
				{
					idle();
				}
			}
		}
		
		public function set isFight(value:Boolean):void
		{
			_isFight = value;
			if(_isFight == false && this.data.hp != 0){this.idle();}
			
			if(_isDefence && !gainDefence && data.hp != 0){updateLogicResEffect(value)}
		}
		
		public function get isFight():Boolean
		{
			return _isFight;
		}
		
		public function set isDefence(value:Boolean):void
		{
			_isDefence = value;
		}
		
		public function get isDefence():Boolean
		{
			return _isDefence;
		}
		
		public function set gainDefence(value:Boolean):void
		{
			_gainDefence = value
		}
		
		public function get gainDefence():Boolean
		{
			return _gainDefence;
		}
		
		private var logicResEffectList:Array = [];
		private function updateLogicResEffect(isFight:Boolean):void
		{
			var delayTime:int;
			var effectInfo:EffectInfo
			var logicResEffectInfo:LogicEffectResEffectInfo;
			var cloneLogicResEffectInfo:LogicEffectResEffectInfo;
			var reuseLogicEffectInfoMap:Dictionary = new Dictionary();
			
			if(TimerProvider.curStageFrameRate > 31)
			{
				delayTime = 200;
			}
			else
			{
				delayTime = 500;
			}
			
			if(isFight == true)
			{
				for each(logicResEffectInfo in logicResEffectList)
				{
					removeEffect(logicResEffectInfo.startEffectInfo);
					removeEffect(logicResEffectInfo.continueEffectInfo);
					removeEffect(logicResEffectInfo.endEffectInfo);
					if((TimerProvider.lastGetTime - logicResEffectInfo.lastEndTime) < delayTime)
					{
						reuseLogicEffectInfoMap[logicResEffectInfo.effect] = logicResEffectInfo;
					}
				}
				
				logicResEffectList.splice(0, logicResEffectList.length);
				
				for each(var logicEffectInfo:LogicEffectInfo in logicEffectList)
				{
					if(logicEffectInfo.cfg != null)
					{
						for each(logicResEffectInfo in logicEffectInfo.cfg.resEffectInfoList)
						{
							if(reuseLogicEffectInfoMap[logicResEffectInfo.effect] == null)
							{
								if(logicResEffectInfo.startEffectInfo.resComplete == true)
								{
									cloneLogicResEffectInfo = logicResEffectInfo.clone();
									addEffect(cloneLogicResEffectInfo.startEffectInfo);
									playEffect(cloneLogicResEffectInfo.startEffectInfo);
									logicResEffectList.push(cloneLogicResEffectInfo);
								}
							}
							else
							{
								cloneLogicResEffectInfo = reuseLogicEffectInfoMap[logicResEffectInfo.effect];
								addEffect(cloneLogicResEffectInfo.continueEffectInfo);
								playEffect(cloneLogicResEffectInfo.continueEffectInfo, true);
								logicResEffectList.push(cloneLogicResEffectInfo);
							}
						}
					}
				}
			}
			else
			{
				for each(logicResEffectInfo in logicResEffectList)
				{
					logicResEffectInfo.lastEndTime = TimerProvider.lastGetTime;
					removeEffect(logicResEffectInfo.startEffectInfo);
					removeEffect(logicResEffectInfo.continueEffectInfo);
					addEffect(logicResEffectInfo.endEffectInfo);
					playEffect(logicResEffectInfo.endEffectInfo);
				}
			}
		}
		
		private function onEffectEnd(args:Array):void
		{
			var effectInfo:EffectInfo;
			var effectInfoObj:Object;
			var logicResEffectInfo:LogicEffectResEffectInfo;
			
			effectInfoObj = args[0];
			if(effectInfoObj == null)
			{
				return ;
			}
			
			effectInfo = effectInfoObj.effectInfo;
			for each(logicResEffectInfo in logicResEffectList)
			{
				if(logicResEffectInfo.startEffectInfo == effectInfo)
				{
					removeEffect(effectInfo);
					if(logicResEffectInfo.continueEffectInfo.resComplete)
					{
						addEffect(logicResEffectInfo.continueEffectInfo);
						playEffect(logicResEffectInfo.continueEffectInfo, true);
					}
				}
				
				if(logicResEffectInfo.endEffectInfo == effectInfo)
				{
					removeEffect(effectInfo);
				}
			}
		}
		
		public function showUI():void
		{
			baseUI.visible = true;
			
			buff.show();
			skillEffect.show();
		}
		
		public function hideUI():void
		{
			baseUI.visible = false;
			
			buff.hide();
			skillEffect.hide();
		}
		
		public function stealth(value:Boolean):void
		{
			this.visible = !value;
		}
		
		public function hideSkillIcon():void
		{
			var idleEffect:EffectInfo;
			
			idleEffect = getIdleEffect();
			if(idleEffect && idleEffect.resComplete)
			{
				removeSkillEffect(idleEffect);
			}
			
			_skillId = 0;
			_isUseSkill = false;
			_ninjaIdleAction = null;
			_ninjaIdleEffect = null;
			baseUI.hideSkillIcon();
			
			if(_isFight == false)
			{
				this.idle();
			}
		}
		
		public function cancelSkillIcon():void
		{
			var idleEffect:EffectInfo;
			
			idleEffect = getIdleEffect();
			if(idleEffect && idleEffect.resComplete)
			{
				removeSkillEffect(idleEffect);
			}
			
			_isUseSkill = false;
			_skillId = 0;
			_ninjaIdleAction = null;
			_ninjaIdleEffect = null;
			baseUI.hideSkillIcon();
			
			if(_isFight == false)
			{
				this.idle();
			}
		}
		
		
		public function autoSetNull():void
		{
			
			body = null;
			baseUI = null;
			buff = null;
			skillEffect = null;
			buffEffect = null;
			shadow = null;
			effect = null;
			baseInfoChangedUI = null;
			kathaChangedUI = null;
			attributeChangedUI = null;
			curShowingBuff = null;
			curColorEffectInfo = null;
			skillActionEffect = null;
			buffInfoList = null;
			effectInfoList = null;
			skillEffectInfoList = null;
			buffEffectInfoList = null;
			logicEffectList = null;
			shieldInfo = null;
			_cfg = null;
			_data = null;
			_ninjaIdleAction = null;
			_ninjaIdleEffect = null;
			_skillIdleAction = null;
			_skillIdleEffect = null;
			comboRender = null;
			_selectedEffectFront = null;
			_selectedEffectBack = null;
			bodyOverFilter = null;
			bodySelectFileter = null;
			comboEffectEndCallBack = null;
			deadCallBack = null;
			deadCallBackParam = null;
		}
	}
}