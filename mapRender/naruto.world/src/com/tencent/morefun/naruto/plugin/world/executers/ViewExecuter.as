package com.tencent.morefun.naruto.plugin.world.executers
{
	
	import base.ApplicationData;
	import base.NarutoExecuter;
	
	import com.tencent.morefun.framework.base.Command;
	import com.tencent.morefun.naruto.base.GlobelInfo;
	import com.tencent.morefun.naruto.plugin.ui.layer.BaseLayer;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
	import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
	import com.tencent.morefun.naruto.plugin.world.views.WorldMap;
	import com.tencent.morefun.naruto.util.GameTip;
	
	import def.ExecuterDef;
	import def.ModelDef;
	import def.PluginDef;
	import def.ProtocolCmdDef;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.utils.getQualifiedClassName;
	
	import player.commands.StopSelfMoveCommand;
	
	import server.SocketProtocol;
	
	import serverProto.zone.ProtoChangeSceneRequest;
	import serverProto.zone.ProtoChangeSceneResponse;
	import serverProto.zone.ProtoDynamicSceneRequest;
	import serverProto.zone.ProtoDynamicSceneResponse;
	
	import team.cmd.ShowTeamSyncCommand;
	import team.model.TeamModel;
	
	import world.command.ChangeSceneCommand;
	import world.command.ClearWorldSnapshotCommand;
	import world.command.DrawWorldSnapshotCommand;
	import world.command.RequestSceneCommand;
	import world.command.ShowWorldCommand;
	import world.commands.OpenWorldMapCommand;
	import world.commands.RequestChangeDynamicSceneCommand;
	import world.def.ChangeSceneReasonDef;
	
	public class ViewExecuter extends NarutoExecuter
	{
		
		public function ViewExecuter()
		{
			super(PluginDef.WORLD, ExecuterDef.WORLD_VIEW);
			
			gameServer.registerBusy(ProtocolCmdDef.CHANGE_SCENE, true);
			gameServer.addProtocolListener(ProtocolCmdDef.CHANGE_SCENE, onRequestResponse);
			gameServer.registerTimeoutReLogin(ProtocolCmdDef.CHANGE_SCENE);
			
			
			gameServer.registerBusy(ProtocolCmdDef.WORLD_CHANGE_DYNAMIC_SCENE, true);
			gameServer.addProtocolListener(ProtocolCmdDef.WORLD_CHANGE_DYNAMIC_SCENE, respondWorldChangeDynamicScene);
			gameServer.registerTimeoutReLogin(ProtocolCmdDef.WORLD_CHANGE_DYNAMIC_SCENE);
		}
		
		override public function doCommand(command:Command):void
		{
			switch(getQualifiedClassName(command))
			{
				case getQualifiedClassName(ShowWorldCommand):
					command.finish();
					break;
				case getQualifiedClassName(RequestSceneCommand):
					switch((command as RequestSceneCommand).type)
					{
						case RequestSceneCommand.TYPE_NONE:
							new ChangeSceneCommand(
								RequestSceneCommand(command).id
							).call();
							//							changedScene((command as RequestSceneCommand).id, null);
							break;
						case RequestSceneCommand.TYPE_PORTAL:
							requestChangScene(command as RequestSceneCommand);
							break;
					}
					break;
				case getQualifiedClassName(DrawWorldSnapshotCommand):
					drawWorldSnapshot();
					break;
				case getQualifiedClassName(ClearWorldSnapshotCommand):
					clearWorldSnapshot();
					break;
				case getQualifiedClassName(OpenWorldMapCommand):
					doOpenWorldMapCommand(command as OpenWorldMapCommand);
					break;
				case getQualifiedClassName(RequestChangeDynamicSceneCommand):
					requestChangeDynamicScene(command as RequestChangeDynamicSceneCommand);
					break;
			}
		}
		
		private function requestChangeDynamicScene(cmd:RequestChangeDynamicSceneCommand):void
		{
			var req:ProtoDynamicSceneRequest = new ProtoDynamicSceneRequest();
			req.type = cmd.type;
			req.operate = cmd.operate;
			var rsp:ProtoDynamicSceneResponse = new ProtoDynamicSceneResponse();
			gameServer.sendMessage(ProtocolCmdDef.WORLD_CHANGE_DYNAMIC_SCENE, req,rsp,cmd);
		}
		
		private function respondWorldChangeDynamicScene(protocol:SocketProtocol):void
		{
			var cmd:RequestChangeDynamicSceneCommand = protocol.clientData as RequestChangeDynamicSceneCommand;
			if(protocol.error == 0)
			{
				cmd.progress();
				var rsp:ProtoDynamicSceneResponse = protocol.serverMessage as ProtoDynamicSceneResponse;
				var changeSceneCmd:ChangeSceneCommand = new ChangeSceneCommand(rsp.location.scene, new Point(rsp.location.x,rsp.location.y),rsp.location.face);
				cmd.addSubCommand(changeSceneCmd);
				changeSceneCmd.call();
				cmd.finish();
			}else
			{
				GameTip.show(protocol.errorStr);
				cmd.faild(protocol.error);
			}
		}	
		
		private function doOpenWorldMapCommand(cmd:OpenWorldMapCommand):void
		{
			new WorldMap().show();
			cmd.finish();
		}		
		
		private function requestChangScene(command:RequestSceneCommand):void
		{
			var request:ProtoChangeSceneRequest;
			var response:ProtoChangeSceneResponse;
			
			request = new ProtoChangeSceneRequest();
			request.changeSceneType = command.type;
			request.portalId = command.id;
			
			response = new ProtoChangeSceneResponse();
			gameServer.sendMessage(ProtocolCmdDef.CHANGE_SCENE, request, response, command);
		}
		
		private function onRequestResponse(protocol:SocketProtocol):void
		{
			var rsp:ProtoChangeSceneResponse;
			var command:RequestSceneCommand = protocol.clientData as RequestSceneCommand;
			
			rsp = protocol.serverMessage as ProtoChangeSceneResponse;
			if (protocol.error == 0)
			{
				//如果自己是队长 ，那就要显示组队的同步情况
				if(teamModel.isJoined && teamModel.getCaptain().equal(selfInfo.uin,selfInfo.role,selfInfo.svrId))
				{
					new ShowTeamSyncCommand(null,null,null,null).call();
				}
				new StopSelfMoveCommand(false, false).call();
				new ChangeSceneCommand(
					rsp.sceneId,
					new Point(rsp.bornPoint.x,rsp.bornPoint.y),
					-1,
					ChangeSceneReasonDef.PORTAL
				).call();
				//				changedScene(rsp.sceneId, new Point(rsp.bornPoint.x, rsp.bornPoint.y));
				command.finish();
			}
			else
			{
				GameTip.show(protocol.errorStr);
				command.faild(1);
			}
		}
		
		
		private var worldSnapshot:Bitmap = new Bitmap();
		private function drawWorldSnapshot():void
		{
			var baseLayer:BaseLayer;
			var bitmapData:BitmapData;
			
			bitmapData = new BitmapData(LayoutManager.stageWidth, LayoutManager.stageHeight, true, 0x000000);
			baseLayer = LayerManager.singleton.findLayerByName(LayerDef.MAP_DEF);
			bitmapData.draw(baseLayer);
			
			worldSnapshot.bitmapData = bitmapData;
			LayerManager.singleton.addItemToLayer(worldSnapshot, LayerDef.WORLD_SNAPSHOT);
			
			LayerManager.singleton.stage.addEventListener(Event.RESIZE, onStageResize);
		}
		
		private function clearWorldSnapshot():void
		{
			var baseLayer:BaseLayer;
			var bitmapData:BitmapData;
			
			if(worldSnapshot.bitmapData)
			{
				worldSnapshot.bitmapData.dispose();
				worldSnapshot.bitmapData = null;
				LayerManager.singleton.removeItemToLayer(worldSnapshot);
				LayerManager.singleton.stage.removeEventListener(Event.RESIZE, onStageResize);
			}
		}
		
		private function onStageResize(evt:Event):void
		{
			if(worldSnapshot.bitmapData)
			{
				clearWorldSnapshot();
				drawWorldSnapshot();
			}
		}
		
		private function get globelInfo():GlobelInfo
		{
			return ApplicationData.singleton.globelInfo;
		}
		
		private function get teamModel():TeamModel
		{
			return plugin.retrieveModel(ModelDef.TEAM) as TeamModel;
		}
	}
}