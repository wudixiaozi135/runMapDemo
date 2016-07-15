package com.tencent.morefun.naruto.plugin.motion.player.action.skill
{	
	import com.tencent.morefun.naruto.plugin.motion.data.NinjaBattleCfgInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.StageNinjaActionType;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.event.EventCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.def.NinjaDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.RenderEvent;
	import com.tencent.morefun.naruto.plugin.motion.notice.NinjaExeuntNotice;
	import com.tencent.morefun.naruto.plugin.motion.player.action.Action;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	import com.tencent.morefun.naruto.util.def.TimerDef;
	
	public class ExeuntAction extends Action
	{
		private var exeuntNinjaList:Array = [];
		private var roundId:int;
		private var actionId:int;
		public function ExeuntAction(roundId:int, actionId:int)
		{
			super();
			
			this.roundId = roundId;
			this.actionId = actionId;
		}
		
		override protected function onBegin():void
		{
			var ninjaInfos:Array;
			var ninja:Ninja;
			var exeuntNinjaInfos:Array;
			
			exeuntNinjaInfos = [];
			
			ninjaInfos = data as Array;
			//设置登场列表
			for each(var ninjaInfo:NinjaInfo in ninjaInfos)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(ninjaInfo.pos);
				if(ninjaInfo.exeuntStageAction != -1)
				{
					ninja.data.exeuntStageAction = ninjaInfo.exeuntStageAction;
				}
				
				exeuntNinjaList.push({pos:ninja.data.pos, ninja:ninja});
				exeuntNinjaInfos.push(ninja.data);
			}
			
			new NinjaExeuntNotice(exeuntNinjaInfos).send();
			
			if(exeuntNinjaList.length == 0)
			{
				this.end();
				return ;
			}
			
			//按顺序登场
			exeuntNinjaList.sortOn("pos", Array.NUMERIC);
			//			TweenManager.delayedCall(0.1, onExeuntNext);
			onExeuntNext();
		}
		
		private var isLast:Boolean;
		private var delayNinjaObjes:Array = [];
		private function onExeuntNext():void
		{
			var battleNinja:Ninja;
			var ninjaObj:Object;
			var ninjaCfg:NinjaBattleCfgInfo;
			
			for each(ninjaObj in exeuntNinjaList)
			{
				if(ninjaObj.isExecute == null || ninjaObj.isExecute == false)
				{
					break;
				}
			}
			
			battleNinja = ninjaObj.ninja;
			ninjaObj.isExecute = true;
			
			ninjaCfg = NinjaConfig.getNinjaInfoById(battleNinja.data.ninjaId);
			
			if(battleNinja.data.hp == 0)
			{
//				if(ninja.data.exeuntStageAction != StageNinjaActionType.DEAD_SMOKE)
//				{
				battleNinja.data.exeuntStageAction = StageNinjaActionType.EXIT_VANISH;
//				}
			}
			
			battleNinja.isExeunt = true;
			
			switch(battleNinja.data.exeuntStageAction)
			{
				case StageNinjaActionType.EXIT_JUMP:
					battleNinja.playRoleAction(NinjaMotionDef.exeunt, false, onNinjaMotionEnd, [ninjaObj]);
					break;
				case StageNinjaActionType.EXIT_SMOKE:
					battleNinja.callupExeunt(onNinjaMotionEnd, [ninjaObj]);
					break;
				case StageNinjaActionType.EXIT_VANISH:
					onNinjaMotionEnd([ninjaObj]);
					break;
				case StageNinjaActionType.EXIT_FALL:
					battleNinja.dead(onNinjaMotionEnd, [ninjaObj]);
					break;
				case StageNinjaActionType.EXIT_DELAY:
					onNinjaMotionDelayEnd([ninjaObj]);
					TimerProvider.addTimeTask(TimerDef.SECOND * 4, onDelayMotionEnd, ninjaObj);
					delayNinjaObjes.push(ninjaObj);
					break;
				case StageNinjaActionType.DEAD_SMOKE:
					battleNinja.data.exeuntEffect = EffectConfig.getShareEffectInfoById(1).clone();
					battleNinja.callupExeunt(onNinjaMotionEnd, [ninjaObj]);
					break;
			}
			
			for each(ninjaObj in exeuntNinjaList)
			{
				if(ninjaObj.isExecute == null || ninjaObj.isExecute == false)
				{
					onExeuntNext();
					break;
				}
			}
			
		}
		
		private function onDelayMotionEnd(param:Object):void
		{
			var battleNinja:Ninja;
			var ninjaObj:Object;
			
			
			ninjaObj = param;
			TimerProvider.removeTimeTask(TimerDef.SECOND * 4, onDelayMotionEnd, ninjaObj);
			
			battleNinja.isExeunt = false;
			battleNinja = ninjaObj.ninja;
			
			EventCenter.executeHandler(battleNinja, RenderEvent.ROLE_EXEUNT);
			
			FightManagerCenter.sceneMgr.removeSceneItem(battleNinja.data.pos);
			FightManagerCenter.ninjaMgr.releaseNinja(battleNinja.data.pos);
		}
		
		private function onNinjaMotionEnd(param:Array):void
		{
			var battleNinja:Ninja;
			var ninjaObj:Object;
			
			ninjaObj = param[0];
			battleNinja = ninjaObj.ninja;
			
			EventCenter.executeHandler(battleNinja, RenderEvent.ROLE_EXEUNT);
			
			exeuntNinjaList.splice(exeuntNinjaList.indexOf(ninjaObj), 1);
			FightManagerCenter.sceneMgr.removeSceneItem(battleNinja.data.pos);
			FightManagerCenter.ninjaMgr.releaseNinja(battleNinja.data.pos);
			
			battleNinja.isExeunt = false;
			
			if(exeuntNinjaList.length == 0)
			{
				delayNinjaObjes.splice(0, delayNinjaObjes.length);
				this.end();
			}
		}
		
		private function onNinjaMotionDelayEnd(param:Array):void
		{
			var ninjaObj:Object;
			
			ninjaObj = param[0];
			
			exeuntNinjaList.splice(exeuntNinjaList.indexOf(ninjaObj), 1);
			if(exeuntNinjaList.length == 0)
			{
				delayNinjaObjes.splice(0, delayNinjaObjes.length);
				this.end();
			}
		}
		
		override protected function onDestroy():void
		{
			super.onDestroy();
			
			for each(var ninjaObj:Object in delayNinjaObjes)
			{
				TimerProvider.removeTimeTask(TimerDef.SECOND * 4, onDelayMotionEnd, ninjaObj);
			}
		}
		
		
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}
			
			exeuntNinjaList = null;
			delayNinjaObjes = null;
		}
	}
}