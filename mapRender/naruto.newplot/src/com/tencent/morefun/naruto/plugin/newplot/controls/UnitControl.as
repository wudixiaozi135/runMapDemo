package com.tencent.morefun.naruto.plugin.newplot.controls
{
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.units.BasePlotUnit;
	import com.tencent.morefun.naruto.plugin.newplot.units.BattleUnit;
	import com.tencent.morefun.naruto.plugin.newplot.units.BlackAsidePlotUnit;
	import com.tencent.morefun.naruto.plugin.newplot.units.PlotUnitCreator;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
	import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
	import com.tencent.morefun.naruto.plugin.ui.layer.def.LocationDef;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.utils.clearTimeout;
	import flash.utils.setTimeout;
	
	import naruto.component.controls.ButtonNormalBlue;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class UnitControl extends EventDispatcher
	{
		private var units:Vector.<BasePlotUnit>;
		private var nextIndex:int;
		private var playingUnits:Vector.<BasePlotUnit>;
		private var skipBtn:ButtonNormalBlue;
		private var timeouts:Array;
		public var skiped:Boolean;
		
		public function UnitControl()
		{
			playingUnits = new Vector.<BasePlotUnit>;
			skipBtn = new ButtonNormalBlue();
			skipBtn.label = I18n.lang("as_newplot_1451031574_4530");
			skipBtn.addEventListener(MouseEvent.CLICK,onSkipBtn);
			timeouts = [];
		}
		
		protected function onSkipBtn(event:MouseEvent):void
		{
			skiped = true;
			destroySkipBtn();
			logger.output("[newplot]","[UnitControl]","onSkipBtn");
			destroyTimeouts();
			skipUnits();
		}
		
		public function setData(unitCfgs:XMLList, entryUnitCfgs:Vector.<XML>=null):void
		{
			units = new Vector.<BasePlotUnit>();
			
			var unit:BasePlotUnit;
			
			if(entryUnitCfgs)
			{
				for(var i:int=0;i<entryUnitCfgs.length;i++)
				{
					unit = PlotUnitCreator.create(entryUnitCfgs[i]);
					units.push(unit);
				}
			}
			
			for each(var cfg:XML in unitCfgs)
			{
				unit = PlotUnitCreator.create(cfg);
				units.push(unit);
			}
		}
		
		public function startup(startUnitId:int):void
		{
			logger.output("[newplot]","[UnitControl]","startup");
			skiped = false;
			LayoutManager.singleton.addItemAndLayout(skipBtn,LayerDef.NEW_PLOT_TOP,LocationDef.BOTTOMRIGHT,new Point(-120,-80),false);
			if(startUnitId)
			{
				for(var i:int=0;i < units.length;i++)
				{
					if(units[i].data.id == startUnitId)
					{
						nextIndex = i;
						next();
						break;
					}else
					{
						units[i].skip();
					}
				}
			}else
			{
				next();
			}
		}
		
		private function next():void
		{
			if(nextIndex < units.length)
			{
				for(var i:int=nextIndex;i < units.length;i++)
				{
					if(units[i].data.playOrder == BasePlotUnitData.PLAY_ORDER_BEFOR)
					{
						playUnit(i);
					}else if(units[i].data.playOrder == BasePlotUnitData.PLAY_ORDER_AFTER)
					{
						if(playingUnits.length==0)
						{
							playUnit(i);
						}else
						{
							break;
						}
					}else
					{
						throw new Error(I18n.lang("as_newplot_1451031574_4531")+units[nextIndex+i].data.playOrder);
					}
				}
				nextIndex = i;
			}else
			{
				if(playingUnits.length==0)
				{	
					logger.output("[newplot]","[UnitControl]","complete");
					destroySkipBtn();
					dispatchEvent(new Event(Event.COMPLETE));
				}
			}
		}
		
		private function playUnit(index:int):void
		{
			var unit:BasePlotUnit = units[index];
			logger.output("[newplot]","[UnitControl]","playUnit:",unit,unit.data.id);
			unit.addEventListener(Event.COMPLETE,onUnitComplete);
			if(unit is BattleUnit)
			{
				destroySkipBtn();
			}
			
			if(unit.data.playOrder == BasePlotUnitData.PLAY_ORDER_AFTER)
			{
				playingUnits.length = 0;
			}
			playingUnits.push(unit);
			
//			TimerProvider.addTimeTask(unit.data.playDelay,function():void{
//				logger.output("[newplot]","[UnitControl]","unit.play:",unit,unit.data.id);
//				unit.play();
//			},null,0,0,1);
//			TweenLite.delayedCall(unit.data.playDelay,function():void{
//				logger.output("[newplot]","[UnitControl]","unit.play:",unit,unit.data.id);
//				unit.play();
//			});
			//黑屏幕旁白需要立即连续播放,,,ps:如果直接全部playDelay都=0时，直接去play，那有些事件可能立马就结束的，，可能会导致整个后续的unit顺序有问题
			if(unit.data.playDelay==0 && unit is BlackAsidePlotUnit)
			{
				logger.output("[newplot]","[UnitControl]","unit.play:",unit,unit.data.id);
				unit.play();
			}else
			{
				var timeout:uint = setTimeout(function():void{
					logger.output("[newplot]","[UnitControl]","unit.play:",unit,unit.data.id);
					unit.play();
				},unit.data.playDelay);
				
				timeouts.push(timeout);
			}
//			unit.play();
		}
		
		protected function onUnitComplete(event:Event):void
		{
			var unit:BasePlotUnit = event.currentTarget as BasePlotUnit;
			unit.removeEventListener(Event.COMPLETE,onUnitComplete);
			logger.output("[newplot]","[UnitControl]","onUnitComplete:",unit,unit.data.id);
			var index:int = playingUnits.indexOf(unit);
			if(index == playingUnits.length-1)
			{
				playingUnits.pop();
				unit.destroy();
				next();
			}else
			{
				playingUnits.splice(index,1);
				unit.destroy();
			}
		}
		
		protected function skipUnits():void
		{
			//删除正在播放的unit
			for(var i:int=playingUnits.length-1;i>=0;i--)
			{
				if(playingUnits[i] is BattleUnit)
				{
					throw new Error(I18n.lang("as_newplot_1451031574_4532"));
				}
				playingUnits[i].removeEventListener(Event.COMPLETE,onUnitComplete);
				playingUnits[i].skip();
				playingUnits[i].destroy();
				
				playingUnits.splice(i,1);
			}
			
			//跳过正在播放的unit，直到战斗unit
			for(i=nextIndex;i < units.length;i++)
			{
				if(units[i] is BattleUnit)
				{
					nextIndex = i;
					next();
					return;
				}else
				{
					units[i].skip();
					units[i].destroy();
				}
			}
			nextIndex = i;
			next();
		}
		
		protected function destroySkipBtn():void
		{
			logger.output("[newplot]","[UnitControl]","destroySkipBtn");
			if(skipBtn)
			{
				LayoutManager.singleton.removeItem(skipBtn);
				skipBtn.removeEventListener(MouseEvent.CLICK,onSkipBtn);
				skipBtn.dispose();
				skipBtn = null;
			}
		}
		
		protected function destroyTimeouts():void
		{
			for each(var timeout:uint in timeouts)
			{
				clearTimeout(timeout);
			}
			timeouts.length = 0;
		}
		
		public function destroy():void
		{
			logger.output("[newplot]","[UnitControl]","destroy");
			destroyTimeouts();
			timeouts = null;
			destroySkipBtn();
//			TweenLite.killTweensOf(playUnit);
			playingUnits = null;
			units = null;
		}
	}
}