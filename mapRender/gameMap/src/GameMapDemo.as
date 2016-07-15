package
{
	import br.com.stimuli.loading.BulkLoader;
	import br.com.stimuli.loading.BulkProgressEvent;
	import br.com.stimuli.loading.loadingtypes.BinaryItem;

	import com.map.astar.AStarPixcelPathFinder;
	import com.map.consDef.MapLayerDef;
	import com.map.data.MapBgImgInfo;
	import com.map.data.MapData;
	import com.map.data.MapFgImgInfo;
	import com.map.data.MapMgImgInfo;
	import com.map.element.BaseMapElement;
	import com.map.manager.LayerManager;
	import com.map.player.datas.PlayerData;
	import com.map.player.views.PlayerView;
	import com.map.utils.TimerProvider;
	import com.map.view.MapView;

	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.net.registerClassAlias;
	import flash.text.TextField;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;

	import tx.mme.MmeAssetEx;

	/*
	 * 跑地图Demo
	 * */
	public class GameMapDemo extends Sprite
	{
		private var _mapView:MapView;
		private var _mapData:MapData;
		private var _switchMap:TextField;
		private var _currentMapId:int;
		private var _pathFinder:AStarPixcelPathFinder;
		private var _paths:Array;

		/**测试寻路玩家*/
		private var _testPlayer:PlayerView;

		private var currSpeed:Point = new Point();
		public static const SPEED:int = 12;
		private var currMoveToPixcel:Point;
		private var currPos:Point = new Point();
		private var currSpeedUp:int = 1;

		public function GameMapDemo()
		{
			if (stage)
			{
				onStage(null);
			} else
			{
				addEventListener(Event.ADDED_TO_STAGE, onStage);
			}
		}

		private function onStageResize(ev:Event):void
		{
			this._switchMap.x = (stage.stageWidth - this._switchMap.textWidth) * .5;
			this._switchMap.y = 5;
		}

		private function onTextLink(ev:TextEvent):void
		{
			var code:String = ev.text;
			if (code == "switchMap")
			{
				_currentMapId = _currentMapId == 10001 ? ++_currentMapId : --_currentMapId;
				_mapView.dispose();
				loaderConfig(_currentMapId);
			}
		}

		private function onStage(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onStage);
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;

			_switchMap = new TextField();
			_switchMap.autoSize = "left";
			_switchMap.addEventListener(TextEvent.LINK, onTextLink);
			stage.addChild(_switchMap);
			_switchMap.htmlText = "<u><a href='event:switchMap'><font color='#ff0000' size='25'>切换地图</font></a><u>";

			registerClassAlias("Matrix_Class_Alias", Matrix);
			registerClassAlias("MapBgImgInfo_Class_Alias", MapBgImgInfo);
			registerClassAlias("MapMgImgInfo_Class_Alias", MapMgImgInfo);
			registerClassAlias("MapFgImgInfo_Class_Alias", MapFgImgInfo);

			LayerManager.singleton.init(stage);
			TimerProvider.initliazed(stage);

			_testPlayer = getPlayer();
			_mapView = new MapView();
			addChild(_mapView);
			_mapData = new MapData();
			_pathFinder = new AStarPixcelPathFinder();

			_currentMapId = 10001;
			loaderConfig(_currentMapId);

			addEvent();
			onStageResize(null);
		}

		private function getPlayer():PlayerView
		{
			var mmeAsset:MmeAssetEx = new MmeAssetEx();
			var playerView:PlayerView = new PlayerView(mmeAsset);

			var pd:PlayerData = new PlayerData();
			pd.uin = 1;
			pd.role = 1;
			pd.svrId = 1;
			pd.name = "xiaoding";
			pd.ninja = 1;
			pd.showNinja = 0;

			pd.isCaptain = false;
			pd.teamId = "11";
			pd.isFighting = false;
			pd.setPosition(x, y);
			pd.vip = 1;

			playerView.setData(pd);

			playerView.inViewPoint();
			return playerView;
		}

		private function addEvent():void
		{
			stage.addEventListener(Event.RESIZE, onStageResize);
			this._mapView.addEventListener("testFindPath", testFindPathHandler);
		}

		private function testFindPathHandler(event:Event):void
		{
			var element:BaseMapElement = this._testPlayer;
			currPos.setTo(element.x, element.y);

			var point:Point = new Point(element.x, element.y);
			_paths = _pathFinder.findByPixcel(point, new Point(_mapView.mouseX, _mapView.mouseY));

			_testPlayer.moveTo(_paths);
			return;

			if (!_paths) return;

			TimerProvider.addEnterFrameTask(enterFrame);
		}

		private function enterFrame():void
		{
			var end:Boolean = false;
			if (currMoveToPixcel)
			{
				var dist:Number = (currPos.x - currMoveToPixcel.x) * (currPos.x - currMoveToPixcel.x) + (currPos.y - currMoveToPixcel.y) * (currPos.y - currMoveToPixcel.y);//    Point.distance(currPos,currMoveToPixcel);
				if (dist < SPEED * currSpeedUp * 1.5 * SPEED * currSpeedUp * 1.5)
				{
					end = true;
				}
				else
				{
					currPos.x += currSpeed.x * currSpeedUp;
					currPos.y += currSpeed.y * currSpeedUp;
					setXY(currPos.x, currPos.y);
				}
			}

			if (end || currMoveToPixcel == null)
			{
				//忽略跟自己当前的点一样的坐标
				var tp:Point;
				while (this._paths.length)
				{
					tp = this._paths.shift();
					if (tp.x == this.x && tp.y == this.y)
					{
						tp = null;
					}
					else
					{
						break;
					}
				}

				if (tp)
				{
					currMoveToPixcel = tp;
					var dx:Number = currMoveToPixcel.x - currPos.x;
					var dy:Number = currMoveToPixcel.y - currPos.y;

					var angle:Number = Math.atan2(dy, dx);
					currSpeed.x = Math.cos(angle) * SPEED;
					currSpeed.y = Math.sin(angle) * SPEED;
				}
				else
				{
					if (currMoveToPixcel)
					{
						setXY(int(currMoveToPixcel.x), int(currMoveToPixcel.y));
						currMoveToPixcel = null;
					}
					stopBaseMove();
				}
			}
		}

		private function stopBaseMove():void
		{
			this._paths.length = 0;
			TimerProvider.removeEnterFrameTask(enterFrame);
			currSpeed.x = currSpeed.y = 0;
			this._mapView.hideMoveTargetUI();
		}

		private function setXY(x:int, y:int):void
		{
			this._testPlayer.setXY(x, y);
		}

		private function loaderConfig(mapId:int):void
		{
			var bulk:BulkLoader = BulkLoader.getLoader("bulkLoader");
			if (!bulk)
			{
				bulk = new BulkLoader("bulkLoader");
			}

			var bgPath:String = "plugin.world.map.bg" + _currentMapId;
			var mgPath:String = "plugin.world.map.mg" + _currentMapId;
			var fgPath:String = "plugin.world.map.fg" + _currentMapId;
			var basePath:String = "plugin.world.map.base" + _currentMapId;
			var alphaPath:String = "plugin.world.map.alpha" + _currentMapId;
			var mapInfoPath:String = "plugin.world.map.data" + _currentMapId;

			var paths:Array = [];
			if (!bulk.get(bgPath))
			{
				paths.push({
					id: bgPath,
					url: "assets/scene/map/" + mapId + "/_scene_bg.cfg",
					type: BulkLoader.TYPE_BINARY
				});
			}
			if (!bulk.get(mgPath))
			{
				paths.push({
					id: mgPath,
					url: "assets/scene/map/" + mapId + "/_scene_mg.cfg",
					type: BulkLoader.TYPE_BINARY
				});
			}
			if (!bulk.get(fgPath))
			{
				paths.push({
					id: fgPath,
					url: "assets/scene/map/" + mapId + "/_scene_fg.cfg",
					type: BulkLoader.TYPE_BINARY
				});
			}
			if (!bulk.get(basePath))
			{
				paths.push({
					id: basePath,
					url: "assets/scene/map/" + mapId + "/sceneMap.jpg",
					type: BulkLoader.TYPE_IMAGE
				});
			}
			if (!bulk.get(alphaPath))
			{
				paths.push({
					id: alphaPath,
					url: "assets/scene/map/" + mapId + "/alphaMap.png",
					type: BulkLoader.TYPE_IMAGE
				});
			}
			if (!bulk.get(mapInfoPath))
			{
				paths.push({
					id: mapInfoPath,
					url: "assets/scene/map/" + mapId + "/MapInfo.map",
					type: BulkLoader.TYPE_BINARY
				});
			}

			if (paths.length > 0)
			{
				paths.forEach(function (element:Object, index:int, arr:Array):void
				{
					bulk.add(element.url, {id: element.id, type: element.type});
				});
				bulk.addEventListener(BulkProgressEvent.COMPLETE, onComplete);
				bulk.start();
				return;
			}
			onComplete(null);
		}

		private function getPluginAsset(key:String, type:String = BulkLoader.TYPE_BINARY):*
		{
			var bulk:BulkLoader = BulkLoader.getLoader("bulkLoader");
			if (type == BulkLoader.TYPE_BINARY)
			{
				return (bulk.get(key) as BinaryItem).loader.data;
			} else if (type == BulkLoader.TYPE_IMAGE)
			{
				return bulk.getBitmap(key);
			}
			return null;
		}

		private function onComplete(event:BulkProgressEvent):void
		{
			if (event)
			{
				event.target.removeEventListener(BulkProgressEvent.COMPLETE, onComplete);
			}

			var bgbytes:ByteArray = getPluginAsset("plugin.world.map.bg" + _currentMapId) as ByteArray;
			bgbytes.position = 0;
			var mgbytes:ByteArray = getPluginAsset("plugin.world.map.mg" + _currentMapId) as ByteArray;
			mgbytes.position = 0;
			var fgbytes:ByteArray = getPluginAsset("plugin.world.map.fg" + _currentMapId) as ByteArray;
			fgbytes.position = 0;

			var mapDataBytes:ByteArray = getPluginAsset("plugin.world.map.data" + _currentMapId) as ByteArray;
			mapDataBytes.position = 0;

			this._mapData.setData(mapDataBytes);
			this._pathFinder.setMapData(_mapData);

			var mapBgImgInfos:Dictionary = bgbytes.readObject();
			var mapMgImgInfos:Dictionary = mgbytes.readObject();
			var mapFgImgInfos:Dictionary = fgbytes.readObject();

			var shrinkBitmap:Bitmap = getPluginAsset("plugin.world.map.base" + _currentMapId, BulkLoader.TYPE_IMAGE) as Bitmap;
			var alphaBitmap:Bitmap = getPluginAsset("plugin.world.map.alpha" + _currentMapId, BulkLoader.TYPE_IMAGE) as Bitmap;

			this._mapView.mapControl.setData(mapBgImgInfos, mapMgImgInfos, mapFgImgInfos, _mapData, shrinkBitmap, alphaBitmap.bitmapData);

			//添加人物并设置一个出生点
			_mapView.layers[MapLayerDef.FRONT_MAP].addChild(_testPlayer);

			var birthPosition:Point = new Point();

			if (_currentMapId == 10001)
			{
				birthPosition.setTo(552, 367);
			} else
			{
				birthPosition.setTo(378, 632);
			}
			_testPlayer.setXY(birthPosition.x, birthPosition.y);

			this._mapView.cameraControl.bindElement(_testPlayer);
			this._mapView.elementControl.setTimeType(3);
			this._mapView.cameraControl.setCenterPos(stage.stageWidth * .5, stage.stageHeight * .5);
			this._mapView.cameraControl.setData(LayerManager.singleton.stage);
			this._mapView.startup();
		}
	}
}
