package tx.sce.proxy
{
	import tx.sce.command.Command;
	import tx.sce.tools.MapGridUtil;
	import tx.sce.updateMsg.UpdateMsg;
	import tx.sce.view.ItemEditView;
	import tx.sce.view.NpcRender;
	
	import flash.display.Bitmap;
	import flash.display.DisplayObject;
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	import mx.controls.Alert;
	import mx.core.UIComponent;
	import mx.events.CloseEvent;
	import mx.events.FlexEvent;
	import mx.managers.PopUpManager;
	
	import spark.components.Button;

	public class ItemEditProxy extends Proxy
	{
		private var itemEditView:ItemEditView;
		private var pic:DisplayObject;
		private var xml:XML;
		private const gap:int = 30;
		private var leftArrow:arrowButton;
		private var rightArrow:arrowButton;
		private var gridWidth:int;
		private var gridHeight:int;
		private var gridRows:int;
		private var gridColumns:int;
		private var gridArr:Array;
		private var obstacleData:Array; //保存npc朝不同方向时的障碍点，是一个3维数组，第一维是方向，第二、三维是障碍点的坐标
		private var lastGridPoint:Point;
		private var drawingGrid:Boolean;
		private var dirty:Boolean;
		
		public function ItemEditProxy(winapp:MapEditor)
		{
			app = winapp;
			itemEditView = new ItemEditView();
			itemEditView.addEventListener(CloseEvent.CLOSE,onClose);
			itemEditView.addEventListener(FlexEvent.SHOW,onShowView);
			itemEditView.addEventListener(FlexEvent.CREATION_COMPLETE,onCreationComplete);
			
			drawingGrid = false;
		}
		
		protected function onCreationComplete(event:FlexEvent):void
		{
			// TODO Auto-generated method stub
			var tempUi:UIComponent;
			
			leftArrow = new arrowButton();
			rightArrow = new arrowButton();
			leftArrow.scaleX = -1;
			
			tempUi = new UIComponent();
			tempUi.addChild(leftArrow);
			itemEditView.smallCanvas.addElement(tempUi);
			tempUi = new UIComponent();
			tempUi.addChild(rightArrow);
			itemEditView.smallCanvas.addElement(tempUi);
			leftArrow.visible = false;
			rightArrow.visible = false;
			
			leftArrow.addEventListener(MouseEvent.CLICK,onLeftArrow);
			rightArrow.addEventListener(MouseEvent.CLICK,onRightArrow);
			
			itemEditView.addEventListener(MouseEvent.CLICK,onMouseClick);
			itemEditView.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
			itemEditView.addEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
			itemEditView.addEventListener(MouseEvent.MOUSE_UP,onMouseUp);
			
			itemEditView.okButton.addEventListener(MouseEvent.CLICK,onOkButton);
			itemEditView.cancelButton.addEventListener(MouseEvent.CLICK,onCancelButton);
		}
		
		protected function onShowView(event:FlexEvent):void
		{
			// TODO Auto-generated method stub
			//删除原有图片，添加当前图片
			while (itemEditView.editImg.numChildren > 0)
			{
				itemEditView.editImg.removeChildAt(0);
			}
			itemEditView.editImg.addChild(pic);
			
			//根据图片设置底图大小，设置图片位置
			itemEditView.smallCanvas.width = (pic.width + gap > itemEditView.view.width)? pic.width + gap : itemEditView.view.width;
			itemEditView.smallCanvas.height = (pic.height + gap > itemEditView.view.height)? pic.height + gap : itemEditView.view.height;
			itemEditView.smallCanvas.graphics.beginFill(0xffffff,1);
			itemEditView.smallCanvas.graphics.drawRect(0,0,itemEditView.smallCanvas.width,itemEditView.smallCanvas.height);
			itemEditView.smallCanvas.graphics.endFill();
			
			pic.x = itemEditView.smallCanvas.width/2 - pic.width/2;
			pic.y = itemEditView.smallCanvas.height/2 - pic.height/2;
			if (pic is NpcRender) adjustPlace(pic as NpcRender);
			
			//画网格
			gridRows = itemEditView.smallCanvas.height / gridHeight;
			if (itemEditView.smallCanvas.height % gridHeight > 0) 
			{
				gridRows++;
			}
			gridRows = gridRows*2-1; //本来是奇数层，现在加上偶数层，偶数层的数目是奇数层的数目-1.
			gridColumns = itemEditView.smallCanvas.width / gridWidth;
			if (itemEditView.smallCanvas.width % gridWidth > 0) 
			{
				gridColumns++;
			}
			
			gridArr = MapGridUtil.drawGrid(gridWidth, gridHeight, gridRows, gridColumns, itemEditView.gridLayer);
			//设置网格障碍点
			readObstacleData(xml);
			setGridArrValue(0);
			
			//根据是否npc来显示旋转箭头
			if (pic is NpcRender)  
			{
				leftArrow.x = (pic.x + (pic as NpcRender).topLeft.x) - 5;
				leftArrow.y = (pic.y + (pic as NpcRender).topLeft.y) + ((pic as NpcRender).bottomRight.y - (pic as NpcRender).topLeft.y)/2;
				
				rightArrow.x = (pic.x + (pic as NpcRender).topLeft.x) + ((pic as NpcRender).bottomRight.x - (pic as NpcRender).topLeft.x) + 5;
				rightArrow.y = (pic.y + (pic as NpcRender).topLeft.y) + ((pic as NpcRender).bottomRight.y - (pic as NpcRender).topLeft.y)/2;
				
				leftArrow.visible = true;
				rightArrow.visible = true;
				
				itemEditView.roleId.enabled = true;
				itemEditView.roleId.text = xml.@roleId;
			}
			else
			{
				leftArrow.visible = false;
				rightArrow.visible = false;
				
				itemEditView.roleId.enabled = false;
			}
			
			dirty = false;
		}
		
		override protected function handleMsg(msg:UpdateMsg):void
		{
			switch (msg.type)
			{
				case UpdateMsg.EDIT_LIBRARY_ITEM:
					pic = msg.msgData.pic;
					xml = msg.msgData.xml;
					if (pic is Sprite) pic = (pic as Sprite).getChildAt(0);
					gridWidth = msg.msgData.gridWidth;
					gridHeight = msg.msgData.gridHeight;
					PopUpManager.addPopUp(itemEditView,app,true);
					PopUpManager.centerPopUp(itemEditView);
					break;
			}
		}
		
		private function onClose(evt:CloseEvent):void
		{
			PopUpManager.removePopUp(itemEditView);
		}
		
		private function onLeftArrow(evt:MouseEvent):void
		{
			(pic as NpcRender).turn("left");
			setGridArrValue((pic as NpcRender).idleIndex);
		}
		
		private function onRightArrow(evt:MouseEvent):void
		{
			(pic as NpcRender).turn("right");
			setGridArrValue((pic as NpcRender).idleIndex);
		}
		
		private function onMouseClick(evt:MouseEvent):void
		{
			if (itemEditView.view.mouseX >= 0 && itemEditView.view.mouseX <= itemEditView.view.width && itemEditView.view.mouseY >= 0 && itemEditView.view.mouseY <= itemEditView.view.height)
			{
				if (evt.target is arrowButton) return;
				changeGridState(itemEditView.smallCanvas.mouseX, itemEditView.smallCanvas.mouseY);
			}
		}
		
		private function onMouseDown(evt:MouseEvent):void
		{
			if (itemEditView.view.mouseX >= 0 && itemEditView.view.mouseX <= itemEditView.view.width && itemEditView.view.mouseY >= 0 && itemEditView.view.mouseY <= itemEditView.view.height)
			{
				if (evt.target is arrowButton) return;  //如果点击的是Npc的选择箭头
				drawingGrid = true;
			}
		}
		
		private function onMouseMove(evt:MouseEvent):void
		{
			if (drawingGrid)
			{
				changeGridState(itemEditView.smallCanvas.mouseX, itemEditView.smallCanvas.mouseY);
			}
		}
		
		private function onMouseUp(evt:MouseEvent):void
		{
			drawingGrid = false;
			lastGridPoint = null;
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
				(gridArr[gridPoint.x][gridPoint.y] as Bitmap).visible = !(gridArr[gridPoint.x][gridPoint.y] as Bitmap).visible;
				obstacleData[((pic is NpcRender)? (pic as NpcRender).idleIndex : 0)][gridPoint.x][gridPoint.y] = (gridArr[gridPoint.x][gridPoint.y] as Bitmap).visible;
				dirty = true;
			}
		}
		
		private function adjustPlace(render:NpcRender):void
		{
			render.x = render.x - render.topLeft.x;
			render.y = render.y - render.topLeft.y;
			//如果是NPC，则它的坐标只能是某个网格的中心点
			MapGridUtil.adjustToGridCenter(gridWidth, gridHeight, render);
		}
		
		private function onOkButton(evt:MouseEvent):void
		{
			//delete xml.obstacle;
			if (!dirty && itemEditView.roleId.text == xml.@roleId)
			{
				PopUpManager.removePopUp(itemEditView);
				return;
			}
			var tmpXml:XML = new XML(xml.toXMLString());
			delete tmpXml.obstacle;
			Alert.show("是否更新场景中的已有元素？", "编辑完成",Alert.YES|Alert.NO|Alert.CANCEL,itemEditView, onSelected);
			
			function onSelected(evt:CloseEvent):void
			{
				var cmd:Command;
				for (var i:int = 0; i <= ((pic is NpcRender)? (pic as NpcRender).totalIndex : 0); i++ )
				{
					for (var j:int = 0; j < gridColumns; j++)
					{
						for (var k:int = 0; k < gridRows; k++)
						{
							if (obstacleData[i][j][k] == true)
							{
								var pixelPoint:Point = MapGridUtil.getPixelPoint(gridWidth, gridHeight, j, k);
								//xml.appendChild(<obstacle index={i} offsetX={pixelPoint.x - pic.x} offsetY={pixelPoint.y - pic.y}/>);
								tmpXml.appendChild(<obstacle index={i} offsetX={pixelPoint.x - pic.x} offsetY={pixelPoint.y - pic.y}/>);
							}
						}
					}
				}
				(pic is NpcRender) && (tmpXml.@roleId = itemEditView.roleId.text);
				cmd = new Command(Command.SET_PIC_OBSTACLES,null,false);
				if (evt.detail == Alert.YES)
				{
					cmd.commandData = {newXml:tmpXml, updateExist:true};
				}
				else if (evt.detail == Alert.NO)
				{
					cmd.commandData = {newXml:tmpXml, updateExist:false};
				}
				else if (evt.detail == Alert.CANCEL)
				{
					return;
				}
				dispatchCommand(cmd);
				PopUpManager.removePopUp(itemEditView);
			}
		}
		
		private function onCancelButton(evt:MouseEvent):void
		{
			PopUpManager.removePopUp(itemEditView);
		}
		
		private function readObstacleData(xml:XML):void
		{
			var obstacleList:XMLList = xml.obstacle;
			
			obstacleData = new Array();
			for (var i:int = 0; i <= ((pic is NpcRender)? (pic as NpcRender).totalIndex : 0); i++ )
			{
				obstacleData[i] = new Array();
				for (var j:int = 0; j < gridColumns; j++)
				{
					obstacleData[i][j] = new Array();
					for (var k:int = 0; k < gridRows; k++)
						obstacleData[i][j][k] = false;
				}
			}
			
			for each (var obstacle:XML in obstacleList)
			{
				var obstacleGridPoint:Point = MapGridUtil.getTilePoint(gridWidth, gridHeight, pic.x + int(obstacle.@offsetX), pic.y + int(obstacle.@offsetY));
				obstacleData[obstacle.@index][obstacleGridPoint.x][obstacleGridPoint.y] = true;
			}
		}
		
		private function setGridArrValue(index:int):void
		{
			for (var j:int = 0; j < gridColumns; j++)
			{
				for (var k:int = 0; k < gridRows; k++)
					(gridArr[j][k] as Bitmap).visible = obstacleData[index][j][k];
			}
		}
	}
}