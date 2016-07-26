package tx.sce.controller
{
	import LibCore.mme.events.MmeAssetRenderEvent;

	import com.adobe.crypto.MD5;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;
	import flash.system.LoaderContext;
	import flash.utils.ByteArray;
	import flash.utils.Timer;
	
	import mx.controls.Alert;
	import mx.core.mx_internal;
	import mx.graphics.codec.JPEGEncoder;
	import mx.graphics.codec.PNGEncoder;
	
	import tx.sce.command.Command;
	import tx.sce.data.DataCollect;
	import tx.sce.data.LayerData;
	import tx.sce.tools.Global;
	import tx.sce.tools.MapGridUtil;
	import tx.sce.updateMsg.UpdateMsg;
	import tx.sce.view.NpcRender;
	
	public class LayerController extends Controller
	{
		private const jpegQuality:int = 80;
		private const miniMapScale:Number = 0.1;
		private const defaultMapScale:Number = 0.01;
		private const sceneMapScale:Number = 0.1;
		
		private var dividedByteArr:Array;
		private var middlePicByteArr:Array;
		private var frontPicByteArr:Array;
		private var xCount:int;
		private var yCount:int;
		private var dividedI:int;
		private var dividedJ:int;
		private var jpegEncoder:JPEGEncoder;
		private var pngEncoder:PNGEncoder;
		private var exportPath:String;
		private var exportBlockWidth:int;
		private var exportBlockHeight:int;
		private var backGroundPic:BitmapData;
		private var fullScenePic:BitmapData;
		private var miniMap:ByteArray;
		private var defaultMap:ByteArray;
		private var sceneMap:ByteArray;
		private var totalMission:int;
		private var finishedMission:int;
		
		public function LayerController(dt:DataCollect)
		{
			super(dt);
		}
		
		override protected function doCommand(cmd:Command):void
		{
			var msg:UpdateMsg;
			switch (cmd.type)
			{
				case Command.NEW_PROJECT:
					data.layerData = new LayerData(cmd.commandData.width,cmd.commandData.height,cmd.commandData.id, cmd.commandData.gridWidth, cmd.commandData.gridHeight);
					showLayersView();
					showEditAreaView();
					showGrid();
					break;
				
				case Command.CREATE_SCENE_AREA:
					createFromFile();
					break;
								
				case Command.SELECT_LAYER:
					data.layerData.currentLayer = cmd.commandData.layerName;
					msg = new UpdateMsg(UpdateMsg.SELECTED_LAYER);
					msg.msgData = {layerName:cmd.commandData.layerName, index:cmd.commandData.index};
					dispatchMsg(msg);
					break;
				
				case Command.ADD_PIC_TO_SCENE:
					if (!cmd.commandData.hasOwnProperty("insertIndex")) cmd.commandData.insertIndex = data.layerData.layersArr[cmd.commandData.layerName].length;
					addPicToScene(cmd.commandData.picArr, cmd.commandData.insertIndex);
					break;
				
				case Command.MOVE_PIC:
					doMovePic(cmd);
					break;
				
				case Command.EXPORT_SCENE:
					exportScene(cmd);
					break;
				
				case Command.CLOSE_PROJECT:
					if (data.layerData) 
						data.layerData = null;
					dispatchMsg(new UpdateMsg(UpdateMsg.CLOSE_VIEW));
					break;
				
				case Command.SET_GRID_VALUE:
					setGridValue(cmd.commandData.x, cmd.commandData.y, cmd.commandData.walkable);
					break;
				
				case Command.NPC_TURN_LEFT:
					doNpcTurn(cmd.commandData.render, "left");
					break;
				
				case Command.NPC_TURN_RIGHT:
					doNpcTurn(cmd.commandData.render, "right");
					break;
				
				case Command.MOVE_PATH_CHANGE:
					doMovePathChange(cmd.commandData.render, cmd.commandData.pathX, cmd.commandData.pathY);
					break;
				
				case Command.REMOVE_SCENE_ITEM:
					removeFromScene(cmd.commandData.index, cmd.commandData.layerName);
					break;
				
				case Command.SET_SCENE_ITEM_CONFIG:
					setSceneItemConfig(cmd);
					break;
				
				case Command.SET_PIC_OBSTACLES:
					setPicObstacles(cmd.commandData.newXml, cmd.commandData.updateExist);
					break;
				
				case Command.DRAG_DROP_LAYER_ITEM:
					moveItemToNewLayer(cmd.commandData.oldLayerName, cmd.commandData.oldIndex, cmd.commandData.newLayerName, cmd.commandData.newIndex);
					break;
			}
		}
		
		override protected function undoCommand(cmd:Command):void
		{
			switch (cmd.type)
			{
				case Command.ADD_PIC_TO_SCENE:
					for (var i:int = 0; i < cmd.commandData.picArr.length; i++)
					{
						removeFromScene(cmd.commandData.insertIndex, cmd.commandData.layerName);
					}
					break;
				
				case Command.MOVE_PIC:
					undoMovePic(cmd);
					break;
				
				case Command.SET_GRID_VALUE:
					setGridValue(cmd.commandData.x,cmd.commandData.y, !cmd.commandData.walkable);
					break;
				
				case Command.NPC_TURN_LEFT:
					doNpcTurn(cmd.commandData.render, "right");
					break;
				
				case Command.NPC_TURN_RIGHT:
					doNpcTurn(cmd.commandData.render, "left");
					break;
				
				case Command.MOVE_PATH_CHANGE:
					doMovePathChange(cmd.commandData.render, cmd.commandData.oldPathX, cmd.commandData.oldPathY);
					break;
				
				case Command.REMOVE_SCENE_ITEM:
					addPicToScene([cmd.commandData],cmd.commandData.index);
					break;
				
				case Command.DRAG_DROP_LAYER_ITEM:
					moveItemToNewLayer(cmd.commandData.newLayerName, cmd.commandData.newIndex, cmd.commandData.oldLayerName, cmd.commandData.oldIndex);
					break;
			}
		}

		//把arr数组里的图片元素依次插入到索引为insertIndex的位置后面
		private function addPicToScene(arr:Array, insertIndex:int = -1):void
		{
			var file:File;
			var itemIndex:int = 0;
			var render:NpcRender = new NpcRender();
			var loader:Loader = new Loader();
			render.addEventListener(MmeAssetRenderEvent.READY,onloaded);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onloaded);
			
			file = data.libraryData.picZip.getFileByName(arr[itemIndex].picName);
			(arr[itemIndex].layerName == "NPCLayer")? render.loadUrl(file.nativePath) : loader.load(new URLRequest(file.nativePath));

			function onloaded(evt:Event):void
			{
				var layerArr:Array = data.layerData.layersArr[arr[itemIndex].layerName];
				var layerXml:XML = data.layerData.layersXml.layer.(@name == arr[itemIndex].layerName)[0];
				var tmpXml:XML;
				var msg:UpdateMsg;
				var pic:DisplayObject;
				if (arr[itemIndex].layerName == "NPCLayer")
				{
					if (arr[itemIndex].hasOwnProperty("mpOffsetX")) 
					{
						render.movePathOffset = new Point(arr[itemIndex].mpOffsetX,arr[itemIndex].mpOffsetY);
					}
					if (arr[itemIndex].hasOwnProperty("direction"))
					{
						render.turnTo(arr[itemIndex].direction);
					}
					pic = render;
				}
				else
				{
					pic = new Bitmap((loader.content as Bitmap).bitmapData);
				}
				pic.x = arr[itemIndex].x;
				pic.y = arr[itemIndex].y;
				if (pic is NpcRender)
				{
					MapGridUtil.adjustToGridCenter(data.layerData.gridWidth, data.layerData.gridHeight, pic);
				}
				pic.name = arr[itemIndex].picName;
				
				msg = new UpdateMsg(UpdateMsg.ADD_PIC_TO_VIEW);
				//如果没有指定insertIndex，就把各个图片插入到所属层的最后面
				if (insertIndex != -1)
				{
					layerArr.splice(insertIndex+itemIndex, 0, pic); //插入到指定位置，因为在数组中的位置相当于它的id。
					tmpXml = getPicXmlByIndex(layerXml.@name,insertIndex+itemIndex-1);
					layerXml.insertChildAfter(tmpXml,<pic name={pic.name} label={pic.name}/>);
					msg.msgData = {pic:pic, layerName:arr[itemIndex].layerName, index:insertIndex+itemIndex};
				}
				else
				{
					layerArr.push(pic);
					tmpXml = getPicXmlByIndex(layerXml.@name,layerArr.length-1-1);
					layerXml.insertChildAfter(tmpXml,<pic name={pic.name} label={pic.name}/>);
					msg.msgData = {pic:pic, layerName:arr[itemIndex].layerName, index:layerArr.length-1};
				}				
				dispatchMsg(msg);
				
				setPicRelatedGrid(pic, pic.x, pic.y, getLibraryXmlByName(pic.name), false);
				
				if (itemIndex < arr.length-1)
				{
					file = data.libraryData.picZip.getFileByName(arr[++itemIndex].picName);
					if (arr[itemIndex].layerName == "NPCLayer")
					{
						render.removeEventListener(MmeAssetRenderEvent.READY,onloaded);
						render = new NpcRender();
						render.addEventListener(MmeAssetRenderEvent.READY,onloaded);
						render.loadUrl(file.nativePath);
					}
					else
					{
						loader.load(new URLRequest(file.nativePath));
					}
				}
			}			
		}
		
		private function exportBackGround(path:String, width:int, height:int):void
		{		
			outputBackGroundPics(exportPath,dividedByteArr);
			outputBackGroundXml(exportPath,dividedByteArr);
		}
		
		private function drawBitmapData():void
		{
			//var result:BitmapData = new BitmapData(data.layerData.canvasWidth,data.layerData.canvasHeight);
			backGroundPic = new BitmapData(data.layerData.canvasWidth,data.layerData.canvasHeight);
			for each (var bitmap:Bitmap in data.layerData.layersArr["BackGround"])
			{
				backGroundPic.draw(bitmap, new Matrix(1,0,0,1,bitmap.x,bitmap.y));
			}
			
			fullScenePic = backGroundPic.clone();
			for each (bitmap in data.layerData.layersArr["MiddleGround"])
			{
				fullScenePic.draw(bitmap, new Matrix(1,0,0,1,bitmap.x,bitmap.y));
			}
			for each (bitmap in data.layerData.layersArr["FrontGround"])
			{
				fullScenePic.draw(bitmap, new Matrix(1,0,0,1,bitmap.x,bitmap.y));
			}
			
			//return result;
		}
		
		private function encodePic(pic:BitmapData, width:int, height:int):void
		{
			dividedByteArr = new Array();
			var byteArr:ByteArray;
			var rect:Rectangle = new Rectangle();
			var tmpbd:BitmapData;
			var timer:Timer;

			xCount = data.layerData.canvasWidth / width;
			if (data.layerData.canvasWidth % width > 0) xCount++;
			
			yCount = data.layerData.canvasHeight / height;
			if (data.layerData.canvasHeight % height > 0) yCount++;
			
			rect.width = width;
			rect.height = height;
			for(var i:int = 0; i < xCount; i++)
			{
				dividedByteArr[i] = new Array();
				rect.x = i * width;
				if (i == xCount-1 && rect.x+rect.width > data.layerData.canvasWidth) 
				{
					rect.width = data.layerData.canvasWidth % width;
				}
				for (var j:int = 0; j < yCount; j++)
				{
					rect.y = j * height;
					if (j == 0) rect.height = height;
					if (j == yCount-1 && rect.y+rect.height > data.layerData.canvasHeight) 
					{
						rect.height = data.layerData.canvasHeight % height;
					}
					tmpbd = new BitmapData(rect.width,rect.height);
					tmpbd.copyPixels(pic,rect,new Point(0,0));
					//byteArr = encoder.encode(tmpbd);
					(dividedByteArr[i] as Array).push(tmpbd);
					//updateProgress((i*xCount+j)/(xCount*yCount)*100, 100);
				}
			}
			dividedI = 0;
			dividedJ = 0;
			jpegEncoder = new JPEGEncoder(this.jpegQuality);
			pngEncoder = new PNGEncoder();
			miniMap = null;
			defaultMap = null;
			sceneMap = null;
			finishedMission = 0;
			totalMission = xCount * yCount + 3 + data.layerData.layersArr["MiddleGround"].length + data.layerData.layersArr["FrontGround"].length; //3是场景3个尺寸的输出任务
			middlePicByteArr = new Array();
			frontPicByteArr = new Array();
			
			timer = new Timer(1);
			timer.addEventListener(TimerEvent.TIMER,onEncodeDividedBg);
			timer.start();
		}
		
		protected function onEncodeDividedBg(event:TimerEvent):void
		{
			// TODO Auto-generated method stub
			dividedByteArr[dividedI][dividedJ] = jpegEncoder.encode(dividedByteArr[dividedI][dividedJ]);
			dividedJ++;
			if (dividedJ >= yCount)
			{
				dividedI++;
				dividedJ = 0;
				if (dividedI >= xCount)
				{
					(event.target as Timer).removeEventListener(TimerEvent.TIMER,onEncodeDividedBg);
					(event.target as Timer).addEventListener(TimerEvent.TIMER,onEncodeFullBg);
				}
			}
			updateProgress(++finishedMission/totalMission*100, 100);
		}
		
		protected function onEncodeFullBg(event:TimerEvent):void
		{
			// TODO Auto-generated method stub
			var bd:BitmapData;
			if (miniMap == null)
			{
				bd = new BitmapData(fullScenePic.width*miniMapScale, fullScenePic.height*miniMapScale);
				bd.draw(fullScenePic,new Matrix(miniMapScale,0,0,miniMapScale,0,0));
				miniMap = pngEncoder.encode(bd);
				updateProgress(++finishedMission/totalMission*100, 100);
			}
			else if (defaultMap == null)
			{
				bd = new BitmapData(fullScenePic.width*defaultMapScale, fullScenePic.height*defaultMapScale);
				bd.draw(fullScenePic,new Matrix(defaultMapScale,0,0,defaultMapScale,0,0));
				defaultMap = pngEncoder.encode(bd);
				updateProgress(++finishedMission/totalMission*100, 100);
			}
			else if (sceneMap == null)
			{
				bd = new BitmapData(fullScenePic.width*sceneMapScale, fullScenePic.height*sceneMapScale);
				bd.draw(fullScenePic,new Matrix(sceneMapScale,0,0,sceneMapScale,0,0));
				sceneMap = pngEncoder.encode(bd);
				updateProgress(++finishedMission/totalMission*100, 100);
			}
			else
			{
				(event.target as Timer).removeEventListener(TimerEvent.TIMER,onEncodeFullBg);
				(event.target as Timer).addEventListener(TimerEvent.TIMER,onEncodeMiddlePic);
			}
		}		
		
		protected function onEncodeMiddlePic(event:TimerEvent):void
		{
			var layer:Array = data.layerData.layersArr["MiddleGround"];
			if (middlePicByteArr.length < layer.length)
			{
				middlePicByteArr.push(pngEncoder.encode((layer[middlePicByteArr.length]as Bitmap).bitmapData));
				updateProgress(++finishedMission/totalMission*100, 100);
			}
			else
			{
				(event.target as Timer).removeEventListener(TimerEvent.TIMER,onEncodeMiddlePic);
				(event.target as Timer).addEventListener(TimerEvent.TIMER,onEncodeFrontPic);
			}
		}		
		
		protected function onEncodeFrontPic(event:TimerEvent):void
		{
			var layer:Array = data.layerData.layersArr["FrontGround"];
			if (frontPicByteArr.length < layer.length)
			{
				frontPicByteArr.push(pngEncoder.encode((layer[frontPicByteArr.length]as Bitmap).bitmapData));
				updateProgress(++finishedMission/totalMission*100, 100);
			}
			else
			{
				(event.target as Timer).removeEventListener(TimerEvent.TIMER,onEncodeFrontPic);
				(event.target as Timer).stop();
				afterEncoded();
				//outputedBg = 0;
				//outputedFront = 0;
				//outputedMid = 0;
				//(event.target as Timer).addEventListener(TimerEvent.TIMER,onOuputPics);
			}
		}
		
		/*protected function onOuputPics(event:TimerEvent):void
		{
			var filePath:String;
			var byteArr:ByteArray;
			if (outputedBg < xCount*yCount)
			{
				byteArr = dividedByteArr[int(outputedBg/yCount)][outputedBg%yCount];
				filePath = exportPath+"\\"+data.layerData.id+"\\ImgItem\\"+MD5.hashBinary(byteArr)+".jpg";
				outputPicFile(filePath,byteArr);
				outputedBg++;
				updateProgress(++finishedMission/totalMission*100, 100);
			}
			else if (outputedMid < middlePicByteArr.length)
			{
				byteArr = middlePicByteArr[outputedMid];
				filePath = exportPath+"\\"+data.layerData.id+"\\ImgItem\\"+MD5.hashBinary(byteArr)+".png";
				outputPicFile(filePath,byteArr);
				outputedMid++;
				updateProgress(++finishedMission/totalMission*100, 100);
			}
			else if (outputedFront < frontPicByteArr.length)
			{
				byteArr = frontPicByteArr[outputedFront];
				filePath = exportPath+"\\"+data.layerData.id+"\\ImgItem\\"+MD5.hashBinary(byteArr)+".png";
				outputPicFile(filePath,byteArr);
				outputedFront++;
				updateProgress(++finishedMission/totalMission*100, 100);
			}
			else
			{
				(event.target as Timer).removeEventListener(TimerEvent.TIMER,onOuputPics);
				(event.target as Timer).stop();
				afterEncoded();
			}
		}*/
		
		private function outputBackGroundPics(path:String, arr:Array):void
		{
			var filePath:String;
				
			for (var i:int = 0; i < arr.length; i++)
			{	
				for (var j:int = 0; j < arr[i].length; j++)
				{
					filePath = path+"\\"+data.layerData.id+"\\ImgItem\\"+MD5.hashBinary(arr[i][j])+".jpg";
					outputPicFile(filePath,arr[i][j]);
				}
			}
		}
		
		private function outputBackGroundXml(path:String, arr:Array):void
		{
			var filePath:String;
			var bgXml:XML = <SceneBackgroundConfig/>;
			var imgList:XML = <imgList/>;
			var tmp:XML;
			
			bgXml.appendChild(imgList);
			for (var i:int = 0; i < arr.length; i++)
			{	
				for (var j:int = 0; j < arr[i].length; j++)
				{
					tmp = <img/>;
					tmp.@id = i.toString()+j.toString();
					tmp.@imgX = i;
					tmp.@imgY = j;
					tmp.@url = "assets/scene/map/"+data.layerData.id+"/ImgItem/"+MD5.hashBinary(arr[i][j])+".jpg";
					imgList.appendChild(tmp);
				}
			}
			filePath = path+"\\"+data.layerData.id+"\\_scene_bg.xml";
			outputXml(filePath, bgXml);			
		}
		
		private function removeFromScene(index:int, layer:String):void
		{
			var arr:Array = data.layerData.layersArr[layer];
			var msg:UpdateMsg;
			var targetXml:XML = getPicXmlByIndex(layer,index);
			var pic:DisplayObject;
			delete targetXml.parent().children()[index];   //这里直接delete targetXml会报错，要用这种间接的形式。
			pic = arr.splice(index,1)[0];
			msg = new UpdateMsg(UpdateMsg.REMOVE_PIC_FROM_VIEW);
			msg.msgData = {index:index, layerName:layer};
			dispatchMsg(msg);
			
			setPicRelatedGrid(pic, pic.x, pic.y, getLibraryXmlByName(targetXml.@name), true);
		}	
		
		private function createFromFile():void
		{		
			var file:File = data.projectData.dataZip.getFileByName("sceneXml.xml");
			file.addEventListener(Event.COMPLETE,onLoaded);
			file.load();
			function onLoaded(evt:Event):void
			{
				file.removeEventListener(Event.COMPLETE,onLoaded);
				var newXml:XML = new XML(file.data);
				var xmlList:XMLList;
				var picArr:Array = new Array();
				data.layerData = new LayerData(newXml.@width,newXml.@height,newXml.@id, newXml.@gridWidth, newXml.@gridHeight);
				showLayersView();
				showEditAreaView();
				showGrid();
				
				xmlList  = newXml..bitmap + newXml..NPC;
				for each (var item:XML in xmlList)
				{
					if (item.parent().@name == "NPCLayer")
					{
						picArr.push({picName:item.@name, layerName:item.parent().@name, x:item.@x, y:item.@y, mpOffsetX:item.@mpOffsetX, mpOffsetY:item.@mpOffsetY, direction:item.@direction});
					}
					else
					{
						picArr.push({picName:item.@name, layerName:item.parent().@name, x:item.@x, y:item.@y});
					}
				}
				picArr.length>0 && addPicToScene(picArr); //因为这里的图片属于各个层的都有，所以不要指定插入位置，就插入到各自层的最后面
				
				xmlList = (newXml.layer.(@name == "GridLayer")[0]).grid;
				for each (item in xmlList)
				{
					setGridValue(item.@x,item.@y,(item.@walkable == "true")?true:false);
				}
			}
		}
		
		private function showLayersView():void
		{
			var msg:UpdateMsg;
			msg = new UpdateMsg(UpdateMsg.SHOW_NEW_LAYERS_VIEW);
			msg.msgData = {xml:data.layerData.layersXml};
			dispatchMsg(msg);
		}
		
		private function showEditAreaView():void
		{
			var msg:UpdateMsg;
			msg = new UpdateMsg(UpdateMsg.SHOW_NEW_EDIT_AREA);
			msg.msgData = {width:data.layerData.canvasWidth, height: data.layerData.canvasHeight};
			dispatchMsg(msg);
		}
		
		private function getDisplayObjectByIndex(layerName:String, index:int):DisplayObject
		{
			return data.layerData.layersArr[layerName][index] as DisplayObject;
		}
				
		private function updateBitmapViewPos(layerName:String, index:int, x:int, y:int):void
		{
			var msg:UpdateMsg = new UpdateMsg(UpdateMsg.UPDATE_PIC_POSITION);
			msg.msgData = {layerName:layerName, index:index, x:x, y:y};
			dispatchMsg(msg);
		}
		
		private function doMovePic(cmd:Command):void
		{
			var bm:DisplayObject = getDisplayObjectByIndex(cmd.commandData.layerName,cmd.commandData.index);
			bm.x = cmd.commandData.x;
			bm.y = cmd.commandData.y;
			if (cmd.commandData.layerName == "NPCLayer")
			{
				//如果是NPC，则它的坐标只能是某个网格的中心点
				MapGridUtil.adjustToGridCenter(data.layerData.gridWidth, data.layerData.gridHeight, bm);
			}
			updateBitmapViewPos(cmd.commandData.layerName,cmd.commandData.index,bm.x,bm.y);
			
			setPicRelatedGrid(bm, cmd.commandData.oldX, cmd.commandData.oldY, getLibraryXmlByName(bm.name),true);
			setPicRelatedGrid(bm, cmd.commandData.x, cmd.commandData.y, getLibraryXmlByName(bm.name),false);
		}
		
		private function undoMovePic(cmd:Command):void
		{
			var bm:DisplayObject = getDisplayObjectByIndex(cmd.commandData.layerName,cmd.commandData.index);
			bm.x = cmd.commandData.oldX;
			bm.y = cmd.commandData.oldY;
			if (cmd.commandData.layerName == "NPCLayer")
			{
				//如果是NPC，则它的坐标只能是某个网格的中心点
				var gridPoint:Point = MapGridUtil.getTilePoint(data.layerData.gridWidth, data.layerData.gridHeight, bm.x, bm.y);
				var gridCenter:Point = MapGridUtil.getPixelPoint(data.layerData.gridWidth,data.layerData.gridHeight, gridPoint.x, gridPoint.y);
				bm.x = gridCenter.x;
				bm.y = gridCenter.y;
			}
			updateBitmapViewPos(cmd.commandData.layerName,cmd.commandData.index,bm.x,bm.y);
			
			setPicRelatedGrid(bm, cmd.commandData.oldX, cmd.commandData.oldY, getLibraryXmlByName(bm.name),false);
			setPicRelatedGrid(bm, cmd.commandData.x, cmd.commandData.y, getLibraryXmlByName(bm.name),true);
		}
			
		private function outputPicFile(filePath:String, byteArr:ByteArray):void
		{
			var file:File;
			var stream:FileStream = new FileStream();
			file = new File(filePath);		
			try{
				file.parent.createDirectory();
				stream.open(file,FileMode.WRITE);
				stream.writeBytes(byteArr);
				stream.close();
			}
			catch(err:Error){
				Alert.show("export failed"+err.toString(),"error");
				trace(err);
			}
		}
		
		private function cleanDirectory(path:String):void
		{
			var file:File = new File(path+"//"+data.layerData.id);
			if (file.exists)
			{
				file.deleteDirectory(true);
			}
		}
		
		private function exportMid_Front(path:String, width:int, height:int):void
		{
			outputMidOrFrontPics(data.layerData.layersArr["MiddleGround"],path, <SceneMiddlegroundConfig/>, width, height,"_scene_mg.xml");
			outputMidOrFrontPics(data.layerData.layersArr["FrontGround"],path, <SceneForegroundConfig/>, width, height,"_scene_fg.xml");
		}
		
		private function outputMidOrFrontPics(arr:Array, path:String, xml:XML, blockWidth:int, blockHeight:int, xmlName:String):void
		{
			var bm:Bitmap;
			var encoder:PNGEncoder = new PNGEncoder();
			var byteArr:ByteArray;
			var filePath:String;
			var imgList:XML = <imgList/>;
			xml.appendChild(imgList);
			for (var i:int = 0; i < arr.length; i++)
			{
				bm = arr[i];
				byteArr = (xmlName == "_scene_mg.xml")? middlePicByteArr[i] as ByteArray : frontPicByteArr[i] as ByteArray;
				filePath = path+"//"+data.layerData.id+"//ImgItem//"+MD5.hashBinary(byteArr)+".png";
				outputPicFile(filePath,byteArr);
				editItemXml(imgList,i+1, bm, blockWidth, blockHeight, "assets/scene/map/"+data.layerData.id+"/ImgItem/"+MD5.hashBinary(byteArr)+".png");
			}
			
			filePath = path+"\\"+data.layerData.id+"\\"+xmlName;
			outputXml(filePath, xml);	
		}
		
		private function editItemXml(xml:XML, id:int, bm:Bitmap, width:int, height:int, url:String):void
		{
			var minX:int = bm.x / width;
			var minY:int = bm.y / height;
			var maxX:int = (bm.x+bm.width) / width;
			var maxY:int = (bm.y+bm.height) / height;
			var targetX:int;
			var targetY:int;
			for (var i:int = minX; i <= maxX; i++)
				for (var j:int = minY; j <= maxY; j++)
				{
					targetX = i * width;
					targetY = j * height;
					xml.appendChild(<img id={id} imgX={i} imgY={j} offsetX={bm.x-targetX} offsetY={bm.y-targetY} url={url}/>);
				}
		}
		
		private function outputXml(filePath:String, xml:XML):void
		{
			var file:File = new File(filePath);
			var stream:FileStream = new FileStream();
			try{
				file.parent.createDirectory();
				stream.open(file,FileMode.WRITE);
				stream.writeUTFBytes(xml.toXMLString());
				stream.close();
			}
			catch(err:Error){
				Alert.show("export failed"+err.toString(),"error");
				trace(err);
			}
		}
		
		private function showGrid():void
		{
			var msg:UpdateMsg = new UpdateMsg(UpdateMsg.DRAW_GRID);
			msg.msgData = {gridWidth:data.layerData.gridWidth, gridHeight:data.layerData.gridHeight, rows:data.layerData.gridRows, columns:data.layerData.gridColumns};
			dispatchMsg(msg);
		}
		
		private function setGridValue(x:int, y:int, walkable:Boolean):void
		{
			var gridLayer:Array = data.layerData.layersArr["GridLayer"];
			if (!gridLayer[x]) gridLayer[x] = new Array();
			gridLayer[x][y] = walkable;
			var msg:UpdateMsg = new UpdateMsg(UpdateMsg.UPDATE_GRID_VALUE);
			msg.msgData = {x:x, y:y, value:walkable};
			dispatchMsg(msg);
		}
		
		private function exportMapInfo(path:String, imgWidth:int, imgHeight:int):void
		{
			var file:File = new File(path+"/"+data.layerData.id+"/MapInfo.map");
			var stream:FileStream = new FileStream();
			var gridLayer:Array = data.layerData.layersArr["GridLayer"];
			try{
				file.parent.createDirectory();
				stream.open(file,FileMode.WRITE);
				stream.writeInt(data.layerData.canvasWidth);
				stream.writeInt(data.layerData.canvasHeight);
				stream.writeInt(imgWidth);
				stream.writeInt(imgHeight);
				stream.writeShort(data.layerData.gridColumns);
				stream.writeShort(data.layerData.gridRows);
				stream.writeShort(data.layerData.gridWidth);
				stream.writeShort(data.layerData.gridHeight);
				for (var y:int = 0; y < data.layerData.gridRows; y++)
					for (var x:int = 0; x < data.layerData.gridColumns; x++)
						stream.writeBoolean((gridLayer[x] && gridLayer[x][y]!=null)? gridLayer[x][y]:true);
				stream.close();
			}
			catch(err:Error){
				Alert.show("export failed"+err.toString(),"error");
				trace(err);
			}
		}
				
		private function doMovePathChange(render:NpcRender, x:int, y:int):void
		{
			var msg:UpdateMsg;
			var movePathGridPoint:Point = MapGridUtil.getTilePoint(data.layerData.gridWidth, data.layerData.gridHeight, x+data.layerData.gridWidth/2, y+data.layerData.gridHeight/2);
			var renderGridPoint:Point = MapGridUtil.getTilePoint(data.layerData.gridWidth, data.layerData.gridHeight, render.x, render.y);
			render.movePathOffset = movePathGridPoint.subtract(renderGridPoint);
			msg = new UpdateMsg(UpdateMsg.UPDATE_MOVE_PATH);
			msg.msgData = {render:render};
			dispatchMsg(msg);
		}
		
		private function doNpcTurn(npc:NpcRender, direction:String):void
		{
			var msg:UpdateMsg
			setPicRelatedGrid(npc, npc.x, npc.y, getLibraryXmlByName(npc.name), true);
			npc.turn(direction);
			setPicRelatedGrid(npc, npc.x, npc.y, getLibraryXmlByName(npc.name), false);
			msg = new UpdateMsg(UpdateMsg.UPDATE_RECT_SIZE);
			msg.msgData = {render:npc};
			dispatchMsg(msg);
		}
		
		private function exportNPCLayer(path:String, imgWidth:int, imgHeight:int):void
		{
			var NPCLayer:Array = data.layerData.layersArr["NPCLayer"];
			var xml:XML = <RoleNpcConfig/>;
			var render:NpcRender;
			var destPoint:Point;
			var movePath:Point
			var dot:String = ", ";
			var startImgX:int, startImgY:int, endImgX:int, endImgY:int;
			var filePath:String;
			var tmpXml:XML;
			var file:File;
			var destFile:File;
			for (var i:int = 0; i < NPCLayer.length; i++)
			{
				render= NPCLayer[i] as NpcRender;
				tmpXml = getLibraryXmlByName(render.name);
				destPoint = MapGridUtil.getTilePoint(data.layerData.gridWidth,data.layerData.gridHeight,render.x,render.y);
				movePath = destPoint.add(render.movePathOffset); 
				startImgX = (render.x+render.topLeft.x) / imgWidth;
				startImgY = (render.y+render.topLeft.y) / imgHeight;
				endImgX = (render.x+render.bottomRight.x) / imgWidth;
				endImgY = (render.y+render.bottomRight.y) / imgHeight;
				xml.appendChild(<NPC id={i} roleId={tmpXml.@roleId} res={"assets/role/npc/scene/npcres/"+render.name} direction={render.idleIndex} destPoint={destPoint.x+dot+destPoint.y} startImgX={startImgX} endImgX={endImgX} startImgY={startImgY} endImgY={endImgY} canMove="false" movePath={movePath.x+dot+movePath.y} />);
			
				file = data.libraryData.picZip.getFileByName(render.name);
				destFile = new File(path+"\\"+data.layerData.id+"\\npcres\\"+render.name);
				//destFile.createDirectory();
				file.copyTo(destFile,true);
			}
			filePath = path+"\\"+data.layerData.id+"\\"+"npccfg_scene"+data.layerData.id+".xml";
			outputXml(filePath, xml);	
		}
		
		private function getPicXmlByIndex(layerName:String, index:int):XML
		{
			var layerXml:XML = data.layerData.layersXml.layer.(@name == layerName)[0];
			return layerXml.child(index)[0];
		}
		
		private function setSceneItemConfig(cmd:Command):void
		{
			var msg:UpdateMsg;
			msg = new UpdateMsg(UpdateMsg.UPDATE_SCENE_ITEM_CONFIG);
			msg.msgData = cmd.commandData;
			dispatchMsg(msg);
			if (cmd.commandData.index == -1)
			{
				var layerXml:XML = data.layerData.layersXml.layer.(@name == cmd.commandData.layerName)[0];
				if (cmd.commandData.checkBoxId == "canSee")
				{
					layerXml.@canSee = cmd.commandData.value;
				}
				else
				{
					layerXml.@locked = cmd.commandData.value;
				}
			}
		}
		
		private function setPicRelatedGrid(pic:DisplayObject, picX:int, picY:int, xml:XML, walkable:Boolean):void
		{
			var gridPoint:Point;
			for each (var obstacle:XML in xml.obstacle)
			{
				if (obstacle.@index != ((pic is NpcRender)? (pic as NpcRender).idleIndex:0)) 
				{
					continue;
				}
				gridPoint = MapGridUtil.getTilePoint(data.layerData.gridWidth, data.layerData.gridHeight, picX + int(obstacle.@offsetX), picY + int(obstacle.@offsetY));
				if (gridPoint.x >=0 && gridPoint.x < data.layerData.gridColumns && gridPoint.y >= 0 && gridPoint.y < data.layerData.gridRows)
				{
					setGridValue(gridPoint.x, gridPoint.y, walkable);
				}
				
			}
		}
		
		private function getLibraryXmlByName(name:String):XML
		{
			var str:String = name;  //这里超奇怪，一定要弄一个中间变量才能取得到
			return data.libraryData.libXml..item.(@name == str)[0];
		}
		
		private function setPicObstacles(xml:XML, updateExist:Boolean):void
		{
			var picName:String = xml.@name;
			var targetXml:XML = getLibraryXmlByName(picName);
			if (updateExist)
			{
				var xmlList:XMLList = data.layerData.layersXml..pic.(@name == picName);
				for each (var item:XML in xmlList)
				{
					var pic:DisplayObject = getDisplayObjectByIndex(item.parent().@name,item.childIndex());
					setPicRelatedGrid(pic,pic.x,pic.y,targetXml,true);
					setPicRelatedGrid(pic,pic.x,pic.y,xml,false);
				}
			}
			delete targetXml.obstacle;
			targetXml.appendChild(xml.obstacle);
			var str:String = xml.@roleId;
			(xml.@roleId != undefined) && (targetXml.@roleId = str);				
		}
		
		private function moveItemToNewLayer(oldLayerName:String, oldIndex:int, newLayerName:String, newIndex:int):void
		{
			var oldArr:Array = data.layerData.layersArr[oldLayerName] as Array;
			var newArr:Array = data.layerData.layersArr[newLayerName] as Array;
			
			var xml:XML = getPicXmlByIndex(oldLayerName,oldIndex);
			var layerXml:XML = data.layerData.layersXml.layer.(@name == newLayerName)[0];
			var xmlOnTarget:XML;
			var item:Object = oldArr.splice(oldIndex,1)[0];
			delete xml.parent().children()[oldIndex];
			
			newArr.splice(newIndex, 0, item);
			xmlOnTarget = getPicXmlByIndex(newLayerName, newIndex-1);
			layerXml.insertChildAfter(xmlOnTarget,xml);
			
			var msg:UpdateMsg = new UpdateMsg(UpdateMsg.MOVE_ITEM_TO_NEW_LAYER);
			msg.msgData = {oldLayerName:oldLayerName, oldIndex:oldIndex, newLayerName:newLayerName, newIndex:newIndex};
			dispatchMsg(msg);
		}
		
		private function exportScene(cmd:Command):void
		{
			exportPath = cmd.commandData["path"];
			exportBlockWidth = cmd.commandData["blockWidth"];
			exportBlockHeight = cmd.commandData["blockHeight"];
			try
			{
				//dispatchMsg(new UpdateMsg(UpdateMsg.SHOW_EXPORT_PROGRESS));
				cleanDirectory(exportPath);
				drawBitmapData();
				encodePic(backGroundPic,exportBlockWidth,exportBlockHeight);
				//Alert.show("导出成功","提示");  //异常一旦发生，try中的语句就不会继续执行，所以发生异常就不会显示导出成功。
			}
			catch (err:Error)
			{
				//Alert.show(err.toString(),"错误");
				dispatchMsg(new UpdateMsg(UpdateMsg.CLOSE_EXPORT_PROGRESS,{success:false, error:err}));
			}
		}
		
		private function updateProgress(value:Number, total:Number):void
		{
			dispatchMsg(new UpdateMsg(UpdateMsg.SET_EXPORT_PROGRESS,{value:value, total:total}));
		}
		
		private function afterEncoded():void
		{				
			exportBackGround(exportPath,exportBlockWidth,exportBlockHeight);
			exportFullScenePic();
			exportMid_Front(exportPath,exportBlockWidth,exportBlockHeight);
			exportMapInfo(exportPath,exportBlockWidth,exportBlockHeight);
			exportNPCLayer(exportPath,exportBlockWidth,exportBlockHeight);
			copyToPreView();
			dispatchMsg(new UpdateMsg(UpdateMsg.CLOSE_EXPORT_PROGRESS,{success:true}));
		}
		
		private function exportFullScenePic():void
		{
			var xml:XML = <SceneInfo/>;
			var filePath:String;
			
			xml.appendChild(new XML("<link name='plugin.scene.sceneMap."+data.layerData.id+"' missionType='1' url='assets/scene/map/"+data.layerData.id+"/sceneMap.png' byte='0' key=''/>"));
			filePath = exportPath+"//"+data.layerData.id+"//sceneMap.png";
			outputPicFile(filePath, sceneMap);
			
			xml.appendChild(new XML("<link name='plugin.scene.miniMap."+data.layerData.id+"' missionType='1' url='assets/scene/map/"+data.layerData.id+"/miniMap.png' byte='0' key=''/>"));
			filePath = exportPath+"//"+data.layerData.id+"//miniMap.png";
			outputPicFile(filePath, miniMap);
			
			xml.appendChild(new XML("<link name='plugin.scene.defaultMap."+data.layerData.id+"' missionType='1' url='assets/scene/map/"+data.layerData.id+"/defaultMap.png' byte='0' key=''/>"));
			filePath = exportPath+"//"+data.layerData.id+"//defaultMap.png";
			outputPicFile(filePath, defaultMap);
			
			filePath = exportPath+"\\"+data.layerData.id+"\\_scene_info.xml";
			outputXml(filePath, xml);
		}
		
		private function copyToPreView():void
		{
			var file:File = new File(exportPath+"/"+data.layerData.id);
			var destFile:File = new File(File.applicationDirectory.resolvePath("ext/naruto/assets/scene/map/"+data.layerData.id).nativePath);
			file.copyTo(destFile,true);
			
			if (data.layerData.id != "1" )
			{
				destFile.nativePath = File.applicationDirectory.resolvePath("ext/naruto/assets/scene/map/1").nativePath;
				file.copyTo(destFile,true);
			}
			
			file.nativePath += "/npcres";
			if (file.exists)
			{
				destFile.nativePath = File.applicationDirectory.resolvePath("ext/naruto/assets/role/npc/scene/npcres").nativePath;
				file.copyTo(destFile,true);
			}
			
			file.nativePath = exportPath+"/"+data.layerData.id+"/npccfg_scene"+data.layerData.id+".xml";
			//destFile.nativePath = File.applicationDirectory.resolvePath("ext/naruto/assets/role/npc/scene"+"/npccfg_scene"+data.layerData.id+".xml").nativePath;
			destFile.nativePath = File.applicationDirectory.resolvePath("ext/naruto/assets/role/npc/scene"+"/npccfg_scene1.xml").nativePath;
			file.copyTo(destFile,true);
		}
		
	}
}