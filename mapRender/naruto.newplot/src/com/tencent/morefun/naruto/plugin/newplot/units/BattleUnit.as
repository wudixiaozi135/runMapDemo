package com.tencent.morefun.naruto.plugin.newplot.units
{
	import com.tencent.morefun.framework.base.CommandEvent;
	import com.tencent.morefun.naruto.plugin.newplot.cmds.BeginBattleCommand;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BattleUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
	import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;

	public class BattleUnit extends BasePlotUnit
	{
		public function BattleUnit(data:BasePlotUnitData)
		{
			super(data);
		}
		
		private function get selfData():BattleUnitData
		{
			return data as BattleUnitData;
		}
		
		override public function play():void
		{
//			LayerManager.singleton.setLayerIndex(LayerDef.BATTLE_MASK_DEF,LayerDef.NEW_PLOT_INDEX+1);
//			LayerManager.singleton.setLayerIndex(LayerDef.FIGHT,LayerDef.NEW_PLOT_INDEX+2);
//			LayerManager.singleton.setLayerIndex(LayerDef.FIGHT_UI,LayerDef.NEW_PLOT_INDEX+3);
			LayerManager.singleton.setLayerVisible(LayerDef.BATTLE_MASK_DEF,true);
			LayerManager.singleton.setLayerVisible(LayerDef.FIGHT,true);
			LayerManager.singleton.setLayerVisible(LayerDef.FIGHT_UI,true);
			LayerManager.singleton.setLayerVisible(LayerDef.BATTLE_FRAME,true);
			LayerManager.singleton.setLayerVisible(LayerDef.CHAT,true);
			
			PlotUtils.getCurrentPlot().hasBattleUnit = true;
			
			var beginBattleCommand:BeginBattleCommand = new BeginBattleCommand(selfData.battleId, PlotUtils.getCurrentPlot().id,PlotUtils.getCurrentPlot().npcId);
			beginBattleCommand.addEventListener(CommandEvent.FINISH,onBeginBattleCommand);
			beginBattleCommand.addEventListener(CommandEvent.FAILD,onBeginBattleCommand);
			beginBattleCommand.call();
		}
		
		protected function onBeginBattleCommand(event:CommandEvent):void
		{
			var beginBattleCommand:BeginBattleCommand = event.currentTarget as BeginBattleCommand;
			beginBattleCommand.removeEventListener(CommandEvent.FINISH,onBeginBattleCommand);
			beginBattleCommand.removeEventListener(CommandEvent.FAILD,onBeginBattleCommand);
			
//			LayerManager.singleton.setLayerIndex(LayerDef.BATTLE_MASK_DEF,LayerDef.BATTLE_MASK_INDEX);
//			LayerManager.singleton.setLayerIndex(LayerDef.FIGHT,LayerDef.FIGHT_INDEX);
//			LayerManager.singleton.setLayerIndex(LayerDef.FIGHT_UI,LayerDef.FIGHT_UI_INDEX);
			LayerManager.singleton.setLayerVisible(LayerDef.BATTLE_MASK_DEF,false);
			LayerManager.singleton.setLayerVisible(LayerDef.FIGHT,false);
			LayerManager.singleton.setLayerVisible(LayerDef.FIGHT_UI,false);
			LayerManager.singleton.setLayerVisible(LayerDef.BATTLE_FRAME,false);
			LayerManager.singleton.setLayerVisible(LayerDef.CHAT,false);
			complete();
		}
	}
}