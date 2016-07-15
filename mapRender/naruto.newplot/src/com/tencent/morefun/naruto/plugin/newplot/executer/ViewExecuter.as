package com.tencent.morefun.naruto.plugin.newplot.executer
{
	import com.tencent.morefun.framework.base.Command;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	import com.tencent.morefun.naruto.plugin.exui.loading.NarutoLoading;
	import com.tencent.morefun.naruto.plugin.newplot.cfgs.ActorConfig;
	import com.tencent.morefun.naruto.plugin.newplot.cfgs.NewPlotConfig;
	import com.tencent.morefun.naruto.plugin.newplot.cmds.GetCurrentNewPlotCommand;
	import com.tencent.morefun.naruto.plugin.newplot.cmds.StartupNewPlotCommand;
	import com.tencent.morefun.naruto.plugin.newplot.datas.BasePlotUnitData;
	import com.tencent.morefun.naruto.plugin.newplot.defs.PlotUnitTypeDef;
	import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
	import com.tencent.morefun.naruto.plugin.newplot.views.Actor;
	import com.tencent.morefun.naruto.plugin.newplot.views.NewPlot;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
	import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
	
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.utils.ByteArray;
	import flash.utils.getQualifiedClassName;
	
	import base.ApplicationData;
	import base.NarutoExecuter;
	
	import battle.def.BattleKeyDef;
	
	import cfgData.dataStruct.SceneCFG;
	
	import def.ExecuterDef;
	import def.ModelDef;
	import def.PluginDef;
	
	import hud.command.DelayHideLoadingCheck;
	
	import map.data.MapData;
	
	import newplot.cmds.DestroyNewPlotCommand;
	import newplot.cmds.RequestPlayNewPlotCommand;
	
	import player.commands.GetAllLeaderPlayerDataCommand;
	import player.commands.SetAllLeaderPlayerPosAndDirCommand;
	import player.commands.SetSelfPlayerPosAndDirCommand;
	import player.datas.PlayerData;
	
	import world.SceneConfig;
	
    import com.tencent.morefun.naruto.i18n.I18n;
	public class ViewExecuter extends NarutoExecuter
	{
		private var newplot:NewPlot;
		private var doneFun:Function;
		private var changeIdFun:Function;
		
		public function ViewExecuter()
		{
			super(PluginDef.NEWPLOT, ExecuterDef.NEWPLOT_VIEW);
		}
		
		protected function onBattleInfo(event:ModelEvent):void
		{
			switch(event.key)
			{
				case BattleKeyDef.START:
					newplot && newplot.mapControl.stop();
					break;
				case BattleKeyDef.FAIL:
				case BattleKeyDef.END:
					newplot && newplot.mapControl.play();
					break;
			}
		}
		
		override public function doCommand(command:Command):void
		{
			switch(getQualifiedClassName(command))
			{
				case getQualifiedClassName(StartupNewPlotCommand):
					doStartupNewPlotCommand(command as StartupNewPlotCommand);
					break;
				case getQualifiedClassName(GetCurrentNewPlotCommand):
					GetCurrentNewPlotCommand(command).newplot = newplot;
					GetCurrentNewPlotCommand(command).finish();
					break;
				case getQualifiedClassName(DestroyNewPlotCommand):
					this.doDestroyNewPlotCommand(command as DestroyNewPlotCommand);
					break;
			}
		}
		private var isFirst:Boolean = true;
		private function doStartupNewPlotCommand(cmd:StartupNewPlotCommand):void
		{
			NarutoLoading.lockFullLoading = false;
			new DelayHideLoadingCheck().call();
			
			doneFun = cmd.doneFun;
			changeIdFun = cmd.changeIdFun;
			
			if(this.newplot)
			{
				isFirst = false;
				destroyNewPlot(this.newplot);
			}else
			{
				isFirst = true;
//				LayerManager.singleton.setLayerIndex(LayerDef.BACKG_FRAME, LayerDef.NEW_PLOT_INDEX + 1);
//				LayerManager.singleton.setLayerIndex(LayerDef.FRAME, LayerDef.NEW_PLOT_INDEX + 2);
//				LayerManager.singleton.setLayerIndex(LayerDef.BOX, LayerDef.NEW_PLOT_INDEX + 3);
//				LayerManager.singleton.setLayerIndex(LayerDef.LOADING, LayerDef.NEW_PLOT_INDEX + 4);
				
				LayerManager.singleton.setAllLayerVisible(false);
				LayerManager.singleton.setLayerVisible(LayerDef.NEW_PLOT_TOP,true);
				LayerManager.singleton.setLayerVisible(LayerDef.NEW_PLOT,true);
				LayerManager.singleton.setLayerVisible(LayerDef.NEW_PLOT_FRAME,true);
				LayerManager.singleton.setLayerVisible(LayerDef.BACKG_FRAME,true);
				LayerManager.singleton.setLayerVisible(LayerDef.LOADING,true);
				LayerManager.singleton.setLayerVisible(LayerDef.PLOT,true);
				LayerManager.singleton.setLayerVisible(LayerDef.PLOT_FRAME,true);
				LayerManager.singleton.setLayerVisible(LayerDef.VIDEO,true);
				LayerManager.singleton.setLayerVisible(LayerDef.PREWAR,true);
				LayerManager.singleton.setLayerVisible(LayerDef.PREWAR_FORE_GROUND,true);
				LayerManager.singleton.setLayerVisible(LayerDef.PREWAR_UI,true);
				LayerManager.singleton.setLayerVisible(LayerDef.TIPS,true);
				LayerManager.singleton.setLayerVisible(LayerDef.GAME_TIP,true);
				LayerManager.singleton.setLayerVisible(LayerDef.TEXT_BOX,true);
				LayerManager.singleton.setLayerVisible(LayerDef.REWARD_BOX,true);
				LayerManager.singleton.setLayerVisible(LayerDef.BOX,true);
				LayerManager.singleton.setLayerVisible(LayerDef.DEBUG,true);
			}
			this.newplot = new NewPlot(cmd.id,cmd.npcId);
			LayerManager.singleton.addItemToLayer(this.newplot,LayerDef.NEW_PLOT);
			LayerManager.singleton.addItemToLayer(this.newplot.maskLayer,LayerDef.NEW_PLOT);
			
			var plotConfig:NewPlotConfig = new NewPlotConfig();
			plotConfig.setData(getConfig("plugin.newplot.cfg"));
			this.newplot.config = plotConfig;
			
			var actorConfig:ActorConfig = new ActorConfig();
			actorConfig.setData(getConfig("plugin.newplot.actorConfig"));
			
			var si:SceneCFG = SceneConfig.getSceneInfoByMapId(plotConfig.mapId);
			if(si == null)
			{
				throw new Error(I18n.lang("as_newplot_1451031574_4577_0")+plotConfig.mapId+I18n.lang("as_newplot_1451031574_4577_1"));
				return;
			}
			
			this.newplot.actorControl.setData(actorConfig,plotConfig.cfg.actor,si.time);
			
			var mapData:MapData = new MapData();
			mapData.setData(getPluginAsset("plugin.newplot.map.data") as ByteArray);
			var bgbytes:ByteArray = getPluginAsset("plugin.newplot.map.bg") as ByteArray;
			bgbytes.position = 0;
			var mgbytes:ByteArray = getPluginAsset("plugin.newplot.map.mg") as ByteArray;
			mgbytes.position = 0;
			var fgbytes:ByteArray = getPluginAsset("plugin.newplot.map.fg") as ByteArray;
			fgbytes.position = 0;
			this.newplot.mapControl.setData(
				bgbytes.readObject(),
				mgbytes.readObject(),
				fgbytes.readObject(),
				mapData,
				(getPluginAsset("plugin.newplot.map.base") as Loader).content as Bitmap,
				((getPluginAsset("plugin.newplot.map.alpha") as Loader).content as Bitmap).bitmapData
			);
			
			this.newplot.cameraControl.setData(LayerManager.singleton.stage);
			var initActor:Actor;
			if(plotConfig.initActorSeq)
			{
				initActor = this.newplot.actorControl.getActor(plotConfig.initActorSeq);
			}
			
			var entryUnitCfgs:Vector.<XML>;
			if (initActor)
			{
				//修补开始时的坐标，自动走过去
				//条件是1、第一个剧情，2、剧情地图和场景地图一样，3、剧情里面有玩家，4、镜头焦点是在玩家身上的
				if (isFirst && PlotUtils.getCurrMapId() == plotConfig.mapId && plotConfig.initActorSeq==1)
				{
					entryUnitCfgs = new Vector.<XML>();
					
					var actorMoveUnitCfg:XML = <plotUnit/>;
					actorMoveUnitCfg.@id = 99901;
					actorMoveUnitCfg.@playOrder = BasePlotUnitData.PLAY_ORDER_BEFOR;
					actorMoveUnitCfg.@type = PlotUnitTypeDef.ACTOR_MOVE;
					actorMoveUnitCfg.@actorSeq = 1;
					actorMoveUnitCfg.@actorId = 0;
					actorMoveUnitCfg.@x = selfInfo.getPosition().x;
					actorMoveUnitCfg.@y = selfInfo.getPosition().y;
					actorMoveUnitCfg.@directionAfterMove = initActor.getCurrAction();
					actorMoveUnitCfg.@desX = initActor.x;
					actorMoveUnitCfg.@desY = initActor.y;
					entryUnitCfgs.push(actorMoveUnitCfg);
					initActor.x = selfInfo.getPosition().x;
					initActor.y = selfInfo.getPosition().y;
					
					var getAllLeaderPlayerDataCommand:GetAllLeaderPlayerDataCommand = new GetAllLeaderPlayerDataCommand();
					getAllLeaderPlayerDataCommand.call();
					var unitID:int = 99902;
					if (getAllLeaderPlayerDataCommand.playerDataList && getAllLeaderPlayerDataCommand.playerDataList.length)
					{
						for each (var playerData:PlayerData in getAllLeaderPlayerDataCommand.playerDataList)
						{
							var followActor:Actor = this.newplot.actorControl.getActorByResId(playerData.ninja);
							if (followActor)
							{
								actorMoveUnitCfg = <plotUnit/>;
								actorMoveUnitCfg.@id = unitID;
								actorMoveUnitCfg.@playOrder = BasePlotUnitData.PLAY_ORDER_BEFOR;
								actorMoveUnitCfg.@type = PlotUnitTypeDef.ACTOR_MOVE;
								actorMoveUnitCfg.@actorSeq = followActor.data.seq;
								actorMoveUnitCfg.@actorId = followActor.data.id;
								actorMoveUnitCfg.@x = playerData.getPosition().x;
								actorMoveUnitCfg.@y = playerData.getPosition().y;
								actorMoveUnitCfg.@directionAfterMove = followActor.getCurrAction();
								actorMoveUnitCfg.@desX = followActor.x;
								actorMoveUnitCfg.@desY = followActor.y;
								entryUnitCfgs.unshift(actorMoveUnitCfg);
								followActor.x = playerData.getPosition().x;
								followActor.y = playerData.getPosition().y;
								unitID++;
							}
						} // end for each
					}
				}
				this.newplot.cameraControl.bindActor(initActor);
				
			}else
			{
				this.newplot.cameraControl.setCenterPos(plotConfig.initCPX,plotConfig.initCPY);
			}
			
			this.newplot.unitControl.setData(plotConfig.cfg.plotUnit, entryUnitCfgs);
			
			plugin.retrieveModel(ModelDef.BATTLE).addEventListener(ModelEvent.UPDATE,onBattleInfo);
			this.newplot.addEventListener(Event.COMPLETE,onNewPlot);
			this.newplot.startup();
			
		}
		
		private function destroyNewPlot(newplot:NewPlot):void
		{
			plugin.retrieveModel(ModelDef.BATTLE).removeEventListener(ModelEvent.UPDATE,onBattleInfo);
			if (this.newplot.parent)
			{
				this.newplot.parent.removeChild(this.newplot);
			}
			this.newplot.removeEventListener(Event.COMPLETE, onNewPlot);
			this.newplot.destroy();
			this.newplot = null;
		}
		
		// 剧情结束后同步一下各角色的位置朝向。
		private function syncFollowRole():void
		{
			var cmd:GetAllLeaderPlayerDataCommand = new GetAllLeaderPlayerDataCommand();
			cmd.call();
			if (cmd.playerDataList && cmd.playerDataList.length)
			{
				var ninjiaList:Vector.<uint> = new Vector.<uint>(); // ninjia 的索引对应下现属性的索引
				var positionXList:Vector.<int> = new Vector.<int>();
				var positionYList:Vector.<int> = new Vector.<int>();
				var directionList:Vector.<int> = new Vector.<int>();
				for each (var playerData:PlayerData in cmd.playerDataList)
				{
					var followActor:Actor = this.newplot.actorControl.getActorByResId(playerData.ninja);
					if (followActor)
					{
						var toDir:int = -1;
						var cAction:String = followActor.getCurrAction();
						if (cAction.indexOf("idle_") == 0 || cAction.indexOf("walk_") == 0 || cAction.indexOf("run_") == 0)
						{
							toDir = int(cAction.charAt(cAction.length-1));
						}
						ninjiaList.push(playerData.ninja);
						positionXList.push(followActor.x);
						positionYList.push(followActor.y);
						directionList.push(toDir);
					}
				} // end for each
				new SetAllLeaderPlayerPosAndDirCommand(ninjiaList, positionXList, positionYList, directionList).call();
			}
		}
		
		// 注：连续剧情和剧情副本结算时，不马上destroy。
		protected function onNewPlot(event:Event):void
		{
			switch(event.type)
			{
				case Event.COMPLETE:
				{
					if(this.newplot.config.nextPlotId)
					{
						changeIdFun && changeIdFun(this.newplot.config.nextPlotId);
						new RequestPlayNewPlotCommand(this.newplot.config.nextPlotId,doneFun,changeIdFun,this.newplot.npcId).call();
					}
					else
					{
						if (PlotUtils.getCurrMapId() == this.newplot.config.mapId)
						{
							this.syncFollowRole();
							var toScene:int = this.newplot.config.toScene;
							var toDirection:String = this.newplot.config.toDirection;
							var toX:int = this.newplot.config.toX;
							var toY:int = this.newplot.config.toY;
							//如果有定制战斗，，还设置这个坐标，，会覆盖定制战斗失败的复活坐标
							if(this.newplot.hasBattleUnit==false && (toScene == 0 || toScene == ApplicationData.singleton.globelInfo.sceneId))
							{
								var toPos:Point;
								var toDir:int = -1;
								if(toX || toY)
								{
									toPos = new Point(toX,toY);
								}
								if(toDirection)
								{
									toDir = int(toDirection);
								}
								new SetSelfPlayerPosAndDirCommand(toPos,toDir).call();
							}
						}
						
						if (doneFun != null)
						{
							doneFun(this.newplot.unitControl.skiped, this.newplot.config.stayInPlot);
						}
						else
						{
							this.doDestroyNewPlot();
						}
					}
					break;
				} // end case
			} // end switch
		}
		
		private function doDestroyNewPlotCommand(cmd:DestroyNewPlotCommand):void
		{
			if(this.newplot && this.newplot.id == cmd.id)
			{
				doDestroyNewPlot();
			}
			cmd.finish();
		}
		
		private function doDestroyNewPlot():void
		{
			if (this.newplot)
			{
				this.destroyNewPlot(this.newplot);
				LayerManager.singleton.setAllLayerVisible(true);
			}
		}
		
	}
}