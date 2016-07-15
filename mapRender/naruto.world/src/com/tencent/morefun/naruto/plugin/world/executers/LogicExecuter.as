package com.tencent.morefun.naruto.plugin.world.executers
{
	import com.greensock.TweenLite;
	import com.tencent.morefun.framework.base.Command;
	import com.tencent.morefun.framework.base.CommandEvent;
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	import com.tencent.morefun.naruto.plugin.exui.loading.NarutoLoading;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
	import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
	import com.tencent.morefun.naruto.plugin.world.base.CrossBlockFinder;
	import com.tencent.morefun.naruto.plugin.world.base.CrossSceneFinder;
	import com.tencent.morefun.naruto.sound.def.BgMusicTypeDef;
	
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.utils.ByteArray;
	import flash.utils.getQualifiedClassName;
	
	import base.ApplicationData;
	import base.NarutoExecuter;
	
	import battle.data.BattleInfo;
	import battle.def.BattleKeyDef;
	
	import cfgData.CFGDataEnum;
	import cfgData.CFGDataLibs;
	import cfgData.dataStruct.SceneCFG;
	
	import def.ExecuterDef;
	import def.ModelDef;
	import def.PluginDef;
	
	import hud.command.DelayHideLoadingCheck;
	
	import map.commands.CleanMapCommand;
	import map.commands.LadeMapCommand;
	
	import npc.commands.CleanNpcCommand;
	import npc.commands.LadeNpcCommand;
	
	import player.commands.CleanPlayerCommand;
	import player.commands.LadePlayerCommand;
	import player.commands.SetSelfPlayerPosAndDirCommand;
	
	import pvpBattlefield.command.GetPvpBattlefieldStartInfoCommand;
	
	import serverProto.team.ProtoTeamSyncType;
	
	import team.cmd.HideTeamSyncCommand;
	import team.cmd.RequestTeamMemberSyncCommand;
	import team.model.TeamModel;
	
	import world.SceneConfig;
	import world.SceneMusicConfig;
	import world.command.ChangeSceneCommand;
	import world.command.FindCrossBlockPathCommand;
	import world.command.FindCrossScenePathCommand;
	import world.command.StartChangeSceneCommand;
	import world.commands.ClearDelayHideFullLoadingCommand;
	import world.data.SceneType;
	import world.def.ChangeSceneReasonDef;
	
    import com.tencent.morefun.naruto.i18n.I18n;
	public class LogicExecuter extends NarutoExecuter
	{
		private static const RES_SCENE:String = "plugin.world.scene";
		private static const RES_SCENE_MUSIC:String = "plugin.world.music";
		private static const RES_SCENE_MUSIC_PORTAL:String = "plugin.world.portalConfig";
		
		private var battleModel:BattleInfo;
		
		public function LogicExecuter()
		{
			super(PluginDef.WORLD, ExecuterDef.WORLD_LOGIC);
			
			CrossSceneFinder.init(getConfig(RES_SCENE_MUSIC_PORTAL));
			SceneConfig.init(CFGDataLibs.parseData(getPluginAsset(RES_SCENE) as ByteArray,CFGDataEnum.ENUM_SceneCFG));
			
			
			SceneMusicConfig.init(getConfig(RES_SCENE_MUSIC));
			
			// 注册默认地图背景音乐
			plugin.getSoundManager().bgMusicMgr.setDefaultMusicPool(SceneMusicConfig.getDefaultMusicPool(BgMusicTypeDef.SCENE_MAP_MUSIC), BgMusicTypeDef.SCENE_MAP_MUSIC);
			plugin.getSoundManager().bgMusicMgr.setDefaultMusicPool(SceneMusicConfig.getDefaultMusicPool(BgMusicTypeDef.BOSS_MAP_MUSIC), BgMusicTypeDef.BOSS_MAP_MUSIC);
			
			battleModel = this.plugin.retrieveModel(ModelDef.BATTLE) as BattleInfo;
			battleModel.addEventListener(ModelEvent.UPDATE, onBattleModel);
		}
		
		protected function onBattleModel(event:ModelEvent):void
		{
			switch(event.key)
			{
				case BattleKeyDef.FAIL:
				case BattleKeyDef.END:
					LayerManager.singleton.setLayerVisible(LayerDef.MAP_DEF, true);
					break;
				case BattleKeyDef.START:
//					LayerManager.singleton.setLayerVisible(LayerDef.MAP_DEF, false);
					break;
				
				case BattleKeyDef.SHOW_FIGHT_SCENE:
					LayerManager.singleton.setLayerVisible(LayerDef.MAP_DEF, false);
					break;
			}
		}
		
		override public function doCommand(command:Command):void
		{
			var cmd:FindCrossBlockPathCommand;
			
			switch(getQualifiedClassName(command))
			{
				case getQualifiedClassName(ChangeSceneCommand):
					doChangeScene(command as ChangeSceneCommand);
					break;
				case getQualifiedClassName(StartChangeSceneCommand):
					doStartChangeScene(command as StartChangeSceneCommand);
					break;
				case getQualifiedClassName(FindCrossScenePathCommand):
					(command as FindCrossScenePathCommand).scenePath = CrossSceneFinder.findCrossScenePath((command as FindCrossScenePathCommand).startSceneId, (command as FindCrossScenePathCommand).endSceneId);
					command.finish();
					break;
				case getQualifiedClassName(FindCrossBlockPathCommand):
					cmd = command as FindCrossBlockPathCommand;
					cmd.blockPath = CrossBlockFinder.findCrossBlockNpcs(cmd.portalCfgList, cmd.ropeCfgList, cmd.startBlockId, cmd.endBlockId);
					command.finish();
					break;
				case getQualifiedClassName(ClearDelayHideFullLoadingCommand):
					clearDelayHideFullLoading();
					break;
			}
		}
		
		private function cleanCurrScene():void
		{
			logger.output("[World]","[cleanCurrScene]");
			
			new CleanNpcCommand().call();
			new CleanPlayerCommand().call();
			new CleanMapCommand().call();
		}
		
		private var currChangeSceneCommand:ChangeSceneCommand;
		private var waitChangeSceneCommand:ChangeSceneCommand;
		private function doChangeScene(cmd:ChangeSceneCommand):void
		{
			logger.output("[World] [doChangeScene] toScene:" + cmd.toScene + ",reason:" + cmd.reason);
			NarutoLoading.lockFullLoading = true;
			if(currChangeSceneCommand)
			{
				waitChangeSceneCommand = cmd;
				logger.output("[World] [doChangeScene] set waitChangeSceneCommand return");
				return;
			}
			cmd.addEventListener(CommandEvent.FINISH, onChangeScene);
			cmd.addEventListener(CommandEvent.FAILD, onChangeScene);
			currChangeSceneCommand = cmd;
			if(cmd.toScene && cmd.toScene != ApplicationData.singleton.globelInfo.sceneToId)
			{
				ApplicationData.singleton.globelInfo.sceneToId = cmd.toScene;
				cleanCurrScene();
				logger.output("[World]","[doChangeScene]",I18n.lang("as_world_1451031580_6436") + cmd.toScene);
				
				var sceneInfo:SceneCFG = SceneConfig.getSceneInfo(cmd.toScene);
				if(sceneInfo == null)
				{
					logger.output("[World]","[doChangeScene]",I18n.lang("as_world_1451031580_6437_0") + cmd.toScene, I18n.lang("as_world_1451031580_6437_1"));
					cmd.faild(1);
					return;
				}
				
				ApplicationData.singleton.globelInfo.preSceneId = cmd.toScene;
				
				TweenLite.killTweensOf(delayHideFullLoading);
				TweenLite.killTweensOf(updateSceneId);
				var startChangeSceneCommond:StartChangeSceneCommand = new StartChangeSceneCommand(cmd.toScene,cmd.toPosition,cmd.toDirection,cmd.reason);
				
				logger.output("[World][debug]doChangeScene: " + new Date().toString());
				logger.output("[World][debug]loadMapAssets: " + new Date().toString());
				updateLinkRes("plugin.world.map.bg","assets/scene/map/"+sceneInfo.mapId+"/_scene_bg.cfg");
				updateLinkRes("plugin.world.map.mg","assets/scene/map/"+sceneInfo.mapId+"/_scene_mg.cfg");
				updateLinkRes("plugin.world.map.fg","assets/scene/map/"+sceneInfo.mapId+"/_scene_fg.cfg");
				updateLinkRes("plugin.world.map.base","assets/scene/map/"+sceneInfo.mapId+"/sceneMap.jpg");
				updateLinkRes("plugin.world.map.alpha","assets/scene/map/"+sceneInfo.mapId+"/alphaMap.png");
				updateLinkRes("plugin.world.map.data","assets/scene/map/"+sceneInfo.mapId+"/MapInfo.map");
				updateLinkRes("plugin.world.role.npccfg","config/role/npc/scene/npccfg_scene" + sceneInfo.id + ".xml");
				updateCommandRes(
					startChangeSceneCommond.getCommandName(),
					"plugin.world.map.bg" + "," +
					"plugin.world.map.mg"+ "," +
					"plugin.world.map.fg"+ "," +
					"plugin.world.map.base"+ "," +
					"plugin.world.map.alpha"+ "," +
					"plugin.world.map.data"+ "," +
					"plugin.world.role.npccfg"
				);
				cmd.addSubCommand(startChangeSceneCommond);
				startChangeSceneCommond.call();
				
				cmd.finish();
			}else if(cmd.toPosition || cmd.toDirection != -1)
			{
				var setSelfPlayerPosAndDirCommand:SetSelfPlayerPosAndDirCommand = new SetSelfPlayerPosAndDirCommand(cmd.toPosition, cmd.toDirection);
				
				cmd.addSubCommand(setSelfPlayerPosAndDirCommand);
				setSelfPlayerPosAndDirCommand.call();
				
				cmd.finish();
			}else
			{
				cmd.faild(2);
			}
		}
		
		protected function onChangeScene(event:CommandEvent):void
		{
			logger.output("[World] [onChangeScene]");
			currChangeSceneCommand = null;
			if(waitChangeSceneCommand)
			{
				var cmd:ChangeSceneCommand = waitChangeSceneCommand;
				waitChangeSceneCommand = null;
				logger.output("[World] [onChangeScene] set waitChangeSceneCommand = null");
				doChangeScene(cmd);
			}
		}
		
		private function doStartChangeScene(cmd:StartChangeSceneCommand):void
		{
			TweenLite.killTweensOf(delayHideFullLoading);
			TweenLite.killTweensOf(updateSceneId);
			var si:SceneCFG = SceneConfig.getSceneInfo(cmd.toScene);
			
//			var selfSetPlayerPosAndDirCommand:SetSelfPlayerPosAndDirCommand = new SetSelfPlayerPosAndDirCommand(
//				changeSceneCommand.toPosition, 
//				changeSceneCommand.toDirection
//			);

			logger.output("[World] [doStartChangeScene] toScene:" + cmd.toScene + ",reason:" + cmd.reason);
			
//			var data:Object = plugin.getResource(pluginName);
			var bgbytes:ByteArray = getPluginAsset("plugin.world.map.bg") as ByteArray;
			bgbytes.position = 0;
			var mgbytes:ByteArray = getPluginAsset("plugin.world.map.mg") as ByteArray;
			mgbytes.position = 0;
			var fgbytes:ByteArray = getPluginAsset("plugin.world.map.fg") as ByteArray;
			fgbytes.position = 0;
			var ladeMapCommand:LadeMapCommand = new LadeMapCommand(
				si,
				cmd.toPosition,
				bgbytes.readObject(),
				mgbytes.readObject(),
				fgbytes.readObject(),
				getPluginAsset("plugin.world.map.data") as ByteArray,
				(getPluginAsset("plugin.world.map.base") as Loader).content as Bitmap,
				(getPluginAsset("plugin.world.map.alpha") as Loader).content as Bitmap
			);
			
			var npcConfig:XML = getConfig("plugin.world.role.npccfg");
			
			var ladePlayerCommand:LadePlayerCommand = new LadePlayerCommand(
				npcConfig.@leaderNinja,
				cmd.toPosition,
				cmd.toDirection
			);
			
			var ladeNpcCommand:LadeNpcCommand = new LadeNpcCommand(npcConfig);
			
//			cmd.addSubCommand(selfSetPlayerPosAndDirCommand);
			cmd.addSubCommand(ladeMapCommand);
			cmd.addSubCommand(ladePlayerCommand);
			cmd.addSubCommand(ladeNpcCommand);
			
			ladeMapCommand.call();
			ladePlayerCommand.call();
			ladeNpcCommand.call();
			getSceneStartInfo(cmd);
			
			cmd.addEventListener(CommandEvent.FINISH, onStartChangeScene);
			cmd.finish();
		}
		
		private function getSceneStartInfo(command:Command):void
		{
			switch(SceneConfig.getSceneInfo(ApplicationData.singleton.globelInfo.preSceneId).type)
			{
				case SceneType.PVP_BATTLE_FIELD:
					var getPvpBattlefieldStartInfoCommand:GetPvpBattlefieldStartInfoCommand;
					getPvpBattlefieldStartInfoCommand = new GetPvpBattlefieldStartInfoCommand();
					command.addSubCommand(getPvpBattlefieldStartInfoCommand);
					getPvpBattlefieldStartInfoCommand.call();
					break;
			}
		}
		
		private function onStartChangeScene(event:CommandEvent):void
		{
			logger.output("[World] [onStartChangeScene]");
			
			var cmd:StartChangeSceneCommand = event.currentTarget as StartChangeSceneCommand;
			cmd.removeEventListener(CommandEvent.FINISH, onStartChangeScene);
			
			// 播放地图背景音乐
			var sceneInfo:SceneCFG = SceneConfig.getSceneInfo(cmd.toScene); 
			var type:uint = BgMusicTypeDef.SCENE_MAP_MUSIC;
			switch(sceneInfo.type)
			{
				// 1:世界地图 2:副本地图 3:室内地图
				case 2:type = BgMusicTypeDef.BOSS_MAP_MUSIC; break;
			}
			
			plugin.getSoundManager().bgMusicMgr.playBgMusic(SceneMusicConfig.getMusicInfo(sceneInfo.id), type);
			
			logger.output("[World] [onStartChangeScene] reason:" + cmd.reason + ",teamModel.isJoined:" + teamModel.isJoined);
			if(cmd.reason == ChangeSceneReasonDef.JOIN_TEAM_NEED_SYNC)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_CHANGE_SCENE).call();
			}
			else if(cmd.reason == ChangeSceneReasonDef.GOHOME && teamModel.isJoined)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_CHANGE_SCENE).call();
			}
			else if(cmd.reason == ChangeSceneReasonDef.PORTAL && teamModel.isJoined)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_CHANGE_SCENE).call();
			}
			else if(cmd.reason == ChangeSceneReasonDef.TEAM_PORTAL)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_CHANGE_SCENE).call();
			}
			else if(cmd.reason == ChangeSceneReasonDef.JOIN_DUNGEON && teamModel.isJoined)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_ENTER_DUNGEON).call();
			}
			else if(cmd.reason == ChangeSceneReasonDef.EXIT_DUNGEON && teamModel.isJoined)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_QUIT_DUNGEON).call();
			}
			else if(cmd.reason == ChangeSceneReasonDef.FINISH_DUNGEON && teamModel.isJoined)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_QUIT_DUNGEON).call();
			}
			else if(cmd.reason == ChangeSceneReasonDef.JOIN_BASE && teamModel.isJoined)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_CHANGE_SCENE).call();
			}
			else if(cmd.reason == ChangeSceneReasonDef.EXIT_BASE && teamModel.isJoined)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_CHANGE_SCENE).call();
			}
			else if(cmd.reason == ChangeSceneReasonDef.JOIN_WORLD_BOSS_SCENE && teamModel.isJoined)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_CHANGE_SCENE).call();
			}
			else if(cmd.reason == ChangeSceneReasonDef.EXIT_WORLD_BOSS_SCENE && teamModel.isJoined)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_CHANGE_SCENE).call();
			}else if(cmd.reason == ChangeSceneReasonDef.PLAYER_TODO_NOTIFY && teamModel.isJoined)
			{
				updateSceneId();
				new RequestTeamMemberSyncCommand(ProtoTeamSyncType.PROTO_TEAM_SYNC_TYPE_CHANGE_SCENE).call();
			}
			else
			{
				//这里延时1秒再变更场景ID，这样的话change事件也会迟一秒才发出，为的是留出事件加载地图和触发剧情，跟下面一句是一样的
				TweenLite.delayedCall(0.9,updateSceneId);
				TweenLite.delayedCall(1,delayHideFullLoading);
			}
			cmd.finish();
		}
		
		private function delayHideFullLoading():void
		{
			NarutoLoading.lockFullLoading = false;
			new HideTeamSyncCommand().call();
			new DelayHideLoadingCheck().call();
		}
		
		private function clearDelayHideFullLoading():void
		{
			TweenLite.killTweensOf(delayHideFullLoading);
		}
		
		private function updateSceneId():void
		{
			ApplicationData.singleton.globelInfo.sceneId = ApplicationData.singleton.globelInfo.preSceneId || ApplicationData.singleton.globelInfo.sceneToId;
			ApplicationData.singleton.globelInfo.preSceneId = 0;
			logger.output(I18n.lang("as_world_1451031580_6438")+ApplicationData.singleton.globelInfo.sceneId);
		}
		
		private function get teamModel():TeamModel
		{
			return plugin.retrieveModel(ModelDef.TEAM) as TeamModel;
		}
	}
}