package com.tencent.morefun.naruto.plugin.newplot.executer
{
	import com.tencent.morefun.framework.base.Command;
	import com.tencent.morefun.naruto.plugin.newplot.cmds.BeginBattleCommand;
	import com.tencent.morefun.naruto.plugin.newplot.cmds.PreLoadMapAssetCommand;
	import com.tencent.morefun.naruto.plugin.newplot.cmds.PreLoadNewPlotAssetCommand;
	import com.tencent.morefun.naruto.plugin.newplot.cmds.StartupNewPlotCommand;
	import com.tencent.morefun.naruto.plugin.newplot.utils.PlotUtils;
	
	import flash.utils.getQualifiedClassName;
	
	import base.NarutoExecuter;
	
	import battle.command.RequestPveFightStartCommand;
	import battle.def.RequestFightStartTypeDef;
	
	import def.ExecuterDef;
	import def.PluginDef;
	
	import newplot.cmds.RequestPlayNewPlotCommand;
	
	import user.def.UserStateDef;
	
	public class LogicExecuter extends NarutoExecuter
	{
		public function LogicExecuter()
		{
			super(PluginDef.NEWPLOT, ExecuterDef.NEWPLOT_LOGIC);
		}
		override public function doCommand(command:Command):void
		{
			switch(getQualifiedClassName(command))
			{
				case getQualifiedClassName(RequestPlayNewPlotCommand):
					requestPlayNewPlot(command as RequestPlayNewPlotCommand);
					break;
				case getQualifiedClassName(PreLoadNewPlotAssetCommand):
					doLoadNewPlotAsset(command as PreLoadNewPlotAssetCommand);
					break;
				case getQualifiedClassName(PreLoadMapAssetCommand):
					doLoadMapAssetCommand(command as PreLoadMapAssetCommand);
					break;
				case getQualifiedClassName(BeginBattleCommand):
					doBeginBattleCommand(command as BeginBattleCommand);
					break;
			}
		}
		
		private var beginBattleCommand:BeginBattleCommand;
		private function doBeginBattleCommand(cmd:BeginBattleCommand):void
		{
			beginBattleCommand = cmd;
			
			var pvecmd:RequestPveFightStartCommand = new RequestPveFightStartCommand(RequestFightStartTypeDef.TRIGGER,cmd.id, 0, cmd.newplotId, cmd.npcId);
//			pvecmd.addEventListener(CommandEvent.FINISH,onRequestPveFightStartCommand);
//			pvecmd.addEventListener(CommandEvent.FAILD,onRequestPveFightStartCommand);
			pvecmd.call();
			addSelfStateListener(UserStateDef.BASE_PVE,onPveState);
			
			function onPveState():void
			{
				if(getState(UserStateDef.BASE_PVE) == false)
				{
					removeSelfStateListener(UserStateDef.BASE_PVE,onPveState);
					beginBattleCommand.finish();
					beginBattleCommand = null;
				}
			}
			
//			function onRequestPveFightStartCommand(event:CommandEvent):void
//			{
//				var pvecmd:RequestPveFightStartCommand = event.currentTarget as RequestPveFightStartCommand;
//				pvecmd.removeEventListener(CommandEvent.FINISH,onRequestPveFightStartCommand);
//				pvecmd.removeEventListener(CommandEvent.FAILD,onRequestPveFightStartCommand);
//				switch(event.type)
//				{
//					case CommandEvent.FINISH:
//						battleModel.addEventListener(ModelEvent.UPDATE,onBattleModel);
//						break;
//					case CommandEvent.FAILD:
//						beginBattleCommand.faild(1);
//						beginBattleCommand = null;
//						break;
//				}
//			}
		}
		
//		protected function onBattleModel(event:ModelEvent):void
//		{
//			switch(event.key)
//			{
//				case BattleKeyDef.END:
//					battleModel.removeEventListener(ModelEvent.UPDATE,onBattleModel);
//					if(beginBattleCommand)
//					{
//						beginBattleCommand.finish();
//						beginBattleCommand = null;
//					}
//					break;
//				case BattleKeyDef.FAIL:
//					battleModel.removeEventListener(ModelEvent.UPDATE,onBattleModel);
//					if(beginBattleCommand)
//					{
//						beginBattleCommand.faild(1);
//						beginBattleCommand = null;
//					}
//					break;
//			}
//		}
		
		private function doLoadMapAssetCommand(cmd:PreLoadMapAssetCommand):void
		{
			new StartupNewPlotCommand(cmd.id, doneFun, changeIdFun, cmd.npcId).call();
		}
		
		private function doLoadNewPlotAsset(cmd:PreLoadNewPlotAssetCommand):void
		{
			var plotConfig:XML = getConfig("plugin.newplot.cfg");
			var mapId:int = plotConfig.@mapId;
			
			updateLinkRes("plugin.newplot.map.bg","assets/scene/map/"+mapId+"/_scene_bg.cfg");
			updateLinkRes("plugin.newplot.map.mg","assets/scene/map/"+mapId+"/_scene_mg.cfg");
			updateLinkRes("plugin.newplot.map.fg","assets/scene/map/"+mapId+"/_scene_fg.cfg");
			updateLinkRes("plugin.newplot.map.base","assets/scene/map/"+mapId+"/sceneMap.jpg");
			updateLinkRes("plugin.newplot.map.alpha","assets/scene/map/"+mapId+"/alphaMap.png");
			updateLinkRes("plugin.newplot.map.data","assets/scene/map/"+mapId+"/MapInfo.map");
			
			var preLoadMapAssetCommand:PreLoadMapAssetCommand = new PreLoadMapAssetCommand(cmd.id,mapId,cmd.npcId);
			updateCommandRes(
				preLoadMapAssetCommand.getCommandName(),
				"plugin.newplot.map.bg" + "," +
				"plugin.newplot.map.mg" + "," +
				"plugin.newplot.map.fg" + "," +
				"plugin.newplot.map.base" + "," +
				"plugin.newplot.map.alpha" + "," +
				"plugin.newplot.map.data"
			);
			preLoadMapAssetCommand.call();
		}
		
		private var doneFun:Function;
		private var changeIdFun:Function;
		private var requestPlayNewPlotCommand:RequestPlayNewPlotCommand;
		private function requestPlayNewPlot(cmd:RequestPlayNewPlotCommand):void
		{
			// TODO 等服务器回包
			requestPlayNewPlotCommand = cmd;
			doneFun = cmd.doneFun;
			changeIdFun = cmd.changeIdFun;
//			new PreLoadNewPlotAssetCommand(cmd.id).call();
			
//			setTimeout(respondPlayNewPlot,100);
			respondPlayNewPlot();
		}
		
		private function respondPlayNewPlot():void
		{
			var id:int = requestPlayNewPlotCommand.id;
			var npcId:int = requestPlayNewPlotCommand.npcId;
			requestPlayNewPlotCommand.finish();
			requestPlayNewPlotCommand = null;
			
			if(id == 999999)
			{
				PlotUtils.majorRoleType = 2;
				PlotUtils.majorRoleName = "999999"
			}else if(PlotUtils.majorRoleType == 0)
			{
				PlotUtils.majorRoleType = selfInfo.professions;
				PlotUtils.majorRoleName = selfInfo.name;
			}
			
			updateLinkRes("plugin.newplot.cfg","config/newplot/"+id+".xml",3);
			var cmd:PreLoadNewPlotAssetCommand = new PreLoadNewPlotAssetCommand(id,npcId);
			updateCommandRes(cmd.getCommandName(),"plugin.newplot.cfg");
			cmd.call();
		}
		
		
//		private function get battleModel():BattleInfo
//		{
//			return plugin.retrieveModel(ModelDef.BATTLE) as BattleInfo;
//		}
	}
}