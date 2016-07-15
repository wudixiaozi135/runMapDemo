package com.tencent.morefun.naruto.plugin.newplot.units
{
	import com.tencent.morefun.naruto.plugin.newplot.cfgs.PlotUnitCfg;
	import com.tencent.morefun.naruto.plugin.newplot.datas.ActorUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.AsidePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BattleUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BlackAsidePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BlackScreenUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BubbleUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.CameraMoveUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.DemoPlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.OldPlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.ScreenDialogUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.ShakePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.SmileyUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.defs.PlotUnitTypeDef;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class PlotUnitCreator
	{
		private static const datas:Array = [
			new PlotUnitCfg(PlotUnitTypeDef.DEMO, DemoPlotUnit, DemoPlotUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.ASIDE, AsidePlotUnit, AsidePlotUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.SHAKE, ShakePlotUnit, ShakePlotUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.BLACKASIDE, BlackAsidePlotUnit, BlackAsidePlotUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.OLDPLOT, OldPlotUnit, OldPlotUnitData),
			
			new PlotUnitCfg(PlotUnitTypeDef.ACTOR_APPEAR, ActorAppearUnit, ActorUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.ACTOR_DISAPPEAR, ActorDisappearUnit, ActorUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.ACTOR_DIRECTION_CHANGE, ActorDirectionChangeUnit, ActorUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.ACTOR_MOVE, ActorMoveUnit, ActorUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.ACTOR_ACTION, ActorActionUnit, ActorUnitData),
			
			new PlotUnitCfg(PlotUnitTypeDef.BUBBLE_DIALOG, BubbleDialogUnit, BubbleUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.BUBBLE_MIND, BubbleMindUnit, BubbleUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.SCREEN_DIALOG, ScreenDialogUnit, ScreenDialogUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.SMILEY_DIALOG, SmileyUnit, SmileyUnitData),
			
			new PlotUnitCfg(PlotUnitTypeDef.CAMERA_MOVE, CameraMoveUnit, CameraMoveUnitData),
			new PlotUnitCfg(PlotUnitTypeDef.BATTLE, BattleUnit, BattleUnitData),
			
			new PlotUnitCfg(PlotUnitTypeDef.BLACK_SCREEN, BlackScreen, BlackScreenUnitData),
		];
		
		public function PlotUnitCreator()
		{
		}
		
		public static function create(xml:XML):BasePlotUnit
		{
			var unit:BasePlotUnit;
			var unitData:BasePlotUnitData;
			var type:int = xml.@type;
			for each(var cfg:PlotUnitCfg in datas)
			{
				if(cfg.type == type)
				{
					unitData = new cfg.unitDataClass(xml);
					unit = new cfg.unitClass(unitData);
					break;
				}
			}
			if(unit == null)
			{
				throw new Error(I18n.lang("as_newplot_1451031574_4594")+type);
			}

            return unit;
		}
	}
}

