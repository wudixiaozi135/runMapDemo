package com.tencent.morefun.naruto.plugin.motion.player.action.skill
{

	import com.tencent.morefun.naruto.plugin.motion.data.ShareEffectDef;
	import com.tencent.morefun.naruto.plugin.motion.data.StageNinjaActionType;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.player.action.Action;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class ReplaceSingleNinjaAction extends Action
	{
		private var pos:int;
		private var roundId:int;
		private var actionId:int;
		private var isDead:Boolean;
		private var isReLift:Boolean;
		private var reLeftEffectInfo:EffectInfo;
		
		public function ReplaceSingleNinjaAction(roundId:int, actionId:int, ninjaInfo:NinjaInfo)
		{
			super();
			
			this.roundId = roundId;
			this.actionId = actionId;
			
			var enterAction:EnterAction;
			var exeuntAction:ExeuntAction;
			var enterNinjaInfo:NinjaInfo;
			var exeuntNinjaInfo:NinjaInfo;
			
			pos = ninjaInfo.pos;
			enterNinjaInfo = ninjaInfo;
			enterNinjaInfo.enterStageAction = StageNinjaActionType.ENTER_VANISH;
			
			if(enterNinjaInfo.hp == 0)
			{
				isDead = true
			}
			
			if(enterNinjaInfo.stagePos != -1)
			{
				if(enterNinjaInfo.pos == enterNinjaInfo.stagePos)
				{
					if(FightManagerCenter.ninjaMgr.getNinjaByPos(enterNinjaInfo.stagePos).data.hp == 0 && 
						enterNinjaInfo.hp != 0)
					{
						isReLift = true;
					}
				}
				
				exeuntNinjaInfo = FightManagerCenter.ninjaMgr.getNinjaByPos(enterNinjaInfo.stagePos).data;
				exeuntNinjaInfo.exeuntStageAction = StageNinjaActionType.EXIT_VANISH;
				exeuntAction = new ExeuntAction(roundId, actionId);
				exeuntAction.data = [exeuntNinjaInfo];
				this.addSubAction(exeuntAction, 0, false);
			}
			if(enterNinjaInfo.pos != -1)
			{
				enterAction = new EnterAction(roundId, actionId);
				enterAction.data = [enterNinjaInfo];
				this.addSubAction(enterAction, 1, false);
			}
		}
		
		override protected function onAllSubActionEnd():void
		{
			var ninja:Ninja;
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(pos);
			//			if(isReLift)
			//			{
			//				reLeftEffectInfo = EffectConfig.getShareEffectInfoById(ShareEffectDef.RELIFT_EFFECT).clone();
			//				if(reLeftEffectInfo.domain != null)
			//				{
			//					(ninja as Ninja).addEffect(reLeftEffectInfo, false);
			//					(ninja as Ninja).playEffect(reLeftEffectInfo, false);
			//					EventCenter.addEventHandler(ninja, RenderEvent.EFFECT_END, onEffectEnd, true);
			////					TimerProvider.addTimeTask(1000 * 10, onEffectTimeOut);
			//				}
			//			}
			//			
			//			if(isDead)
			//			{
			//				(ninja as Ninja).dead();
			//				(ninja as Ninja).stopActionToLastFrame();
			//			}
			
			if(isDead)
			{
				(ninja as Ninja).dead();
				(ninja as Ninja).stopActionToLastFrame();
			}
			
			this.end();
		}
		
		private function onEffectEnd(args:Array):void
		{
			var ninja:Ninja;
			var effectInfo:EffectInfo;
			var effectInfoObj:Object;
			
			effectInfoObj = args[0];
			if(effectInfoObj == null)
			{
				return ;
			}
			
			effectInfo = effectInfoObj.effectInfo;
			
			if(reLeftEffectInfo == effectInfo)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(pos);
				(ninja as Ninja).removeEffect(reLeftEffectInfo);
				EventCenter.removeEventHandler((ninja as Ninja), RenderEvent.EFFECT_END, onEffectEnd);
				//				TimerProvider.removeTimeTask(1000 * 10, onEffectTimeOut);
			}
		}
		
		private function onEffectTimeOut():void
		{
			throw new Error(I18n.lang("as_motion_1451031573_4391"));
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

			reLeftEffectInfo = null;
		}
	}
}


