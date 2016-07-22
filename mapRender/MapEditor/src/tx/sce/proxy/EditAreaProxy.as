package tx.sce.proxy
{
	import tx.sce.command.Command;
	import tx.sce.tools.Global;
	import tx.sce.tools.MapGridUtil;
	import tx.sce.updateMsg.UpdateMsg;
	import tx.sce.view.EditAreaView;
	import tx.sce.view.LibraryView;
	import tx.sce.view.NpcRender;
	import tx.sce.view.ZoomLabel;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.InteractiveObject;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.net.dns.AAAARecord;
	import flash.utils.clearTimeout;
	import flash.utils.setTimeout;
	
	import flashx.textLayout.formats.Float;
	
	import mx.controls.Alert;
	import mx.controls.Tree;
	import mx.core.Container;
	import mx.core.UIComponent;
	import mx.events.DragEvent;
	import mx.events.FlexEvent;
	import mx.events.FlexNativeWindowBoundsEvent;
	import mx.events.PropertyChangeEvent;
	import mx.events.ResizeEvent;
	import mx.managers.DragManager;
	
	import spark.components.Group;
	import spark.components.WindowedApplication;
	

	public class EditAreaProxy extends Proxy
	{
		private const gap:int = 30;
		private const zoomScale:Array = [6, 12, 24, 35, 50, 70, 85, 100, 120, 160, 200, 300, 400, 800, 1600];
		private var editAreaView:EditAreaView;
		private var canvas:Group;
		private var bg:Group;
		private var view:Group;
		private var blueRect:UIComponent;
		private var redRect:UIComponent;
		private var leftArrow:arrowButton;
		private var rightArrow:arrowButton;
		[Bindable] private var selectedItem:Sprite;
		private var selectedOffset:Point;
		private var selectedPoint:Point; //图片被左键点击时注册点的位置，不能用selectedItem.x和y因为这两个值会随着鼠标移动而改变。这个属性的意义是用来记录图片被移动前的位置。
		private var currentLayer:String;
		private var gridWidth:int;
		private var gridHeight:int;
		private var gridArr:Array;//持有每个网格上不可走图例的bitmap
		private var movePathView:UIComponent;
		private var movePathViewDraging:Boolean;
		private var drawingGrid:Boolean;
		private var lastGridPoint:Point;//鼠标扫过的上一个网格。
		private var currentScaleIndex:int; //指示当前的缩放比例
		private var zoom:ZoomLabel; //显示当前缩放比例 的label
		private var timeOutUint:uint;//zoom标签淡出相关
		
		
		public function EditAreaProxy(winapp:MapEditor)
		{
			app = winapp;
			editAreaView = new EditAreaView();
			editAreaView.visible = false;
			//editAreaView.addEventListener(FlexEvent.ADD,initView);
			editAreaView.addEventListener(FlexEvent.CREATION_COMPLETE,initView);
			app.leftBox.addChildAt(editAreaView,0);
			initInteractItem();
			this.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE,onPropertyChange);
		}
				
		override protected function handleMsg(msg:UpdateMsg):void
		{
			switch (msg.type)
			{
				case UpdateMsg.SHOW_NEW_EDIT_AREA:
					setCanvasSize(msg.msgData.width, msg.msgData.height);
					editAreaView.visible = true;
					break;
				
				case UpdateMsg.SHOW_NEW_LAYERS_VIEW:
					setupLayerContainer(msg.msgData.xml);
					break;
				
				case UpdateMsg.CLOSE_VIEW:
					editAreaView.visible = false;
					canvas.removeAllElements();
					break;
				
				case UpdateMsg.ADD_PIC_TO_VIEW:
					addPicToView(msg.msgData["pic"],msg.msgData["layerName"], msg.msgData["index"]);
					break;
				
				case UpdateMsg.UPDATE_PIC_POSITION:
					updatePicPos(msg.msgData.layerName, msg.msgData.index, msg.msgData.x, msg.msgData.y);
					break;
				
				case UpdateMsg.REMOVE_PIC_FROM_VIEW:
					removePicFromView(msg.msgData["index"],msg.msgData["layerName"]);
					break;
				
				case UpdateMsg.DRAW_GRID:
					this.gridWidth = msg.msgData.gridWidth;
					this.gridHeight = msg.msgData.gridHeight;
					gridArr = MapGridUtil.drawGrid(msg.msgData.gridWidth, msg.msgData.gridHeight, msg.msgData.rows, msg.msgData.columns, getLayerByName("GridLayer"));
					initMovePathView(); //因为初始化movePathView需要用到gridWidth和gridHeight，所以要放在这里.
					break;
				
				case UpdateMsg.SELECTED_LAYER:
					setSelectedLayer(msg);
					break;
				
				case UpdateMsg.UPDATE_GRID_VALUE:
					(gridArr[msg.msgData.x][msg.msgData.y] as Bitmap).visible = !msg.msgData.value;//value表示walkable，walkable为true时砖块的visible为flase；
					break;
				
				case UpdateMsg.UPDATE_MOVE_PATH:
					this.showMovePathView(msg.msgData.render);
					break;
				
				case UpdateMsg.UPDATE_RECT_SIZE:
					//如果NPC的动作改变后马上改变它的框的大小，那么按钮的位置也会改变，不利于连续按左右按钮
					//showRect(msg.msgData.render, "blue");
					break;
				
				case UpdateMsg.UPDATE_SCENE_ITEM_CONFIG:
					updateItemConfig(msg);
					break;
				
				case UpdateMsg.MOVE_ITEM_TO_NEW_LAYER:
					moveItemToNewLayer(msg.msgData.oldLayerName, msg.msgData.oldIndex, msg.msgData.newLayerName, msg.msgData.newIndex);
					break;
			}
		}
		
		private function initView(evt:FlexEvent):void
		{
			view = editAreaView.view;
			bg = editAreaView.bg;
			canvas = editAreaView.canvas;
			canvas.name = "canvas";
			
			movePathViewDraging = false;
			drawingGrid = false;
			currentScaleIndex = 7; //100%在数组中的索引为7。
			
			canvas.clipAndEnableScrolling = true;
			canvas.addEventListener(DragEvent.DRAG_ENTER,onDragEnter);
			canvas.addEventListener(DragEvent.DRAG_DROP,onDragDrop);
			
			editAreaView.addEventListener(KeyboardEvent.KEY_DOWN,onKeyBoard);
			editAreaView.removeEventListener(FlexEvent.ADD,initView);
			editAreaView.addEventListener(ResizeEvent.RESIZE,onResize);
			editAreaView.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
			editAreaView.addEventListener(MouseEvent.MOUSE_WHEEL,onMouseWheel);
			
			app.addEventListener(FlexNativeWindowBoundsEvent.WINDOW_RESIZE,onResize);
			
			zoom = new ZoomLabel();
			zoom.visible = false;
			view.addElement(zoom);
		}
				
		private function setCanvasSize(width:int, height:int):void
		{
			bg.width = width + gap;
			bg.height = height + gap;			
			canvas.width = width;
			canvas.height = height;
			canvas.graphics.beginFill(0xffffff,1);
			canvas.graphics.drawRect(0,0,width,height);
			canvas.graphics.endFill();
			onResize(null);
		}
		
		protected function onResize(event:Event):void
		{
			//这里要考虑bg的缩放，奇怪的是，Scroller所必需的一个group(在这里是view)改变了scale后，width也会跟着改变，但是bg却不会。这两个都是group，为什么呢？
			bg.x = view.width < bg.width*bg.scaleX? 0:(view.width/2 - bg.width*bg.scaleX/2);
			bg.y = view.height < bg.height*bg.scaleY? 0:(view.height/2 - bg.height*bg.scaleY/2);
		}
		
		private function setupLayerContainer(infos:XML):void
		{
			var layerUI:UIComponent;
			for each (var info:XML in infos.children())
			{
				layerUI = new UIComponent();
				layerUI.name = info.@name;
				canvas.addElementAt(layerUI,(int(info.@priority) > canvas.numChildren)? canvas.numChildren : info.@priority);
			}
		}
		
		private function addPicToView(pic:DisplayObject, layerName:String, index:int):void
		{
			if (layerName == "NPCLayer")
			{
				var layer:UIComponent = getLayerByName(layerName);
				layer.addChildAt(pic,index);
				setInterative(pic as Sprite);
				return;
			}
			var bm:Bitmap = new Bitmap((pic as Bitmap).bitmapData);
			var bmsp:Sprite = new Sprite(); //因为bitmap不是可交互显示对象，所以要用一个sprite把它包起来。
			bmsp.addChild(bm);
			bmsp.x = pic.x;
			bmsp.y = pic.y;
			bmsp.name = pic.name;
			getLayerByName(layerName).addChildAt(bmsp,index);
			setInterative(bmsp);
		}
		
		private function removePicFromView(index:int,layerName:String):void
		{
			var pic:Sprite;
			pic = getLayerByName(layerName).getChildAt(index) as Sprite;
			getLayerByName(layerName).removeChildAt(index);
			if (pic == selectedItem)
			{	
				hideRect("blue");
				selectedItem = null;
			}			
		}
		
		private function getLayerByName(name:String):UIComponent
		{
			var tmp:UIComponent;
			for (var i:int = 0; i < canvas.numElements; i++)
			{
				tmp = canvas.getElementAt(i) as UIComponent;
				if (tmp.name == name)
					return tmp;
			}
			throw new Error(this+"找不到对应名字的层");
		}
		
		private function setInterative(item:InteractiveObject):void
		{
			item.addEventListener(MouseEvent.MOUSE_OVER,onPicMouseOver);
			item.addEventListener(MouseEvent.MOUSE_OUT,onPicMouseOut);
			item.addEventListener(MouseEvent.MOUSE_DOWN,onPicMouseDown);
		}
		
		private function initInteractItem():void
		{
			blueRect = new UIComponent();
			redRect = new UIComponent();
			blueRect.visible = false;
			redRect.visible = false;
			
			rightArrow = new arrowButton();
			leftArrow = new arrowButton();
			rightArrow.visible = false;
			leftArrow.visible = false;
			blueRect.addChild(rightArrow);
			blueRect.addChild(leftArrow);
			rightArrow.addEventListener(MouseEvent.CLICK,onRightArrowClick);
			leftArrow.addEventListener(MouseEvent.CLICK,onLeftArrowClick);
			leftArrow.scaleX = -1;
			
			editAreaView.addEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
			editAreaView.addEventListener(MouseEvent.CLICK,onMouseClick);
			editAreaView.addEventListener(MouseEvent.MOUSE_UP,onMouseUp);
		}
		
		private function initMovePathView():void
		{			
			movePathView = new UIComponent();
			movePathView.graphics.beginFill(0x00a8ff,0.5);		
			movePathView.graphics.moveTo(0, 0);		
			movePathView.graphics.lineStyle(1, 0x0, 0.5);
			movePathView.graphics.moveTo(0,0 + gridHeight/2);
			movePathView.graphics.lineTo(0 + gridWidth/2, 0);
			movePathView.graphics.lineTo(0 + gridWidth,0 + gridHeight/2);
			movePathView.graphics.lineTo(0 + gridWidth/2,0 + gridHeight);
			movePathView.graphics.lineTo(0,0 + gridHeight/2);
			movePathView.graphics.endFill();
			movePathView.visible = false;
			movePathView.addEventListener(MouseEvent.MOUSE_DOWN,onMovePathMouseDown);
			canvas.addElement(movePathView);
		}
		
		private function showRect(pic:DisplayObject, color:String):void
		{
			var rect:UIComponent;
			if (color == "red") rect = redRect;
			else if (color == "blue") rect = blueRect;
			else return;
			rect.graphics.clear();
			rect.graphics.lineStyle(1.3,(color == "red")? 0xe00000:0x00a8ff);
			canvas.addElement(rect);
			
			if (pic is NpcRender)
			{
				var render:NpcRender = pic as NpcRender;
				rect.x = render.x + render.topLeft.x;  //render的topLeft点是render显示内容的左上角点相对于render的（0，0）点的位移，注意这里是加不是减。
				rect.y = render.y + render.topLeft.y;
				rect.graphics.drawRect(0,0,render.bottomRight.x - render.topLeft.x, render.bottomRight.y - render.topLeft.y);
				leftArrow.x = -3;
				rightArrow.x = render.bottomRight.x - render.topLeft.x+3;
				leftArrow.y = rightArrow.y = (render.bottomRight.y - render.topLeft.y)/2;
				if (color == "blue") leftArrow.visible = rightArrow.visible = true;
			}
			else
			{
				rect.x = pic.x;
				rect.y = pic.y;
				rect.graphics.drawRect(0,0,pic.width,pic.height);
				if (color == "blue") leftArrow.visible = rightArrow.visible = false;
			}
			rect.visible = true;
		}
		
		private function hideRect(color:String):void
		{
			var rect:UIComponent;
			if (color == "red") rect = redRect;
			else if (color == "blue") rect = blueRect;
			else return;
			rect.visible = false;
		}
		
		private function onPicMouseOver(evt:Event):void
		{
			if (currentLayer == "GridLayer") return;  //如果是在编辑网格层，其他层都不能编辑
			var pic:Sprite = evt.currentTarget as Sprite;
			if (pic != selectedItem && selectedOffset== null)
			{
				showRect(pic,"red");
			}
		}
		
		private function onPicMouseOut(evt:Event):void
		{
			hideRect("red");
		}
		
		private function onPicMouseDown(evt:Event):void
		{
			if (currentLayer == "GridLayer") return;  //如果是在编辑网格层，其他层都不能编辑
			var pic:Sprite = evt.currentTarget as Sprite;
			hideRect("red");
			showRect(pic,"blue");
			selectedItem = pic;
			selectedOffset = new Point(pic.mouseX,pic.mouseY); //鼠标点击的位置与图片注册点的位移
			selectedPoint = new Point(pic.x, pic.y);
		}
		
		private function onMouseWheel(evt:MouseEvent):void
		{
			if (evt.ctrlKey)
			{
				(evt.delta < 0)? currentScaleIndex>0 && currentScaleIndex-- : currentScaleIndex<zoomScale.length-1 && currentScaleIndex++;
				bg.scaleX = bg.scaleY = zoomScale[currentScaleIndex]/100;
				zoom.text = zoomScale[currentScaleIndex]+"%";
				onResize(null);
				zoom.visible = true;
				zoom.alpha = 1;
				clearTimeout(timeOutUint);
				timeOutUint = setTimeout(fadeZoomLabel,300); 
			}
		}
		
		private function onMouseDown(evt:Event):void
		{
			if (currentLayer == "GridLayer" && getLayerByName("GridLayer").mouseEnabled && getLayerByName("GridLayer").visible)
			{
				if (editAreaView.view.mouseX >= 0 && editAreaView.view.mouseX <= editAreaView.view.width && editAreaView.view.mouseY >= 0 && editAreaView.view.mouseY <= editAreaView.view.height)
				{
					drawingGrid = true;
				}
			}
		}
		
		private function onMouseUp(evt:Event):void
		{
			var cmd:Command;
			if (selectedItem) 
			{
				if (!blueRect.visible)
				{
					//说明有移动过，蓝色框消失了
					cmd = new Command(Command.MOVE_PIC);
					cmd.commandData = {layerName:selectedItem.parent.name,index:getLayerByName(selectedItem.parent.name).getChildIndex(selectedItem),x:selectedItem.x,y:selectedItem.y, oldX:selectedPoint.x, oldY:selectedPoint.y};
					dispatchCommand(cmd);
					(selectedItem.parent.name == "NPCLayer") && showMovePathView(selectedItem as NpcRender);
					//showRect要放在发送命令后面，因为这条命令会更改render的位置，而showRect是要根据render的位置来显示的。
					showRect(selectedItem, "blue");
				}
				selectedOffset = null;
			}
			if ( movePathViewDraging )
			{
				movePathView.stopDrag();
				cmd = new Command(Command.MOVE_PATH_CHANGE);
				cmd.commandData = {render:selectedItem, pathX:movePathView.x, pathY:movePathView.y, oldPathX:selectedPoint.x, oldPathY:selectedPoint.y};
				dispatchCommand(cmd);
				movePathViewDraging = false;
			}
			selectedPoint = null;
			if (currentLayer == "GridLayer" )
			{
				drawingGrid = false;
				lastGridPoint = null;
			}
		}
		
		private function onMouseMove(evt:MouseEvent):void
		{
			if (selectedOffset)
			{
				hideRect("blue");
				movePathView.visible = false;
				selectedItem.x = (canvas.mouseX - selectedOffset.x);
				selectedItem.y = (canvas.mouseY - selectedOffset.y);
			}
			if ( drawingGrid)
			{
				changeGridState(canvas.mouseX,canvas.mouseY);
			}
		}
		
		private function onMouseClick(evt:Event):void
		{
			editAreaView.setFocus(); //这样才能够接收键盘事件
			if (evt.target==canvas || evt.target== bg || evt.target==view)
			{
				selectedItem = null;
				hideRect("blue");
			}
			if (this.currentLayer == "GridLayer" && getLayerByName("GridLayer").mouseEnabled && getLayerByName("GridLayer").visible)
			{
				if (editAreaView.view.mouseX >= 0 && editAreaView.view.mouseX <= editAreaView.view.width && editAreaView.view.mouseY >= 0 && editAreaView.view.mouseY <= editAreaView.view.height)
				{
					changeGridState(canvas.mouseX,canvas.mouseY);
				}
			}
		}
		
		private function changeGridState(canvasX:int, canvasY:int):void
		{
			var gridPoint:Point = MapGridUtil.getTilePoint(this.gridWidth,this.gridHeight,canvasX,canvasY);
			if (lastGridPoint && gridPoint.equals(lastGridPoint))
			{
				return; 
			}
			else
			{
				lastGridPoint = gridPoint;
			}
			if (gridArr[gridPoint.x] && gridArr[gridPoint.x][gridPoint.y]) //判断有没有超界
			{
				var cmd:Command = new Command(Command.SET_GRID_VALUE);
				(gridArr[gridPoint.x][gridPoint.y] as Bitmap).visible = !(gridArr[gridPoint.x][gridPoint.y] as Bitmap).visible;
				cmd.commandData = {x:gridPoint.x, y:gridPoint.y, walkable:!(gridArr[gridPoint.x][gridPoint.y] as Bitmap).visible};//如果网格砖块有显示则不能行走，所以取非
				dispatchCommand(cmd);
			}
		}
		
		private function updatePicPos(layerName:String, index:int, x:int, y:int):void
		{
			var pic:Sprite = getLayerByName(layerName).getChildAt(index) as Sprite;
			pic.x = x;
			pic.y = y;
			if (selectedItem == pic)
			{
				if (selectedItem.parent.name != "NPCLayer")
				{
					blueRect.x = selectedItem.x;
					blueRect.y = selectedItem.y;
				}
				else
				{
					blueRect.x = selectedItem.x + (selectedItem as NpcRender).topLeft.x;
					blueRect.y = selectedItem.y + (selectedItem as NpcRender).topLeft.y;
					showMovePathView(selectedItem as NpcRender);
				}
				
			}
		}
		
		/*private function drawGrid(gridWidth:int, gridHeight:int, rows:int, columns:int):void
		{
			var pt:Point;
			var tmpUI:UIComponent = new UIComponent();
			var bmdata:BitmapData = new BitmapData(gridWidth,gridHeight,true,0x0); //单个不可走网格的bitmapdata,要创建完全透明的位图，fillcolor要设为非白色
			var bm:Bitmap;
			var gridLayer:UIComponent = getLayerByName("GridLayer");
			
			drawSingleGrid(tmpUI, 0, 0, gridWidth, gridHeight, false); //单个不可走网格
			bmdata.draw(tmpUI);
			gridArr = new Array();
			for(var x:int = 0;x < columns; x++)
			{
				gridArr[x] = new Array();
				for(var y:int = 0;y < rows; y++)
				{
					bm = new Bitmap(bmdata);
					pt = MapGridUtil.getPixelPoint(gridWidth, gridHeight, x, y);
					drawSingleGrid(gridLayer, pt.x - gridWidth / 2, pt.y - gridHeight / 2, gridWidth, gridHeight, true);
					bm.x = pt.x - gridWidth / 2;
					bm.y = pt.y - gridHeight / 2;
					bm.visible = false;
					gridLayer.addChild(bm);
					gridArr[x][y] = bm;
				}
			}		
			getLayerByName("GridLayer").cacheAsBitmap = true;
		}
		
		private function drawSingleGrid(sp:UIComponent, baseX:int, baseY:int, tilePixelWidth:int, tilePixelHeight:int, canWalkable:Boolean):void
		{
			var color:uint;
			
			sp.graphics.moveTo(baseX, baseY);
			
			color = (canWalkable)?0x0:0xff0000;
			
			//外框
			sp.graphics.lineStyle(1, color, 1);
			sp.graphics.moveTo(baseX,baseY + tilePixelHeight/2);
			sp.graphics.lineTo(baseX + tilePixelWidth/2, baseY);
			sp.graphics.lineTo(baseX + tilePixelWidth,baseY + tilePixelHeight/2);
			sp.graphics.lineTo(baseX + tilePixelWidth/2,baseY + tilePixelHeight);
			sp.graphics.lineTo(baseX,baseY + tilePixelHeight/2);
			if (!canWalkable)
			{
				//里框
				var hoff:Number = tilePixelHeight/4;
				var woff:Number = hoff * tilePixelWidth / tilePixelHeight;
				sp.graphics.moveTo(baseX + woff,baseY + tilePixelHeight/2);
				sp.graphics.lineTo(baseX + tilePixelWidth/2,baseY + hoff);
				sp.graphics.lineTo(baseX + tilePixelWidth-woff,baseY + tilePixelHeight/2);
				sp.graphics.lineTo(baseX + tilePixelWidth/2,baseY + tilePixelHeight-hoff);
				sp.graphics.lineTo(baseX + woff,baseY + tilePixelHeight/2);
				//交叉线
				sp.graphics.moveTo(baseX,baseY + tilePixelHeight/2);
				sp.graphics.lineTo(baseX + tilePixelWidth,baseY + tilePixelHeight/2);
				sp.graphics.moveTo(baseX + tilePixelWidth/2, baseY);
				sp.graphics.lineTo(baseX + tilePixelWidth/2,baseY + tilePixelHeight);
			}
		}*/
		
		private function onRightArrowClick(evt:Event):void
		{
			var cmd:Command = new Command(Command.NPC_TURN_RIGHT);
			cmd.commandData = {render:this.selectedItem};
			dispatchCommand(cmd);		
		}
		
		private function onLeftArrowClick(evt:Event):void
		{
			var cmd:Command = new Command(Command.NPC_TURN_LEFT);
			cmd.commandData = {render:this.selectedItem};
			dispatchCommand(cmd);
		}
		
		private function showMovePathView(npcRender:NpcRender):void
		{
			var gridPoint:Point = MapGridUtil.getTilePoint(gridWidth,gridHeight,npcRender.x,npcRender.y);
			var pixelPoint:Point = MapGridUtil.getPixelPoint(gridWidth,gridHeight,gridPoint.x + npcRender.movePathOffset.x,gridPoint.y + npcRender.movePathOffset.y);
			movePathView.x = pixelPoint.x - gridWidth/2;
			movePathView.y = pixelPoint.y - gridHeight/2;
			movePathView.visible = true;
		}
		
		private function onPropertyChange(evt:PropertyChangeEvent):void
		{
			switch (evt.property)
			{
				case "selectedItem":
					if (evt.newValue is NpcRender)
					{
						showMovePathView(evt.newValue as NpcRender);
					}
					else 
					{
						movePathView.visible = false;
					}
					break;
			}
		}
		
		private function onMovePathMouseDown(evt:MouseEvent):void
		{
			selectedPoint = new Point(movePathView.x,movePathView.y);
			movePathView.startDrag();
			movePathViewDraging = true;
		}
		
		private function onKeyBoard(evt:KeyboardEvent):void
		{
			switch (evt.keyCode)
			{
				case 46:
					//按下delete
					if (selectedItem)
					{
						removeSceneItem(selectedItem);
					}
					break;
				default:
					break;
			}
		}
		
		private function removeSceneItem(item:DisplayObject):void
		{
			var cmd:Command = new Command(Command.REMOVE_SCENE_ITEM);
			cmd.commandData = {layerName:item.parent.name, 
				          	   index:item.parent.getChildIndex(item), 
							   picName:item.name, 
							   x:item.x, 
							   y:item.y};
			if (item is NpcRender)
			{
				cmd.commandData.mpOffsetX = (item as NpcRender).movePathOffset.x;
				cmd.commandData.mpOffsetY = (item as NpcRender).movePathOffset.y; 
				cmd.commandData.direction = (item as NpcRender).idleIndex;
			}
			dispatchCommand(cmd);
		}
		
		private function onDragEnter(evt:DragEvent):void
		{
			if (evt.dragInitiator is Tree)
			{
				DragManager.acceptDragDrop(evt.target as UIComponent);
			}
		}
		
		private function onDragDrop(evt:DragEvent):void
		{
			if (evt.dragInitiator is Tree)
			{
				evt.preventDefault();
				var arr:Array = evt.dragSource.dataForFormat("treeItems") as Array;
				LibraryProxy.addToScene(this, arr,currentLayer, canvas.mouseX,canvas.mouseY);
			}
		}
				
		private function updateItemConfig(msg:UpdateMsg):void
		{
			var layer:UIComponent = getLayerByName(msg.msgData.layerName);
			var target:DisplayObjectContainer;
			if (msg.msgData.index == -1)
			{
				//设置层的属性
				target = layer;
			}
			else
			{
				//设置层里一个对象的属性
				target = layer.getChildAt(msg.msgData.index) as DisplayObjectContainer;
			}
			if (msg.msgData.checkBoxId == "canSee")
			{
				target.visible = msg.msgData.value;
			}
			else
			{
				//locked?
				target.mouseEnabled = !msg.msgData.value;
				target.mouseChildren = !msg.msgData.value;
			}
		}
		
		private function setSelectedLayer(msg:UpdateMsg):void
		{
			currentLayer = msg.msgData.layerName;
			if (msg.msgData.index != -1)
			{
				selectedItem = getLayerByName(msg.msgData.layerName).getChildAt(msg.msgData.index) as Sprite;
				showRect(selectedItem,"blue");
				if (selectedItem is NpcRender)
				{
					showMovePathView(selectedItem as NpcRender);
				}
			}
		}
		
		private function fadeZoomLabel():void
		{
			var value:Number = zoom.alpha;
			value -= 0.1;
			if (value <= 0)
			{
				zoom.visible = false;
			}
			else
			{
				zoom.alpha = value;
				clearTimeout(timeOutUint);
				timeOutUint = setTimeout(fadeZoomLabel,100); //100ms
			}
			
		}
		
		private function moveItemToNewLayer(oldLayerName:String, oldIndex:int, newLayerName:String, newIndex:int):void
		{
			var tempUI:UIComponent = getLayerByName(oldLayerName);
			var item:DisplayObject = tempUI.getChildAt(oldIndex);
			tempUI.removeChildAt(oldIndex);

			tempUI = getLayerByName(newLayerName);
			tempUI.addChildAt(item, (newIndex <= tempUI.numChildren)? newIndex: tempUI.numChildren);
		}
	}
}