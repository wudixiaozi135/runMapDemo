package com.tencent.morefun.naruto.plugin.motion.player.action.skill
{
	import com.tencent.morefun.naruto.plugin.motion.MotionLogger;
	import com.tencent.morefun.naruto.plugin.motion.data.StageNinjaActionType;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.notice.NinjaReplaceNotice;
	import com.tencent.morefun.naruto.plugin.motion.player.action.Action;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	import com.tencent.morefun.naruto.util.def.TimerDef;

	public class ReplaceNinjaAction extends Action
	{
		private var roundId:int;
		private var actionId:int;
		private var ninjaInfos:Array;
		private var exeuntActionList:Array = [];
		
		public function ReplaceNinjaAction(roundId:int, actionId:int, ninjaInfos:Array)
		{
			super();
			
			this.ninjaInfos = ninjaInfos;
			
			this.roundId = roundId;
			this.actionId = actionId;
			
//			fix();
			addExeuntNinja();
			addReplaceNinja();
		}
		
		private function addExeuntNinja():void
		{
			var index:int;
			var action:ExeuntAction;
			var copyNinjaInfo:NinjaInfo;
			
			for each(var ninjaInfo:NinjaInfo in exeuntActionList)
			{
				copyNinjaInfo = ninjaInfo.clone();
				copyNinjaInfo.pos = copyNinjaInfo.stagePos;
				FightManagerCenter.ninjaMgr.getNinjaByPos(copyNinjaInfo.pos).data.exeuntStageAction = StageNinjaActionType.EXIT_VANISH;
				
				action = new ExeuntAction(roundId, actionId);
				action.data = [copyNinjaInfo];
				ninjaInfo.stagePos = -1;
				
				this.addSubAction(action, 0, false)
			}
		}
		
		private function addReplaceNinja():void
		{
			var index:int = 1;
			var action:ReplaceSingleNinjaAction;
			
			for each(var ninjaInfo:NinjaInfo in ninjaInfos)
			{
				action = new ReplaceSingleNinjaAction(roundId, actionId, ninjaInfo);
				action.data = [ninjaInfo];
				this.addSubAction(action, index, false);
				MotionLogger.output("stagePos",ninjaInfo.stagePos,"to",ninjaInfo.pos);
				index += 1;
			}
			
			new NinjaReplaceNotice(ninjaInfos).send();
		}
		
//		private function fix():void
//		{
//			var find:Boolean;
//			var fixNinjaInfo:Array;
//			
//			fixNinjaInfo = ninjaInfos.concat();
//			for each(var ninjaInfoA:NinjaInfo in fixNinjaInfo)
//			{
//				for(var i:int = 0;i < ninjaInfos.length;i ++)
//				{
//					for each(var ninjaInfoB:NinjaInfo in fixNinjaInfo)
//					{
//						if(ninjaInfoA != ninjaInfoB && ninjaInfoA.pos == ninjaInfoB.stagePos)
//						{
//							exeuntActionList.push(ninjaInfoA);
//							exeuntActionList.push(ninjaInfoB);
//							fixNinjaInfo.splice(fixNinjaInfo.indexOf(ninjaInfoA), 1);
//							fixNinjaInfo.splice(fixNinjaInfo.indexOf(ninjaInfoB), 1);
//							
//							i = 0;
//							break;
//						}
//					}
//				}
//			}
//		}
		
		override protected function onAllSubActionEnd():void
		{
			this.end();
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

			ninjaInfos = null;
			exeuntActionList = null;
		}
	}
}