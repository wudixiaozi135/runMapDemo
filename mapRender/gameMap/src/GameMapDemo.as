package
{
	import br.com.stimuli.loading.BulkLoader;
	import br.com.stimuli.loading.BulkProgressEvent;
	import br.com.stimuli.loading.loadingtypes.BinaryItem;

	import com.map.astarEx.ANode;

	import com.map.astarEx.AStar;
	import com.map.consDef.MapLayerDef;
	import com.map.data.MapBgImgInfo;
	import com.map.data.MapData;
	import com.map.data.MapFgImgInfo;
	import com.map.data.MapMgImgInfo;
	import com.map.element.BaseMapElement;
	import com.map.manager.LayerManager;
	import com.map.player.datas.PlayerData;
	import com.map.player.views.PlayerView;
	import com.map.utils.MapCfgParse;
	import com.map.utils.MapGridUtil;
	import com.map.utils.TimerProvider;
	import com.map.view.MapView;
	import com.tx.mme.MmeAsset;

	import flash.display.Bitmap;
	import flash.display.BitmapData;
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

	import mx.utils.StringUtil;

	/*
	 * 跑地图Demo
	 * */
	[SWF(frameRate="30")]
	public class GameMapDemo extends Sprite
	{
		private var _mapView:MapView;
		private var _mapData:MapData;
		private var _switchMap:TextField;
		private var _currentMapId:int = 2;//30021带跳的地图
		private var _pathFinder:AStar;
		private var _paths:Array;

		/**测试寻路玩家*/
		private var _testPlayer:PlayerView;

		private var version:String = "1.0.0.3";

		private var _maps:Array = [10001, 10002, 10003, 10004, 10005];

		private var _gridLayer:Sprite = new Sprite();
		private var _gridLayerArr:Array;

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

//			this.stage.addChild(_gridLayer);
			_mapView.addChild(_gridLayer);
			_gridLayer.mouseChildren = false;
			_gridLayer.mouseEnabled = false;
		}

		private function onTextLink(ev:TextEvent):void
		{
			var code:String = ev.text;
			if (code == "switchMap")
			{
				_currentMapId = _maps[int(Math.random() * _maps.length)];
				_mapView.dispose();
				loaderConfig(_currentMapId);
			}
		}

		private function onStage(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onStage);
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;

			registerClassAlias("Matrix_Class_Alias", Matrix);
			registerClassAlias("MapBgImgInfo_Class_Alias", MapBgImgInfo);
			registerClassAlias("MapMgImgInfo_Class_Alias", MapMgImgInfo);
			registerClassAlias("MapFgImgInfo_Class_Alias", MapFgImgInfo);

			_switchMap = new TextField();
			_switchMap.autoSize = "left";
			_switchMap.addEventListener(TextEvent.LINK, onTextLink);
			stage.addChild(_switchMap);
			_switchMap.htmlText = "<u><a href='event:switchMap'><font color='#ff0000' size='25'>切换地图</font></a><u>";

			LayerManager.singleton.init(stage);
			TimerProvider.initliazed(stage);

			_testPlayer = getPlayer();
			_mapView = new MapView();
			addChild(_mapView);
			_mapData = new MapData();
			_pathFinder = new AStar();

			loaderConfig(_currentMapId);

			addEvent();
			onStageResize(null);
		}

		private function getPlayer():PlayerView
		{
			var mmeAsset:MmeAsset = new MmeAsset();
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

			var point:Point = new Point(element.x, element.y);

			var endP:Point = new Point(_mapView.mouseX, _mapView.mouseY);

			var targetPixel:Point = MapGridUtil.getPixelPoint(_mapData.tilePixelWidth, _mapData.tilePixelHeight, _mapData.mapPixelWidth, endP.x, endP.y);
			var targetPosition:Point = MapGridUtil.getTilePoint(_mapData.tilePixelWidth, _mapData.tilePixelHeight, _mapData.mapPixelWidth, endP.x, endP.y);
			trace(targetPixel, targetPosition);

			_paths = _pathFinder.findByPixcel(point, new Point(_mapView.mouseX, _mapView.mouseY));
			_testPlayer.moveTo(_paths);


			if (GlobalData.isShowGrid)
			{
				for each (var arr:Array in _gridLayerArr)
				{
					for each (var temp:Bitmap in arr)
					{
						temp.visible = false;
					}
				}
				resetMapGrid();
				var tP:Point;
				for each(var p:Point in _paths)
				{
					tP = MapGridUtil.getTilePointEx(_mapData.tilePixelWidth, _mapData.tilePixelHeight, p.x, p.y);
					_gridLayerArr[tP.x][tP.y].visible = true;
				}
			}
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

			var versions:Array = [];

			var url:String = "http://res.huoying.qq.com/{0}/assets/scene/map/";
			if (!GlobalData.isOnline)
			{
				url = "assets/scene/map/";
			}

			var paths:Array = [];
			var sceneMap:Object = new Object();
			sceneMap[mapId] = {};
			sceneMap[mapId]["bg"] = "NarutoBeta1.13Build301";
			sceneMap[mapId]["mg"] = "NarutoBeta1.13Build301";
			sceneMap[mapId]["fg"] = "NarutoBeta1.13Build301";
			sceneMap[mapId]["sceneMap"] = "NarutoBeta2.04Build302";
			sceneMap[mapId]["alphaMap"] = "NarutoBeta1.0Build300";
			sceneMap[mapId]["MapInfo"] = "NarutoBeta1.0Build300";

			var poffix:String = ".cfg";
			if (!GlobalData.isOnline)
			{
				sceneMap[mapId]["bg"] = "";
				sceneMap[mapId]["mg"] = "";
				sceneMap[mapId]["fg"] = "";
				sceneMap[mapId]["sceneMap"] = "";
				sceneMap[mapId]["alphaMap"] = "";
				sceneMap[mapId]["MapInfo"] = "";
				poffix = ".xml";
			}

			if (!bulk.get(bgPath))
			{
				paths.push({
					id: bgPath,
					url: StringUtil.substitute(url, sceneMap[mapId]["bg"]) + mapId + "/_scene_bg" + poffix + "?version=" + version,
					type: BulkLoader.TYPE_BINARY
				});
			}
			if (!bulk.get(mgPath))
			{
				paths.push({
					id: mgPath,
					url: StringUtil.substitute(url, sceneMap[mapId]["mg"]) + mapId + "/_scene_mg" + poffix + "?version=" + version,
					type: BulkLoader.TYPE_BINARY
				});
			}
			if (!bulk.get(fgPath))
			{
				paths.push({
					id: fgPath,
					url: StringUtil.substitute(url, sceneMap[mapId]["fg"]) + mapId + "/_scene_fg" + poffix + "?version=" + version,
					type: BulkLoader.TYPE_BINARY
				});
			}
			if (!bulk.get(basePath))
			{
				paths.push({
					id: basePath,
					url: StringUtil.substitute(url, sceneMap[mapId]["sceneMap"]) + mapId + "/sceneMap.jpg?version=" + version,
					type: BulkLoader.TYPE_IMAGE
				});
			}
			if (!bulk.get(alphaPath))
			{
				paths.push({
					id: alphaPath,
					url: StringUtil.substitute(url, sceneMap[mapId]["alphaMap"]) + mapId + "/alphaMap.png?version=" + version,
					type: BulkLoader.TYPE_IMAGE
				});
			}

			if (!bulk.get(mapInfoPath))
			{
				paths.push({
					id: mapInfoPath,
					url: StringUtil.substitute(url, sceneMap[mapId]["MapInfo"]) + mapId + "/MapInfo.map?version=" + version,
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

		private function resetMapGrid():void
		{
			var y:int;
			var x:int;
			for (y = 0; y < _mapData.mapTileHeight; y++)
			{
				for (x = 0; x < _mapData.mapTileWidth; x++)
				{
					if (_mapData.walkableArray[x][y])
					{
						continue;
					}
					_gridLayerArr[x][y].visible = true;
				}
			}
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

			if (GlobalData.isShowGrid)
			{
				//画地图格子
				_gridLayerArr = drawGrid(64, 32, _mapData.mapTileHeight, _mapData.mapTileWidth, _gridLayer);
				resetMapGrid();
			}

			//读取加载cfg格式的
			var mapBgImgInfos:Dictionary;
			var mapFgImgInfos:Dictionary;
			var mapMgImgInfos:Dictionary;

			if (GlobalData.isOnline)
			{
				mapBgImgInfos = bgbytes.readObject();
				mapFgImgInfos = fgbytes.readObject();
				mapMgImgInfos = mgbytes.readObject();
			} else
			{
				mapBgImgInfos = new Dictionary();
				MapCfgParse.parseXML(new XML(bgbytes), mapBgImgInfos, MapBgImgInfo);

				mapFgImgInfos = new Dictionary();
				MapCfgParse.parseXML(new XML(fgbytes), mapFgImgInfos, MapFgImgInfo);

				mapMgImgInfos = new Dictionary();
				MapCfgParse.parseXML(new XML(mgbytes), mapMgImgInfos, MapMgImgInfo);
			}

			var shrinkBitmap:Bitmap = getPluginAsset("plugin.world.map.base" + _currentMapId, BulkLoader.TYPE_IMAGE) as Bitmap;
			var alphaBitmap:Bitmap = getPluginAsset("plugin.world.map.alpha" + _currentMapId, BulkLoader.TYPE_IMAGE) as Bitmap;

			this._mapView.mapControl.setData(mapBgImgInfos, mapMgImgInfos, mapFgImgInfos, _mapData, shrinkBitmap, alphaBitmap.bitmapData);

			//添加人物并设置一个出生点
			_mapView.layers[MapLayerDef.FRONT_MAP].addChild(_testPlayer);

			var birthPosition:Point = new Point();

			if (_currentMapId == 10001)
			{
				birthPosition.setTo(552, 367);
			} else if (_currentMapId == 10002)
			{
				birthPosition.setTo(378, 632);
			} else if (_currentMapId == 10003)
			{
				birthPosition.setTo(1050, 620);
			} else if (_currentMapId == 10004)
			{
				birthPosition.setTo(1065, 719);
			} else if (_currentMapId == 30021)
			{
				birthPosition.setTo(354, 400);
			}
			else
			{
				birthPosition.setTo(1065, 719);
//				birthPosition.setTo(100,100);
			}
			_testPlayer.setXY(birthPosition.x, birthPosition.y);

			this._mapView.cameraControl.bindElement(_testPlayer);
			this._mapView.elementControl.setTimeType(1);
			this._mapView.cameraControl.setCenterPos(stage.stageWidth * .5, stage.stageHeight * .5);
			this._mapView.cameraControl.setData(LayerManager.singleton.stage);
			this._mapView.startup();
		}

		//其他
		public static function drawGrid(gridWidth:int, gridHeight:int, rows:int, columns:int, gridLayer:Sprite):Array
		{
			var pt:Point;
			var tmpUI:Sprite = new Sprite();
			var bmdata:BitmapData = new BitmapData(gridWidth, gridHeight, true, 0x0); //单个不可走网格的bitmapdata,要创建完全透明的位图，fillcolor要设为非白色
			var bm:Bitmap;
			var gridArray:Array;

			gridLayer.graphics.clear();
			while (gridLayer.numChildren > 0)
			{
				gridLayer.removeChildAt(0);
			}
			drawSingleGrid(tmpUI, 0, 0, gridWidth, gridHeight, false); //单个不可走网格
			bmdata.draw(tmpUI);
			gridArray = new Array();
			for (var x:int = 0; x < columns; x++)
			{
				gridArray[x] = new Array();
				for (var y:int = 0; y < rows; y++)
				{
					bm = new Bitmap(bmdata);
					pt = MapGridUtil.getPixelPointEx(gridWidth, gridHeight, x, y);
					drawSingleGrid(gridLayer, pt.x - gridWidth / 2, pt.y - gridHeight / 2, gridWidth, gridHeight, true, MapGridUtil.getTilePointEx(gridWidth, gridHeight, pt.x, pt.y));
					bm.x = pt.x - gridWidth / 2;
					bm.y = pt.y - gridHeight / 2;
					bm.visible = false;
					gridLayer.addChild(bm);
					gridArray[x][y] = bm;
				}
			}
			//gridLayer.cacheAsBitmap = true;
			return gridArray;
		}

		public static function drawSingleGrid(sp:Sprite, baseX:int, baseY:int, tilePixelWidth:int, tilePixelHeight:int, canWalkable:Boolean, pt:Point = null):void
		{
			var color:uint;

			sp.graphics.moveTo(baseX, baseY);

			color = (canWalkable) ? 0x0 : 0xff0000;

			//外框
			sp.graphics.lineStyle(1, color, 1);
			sp.graphics.moveTo(baseX, baseY + tilePixelHeight / 2);
			sp.graphics.lineTo(baseX + tilePixelWidth / 2, baseY);
			sp.graphics.lineTo(baseX + tilePixelWidth, baseY + tilePixelHeight / 2);
			sp.graphics.lineTo(baseX + tilePixelWidth / 2, baseY + tilePixelHeight);
			sp.graphics.lineTo(baseX, baseY + tilePixelHeight / 2);

			if (canWalkable && pt)
			{
				var tf:TextField = new TextField();
				tf.mouseEnabled = false;
				tf.autoSize = "left";
				tf.text = pt.x + "," + pt.y;
				sp.addChild(tf);
				tf.x = baseX + (tilePixelWidth - tf.textWidth) * .5;
				tf.y = baseY + (tilePixelHeight - tf.textHeight) * .5;
			}

			if (!canWalkable)
			{
				//里框
				var hoff:Number = tilePixelHeight / 4;
				var woff:Number = hoff * tilePixelWidth / tilePixelHeight;
				sp.graphics.moveTo(baseX + woff, baseY + tilePixelHeight / 2);
				sp.graphics.lineTo(baseX + tilePixelWidth / 2, baseY + hoff);
				sp.graphics.lineTo(baseX + tilePixelWidth - woff, baseY + tilePixelHeight / 2);
				sp.graphics.lineTo(baseX + tilePixelWidth / 2, baseY + tilePixelHeight - hoff);
				sp.graphics.lineTo(baseX + woff, baseY + tilePixelHeight / 2);
				//交叉线
				sp.graphics.moveTo(baseX, baseY + tilePixelHeight / 2);
				sp.graphics.lineTo(baseX + tilePixelWidth, baseY + tilePixelHeight / 2);
				sp.graphics.moveTo(baseX + tilePixelWidth / 2, baseY);
				sp.graphics.lineTo(baseX + tilePixelWidth / 2, baseY + tilePixelHeight);
			}
		}
	}
}
