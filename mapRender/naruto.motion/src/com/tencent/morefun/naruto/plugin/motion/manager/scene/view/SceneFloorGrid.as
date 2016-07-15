package com.tencent.morefun.naruto.plugin.motion.manager.scene.view
{

	import com.greensock.TweenLite;
	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.def.NinjaDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.VirtualNinjaMouseEvent;
	import com.tencent.morefun.naruto.plugin.motion.notice.ChooseNinjaNotice;
	
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import motionUI.FloorGridUI;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class SceneFloorGrid extends Sprite
	{
		private var ui:FloorGridUI;
		private var currType:int = 0;
		private var gridOverPos:int = -1;
		private var ninjaOverPos:int = -1;
		private var selectedPos:int = -1;
		
		public function SceneFloorGrid()
		{
			super();
		}
		
		private function initUI():void
		{
			ui = new FloorGridUI();
			addChild(ui);
			ui.gotoAndStop(1);
			
			(ui as MovieClip).mouseEnabled = false;
			ui.left.mouseEnabled = false;
			ui.right.mouseEnabled = false;
			ui.left["grids"].mouseEnabled = false;
			ui.right["grids"].mouseEnabled = false;
			
			gridsBackground.mouseEnabled = gridsBackground.mouseChildren = false;
			
			gridsBackground.left["overmc"].mouseEnabled=false;
			gridsBackground.left["overmc"].mouseChildren = false;
			gridsBackground.left["overmc"].gotoAndStop(1);
			gridsBackground.left["overmc"].visible = false;
			
			gridsBackground.right["overmc"].mouseEnabled=false;
			gridsBackground.right["overmc"].mouseChildren = false;
			gridsBackground.right["overmc"].gotoAndStop(1);
			gridsBackground.right["overmc"].visible = false;
			
			for(var i:int=0;i<27;i++)
			{
				var leftGrid:Sprite = ui.left["grids"]["g"+i];
				//				leftGrid.mouseEnabled = leftGrid.mouseChildren = false;
				leftGrid.addEventListener(MouseEvent.ROLL_OUT,onMouseEvent);
				leftGrid.addEventListener(MouseEvent.ROLL_OVER,onMouseEvent);
				
				var rightGrid:Sprite = ui.right["grids"]["g"+i];
				//				rightGrid.mouseEnabled = rightGrid.mouseChildren = false;
				rightGrid.addEventListener(MouseEvent.ROLL_OUT,onMouseEvent);
				rightGrid.addEventListener(MouseEvent.ROLL_OVER,onMouseEvent);
			}
			
			//			ui.left["grids"].alpha = 0;
			//			ui.right["grids"].alpha = 0;
			gridsBackground["left"].alpha = 0;
			gridsBackground["right"].alpha = 0;
			
			addEventListener(Event.ADDED_TO_STAGE, onAddToStage);
			addEventListener(Event.REMOVED_FROM_STAGE, onRemoveFromStage);
		}
		
		private var m_parent:DisplayObjectContainer;
		private function onAddToStage(evt:Event):void
		{
			m_parent = parent;
			removeEventListener(Event.ADDED_TO_STAGE, onAddToStage);
			m_parent.addEventListener(MouseEvent.CLICK, onMouseClick);
		}
		
		private function onRemoveFromStage(evt:Event):void
		{
			removeEventListener(Event.REMOVED_FROM_STAGE, onRemoveFromStage);
			if(m_parent)
			{
				m_parent.removeEventListener(MouseEvent.CLICK, onMouseClick);
				m_parent = null;
			}
		}
		
		public function acceptMouseEvent(pos:int, left:Boolean):void
		{
			if(left)
			{
				(ui.left["grids"]["g"+pos] as Sprite).mouseEnabled = (ui.right["grids"]["g"+pos] as Sprite).mouseChildren = true;
			}
			else
			{
				(ui.right["grids"]["g"+pos] as Sprite).mouseEnabled = (ui.right["grids"]["g"+pos] as Sprite).mouseChildren = true;
			}
		}
		
		public function forbidMouseEvent(pos:int, left:Boolean):void
		{
			if(left)
			{
				(ui.left["grids"]["g"+pos] as Sprite).mouseEnabled = (ui.right["grids"]["g"+pos] as Sprite).mouseChildren = false;
			}
			else
			{
				(ui.right["grids"]["g"+pos] as Sprite).mouseEnabled = (ui.right["grids"]["g"+pos] as Sprite).mouseChildren = false;
			}
		}
		
		private function onMouseClick(evt:MouseEvent):void
		{
			var ninja:Ninja;
			var isLeft:Boolean;
			var target:DisplayObject;
			var overPos:int;
			
			onCancelSelected(null);
			
			target = evt.target as DisplayObject;
			if(gridOverPos == -1 && ninjaOverPos == -1)
			{
				currType = -1;
				
				hideAllGrid();
			}
			else
			{
				if(gridOverPos != -1)
				{
					overPos = gridOverPos;
				}
				
				if(ninjaOverPos != -1)
				{
					overPos = ninjaOverPos;
				}
				
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(overPos);
				isLeft = (ninja as Ninja).data.areaPositions[0] < 100;
				
				hideAllGrid();
				showGrid(isLeft);
				selectedmc(overPos,isLeft,currType);
				cancelOvermc();
				
				new ChooseNinjaNotice(overPos).send();
			}
		}
		
		public function onCancelSelected(event:MouseEvent):void
		{
			var ninja:Ninja;
			
			if(selectedPos == -1)
			{
				return ;
			}
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(selectedPos);
			(ninja as Ninja).dispatchEvent(new VirtualNinjaMouseEvent(VirtualNinjaMouseEvent.MOUSE_UNSELECTED));
			
			currType = -1;
			selectedPos = -1;
			
			hideGrid(true);
			hideGrid(false);
		}
		
		public function hideAllGrid():void
		{
			TweenLite.killTweensOf(gridsBackground["left"]);
			TweenLite.to(gridsBackground["left"], 0.5, {alpha:0});
			
			TweenLite.killTweensOf(gridsBackground["right"]);
			TweenLite.to(gridsBackground["right"], 0.5, {alpha:0});
		}
		
		public function hideGrid(left:Boolean):void
		{
			if(left)
			{
				TweenLite.killTweensOf(gridsBackground["left"]);
				TweenLite.to(gridsBackground["left"], 0.5, {alpha:0});
			}
			else
			{
				TweenLite.killTweensOf(gridsBackground["right"]);
				TweenLite.to(gridsBackground["right"], 0.5, {alpha:0});
			}
		}
		
		public function showGrid(left:Boolean):void
		{
			if(left)
			{
				TweenLite.killTweensOf(gridsBackground["left"]);
				TweenLite.to(gridsBackground["left"], 0.5, {alpha:1});
			}
			else
			{
				TweenLite.killTweensOf(gridsBackground["right"]);
				TweenLite.to(gridsBackground["right"], 0.5, {alpha:1});
			}
		}
		
		protected function onMouseEvent(event:MouseEvent):void
		{
			var g:Sprite = event.currentTarget as Sprite;
			var isLeft:Boolean = g.parent.parent.name=="left";
			var pos:int = int(g.name.substr(1));
			
			pos = posTransform(pos, isLeft, false);
			
			if(event.type == MouseEvent.ROLL_OVER)
			{
				rollOverGrids(pos, true, true);
			}
			else if(event.type == MouseEvent.ROLL_OUT)
			{
				rollOutGrids(pos, true);
			}
		}
		
		public function rollOutGrids(pos:int, gridRoll:Boolean = false, mirrorCheck:Boolean = false):void
		{
			var ninja:Ninja;
			var isLeft:Boolean;
			
			if(mirrorCheck)
			{
				pos = mirrorPos(pos, mirror);
			}
			isLeft = pos < 100;
			cancelOvermc();
			
			if(getSelectedPos() == -1)
			{
				this.hideGrid(isLeft);
			}
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByArea(pos);
			if(ninja)
			{
				ninja.hideHpText();
			}
			if(gridRoll)
			{
				gridOverPos = -1;
			}
			else
			{
				ninjaOverPos = -1;
			}
			currType = -1;
		}
		
		public function rollOverGrids(pos:int, showGrids:Boolean, gridRoll:Boolean = false, mirrorCheck:Boolean = false):void
		{
			var battleNinja:Ninja;
			var isLeft:Boolean;
			var ninjaAreaPos:int;
			
			if(mirrorCheck)
			{
				pos = mirrorPos(pos, mirror);
			}
			
			isLeft = pos < 100;
			battleNinja = FightManagerCenter.ninjaMgr.getNinjaByArea(pos);
			if(battleNinja==null)return;
			pos = mirrorPos(battleNinja.data.pos, mirror);
			var type:int = 1;
			if(battleNinja.cfg.cfgInfo.type == NinjaDef.TYPE_CONTRACT_PET)
			{
				type = 3;//召唤兽
			}
			else if(battleNinja.cfg.resCfgInfo.area.x == 0 && battleNinja.cfg.resCfgInfo.area.y == 0)
			{
				type = 1;
			}else if(battleNinja.cfg.resCfgInfo.area.x == 1 && battleNinja.cfg.resCfgInfo.area.y == 0)
			{
				type = 2;
			}else if(battleNinja.cfg.resCfgInfo.area.x == 2 && battleNinja.cfg.resCfgInfo.area.y == 2)
			{
				type = 4;
			}else if(battleNinja.cfg.resCfgInfo.area.x == 1 && battleNinja.cfg.resCfgInfo.area.y == 1)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4262_0")+battleNinja.cfg.resCfgInfo.area.x+"y:"+battleNinja.cfg.resCfgInfo.area.y+I18n.lang("as_motion_1451031573_4262_1"));
			}else
			{
				throw new Error(I18n.lang("as_motion_1451031573_4263_0")+battleNinja.cfg.resCfgInfo.area.x+"y:"+battleNinja.cfg.resCfgInfo.area.y+I18n.lang("as_motion_1451031573_4263_1"));
			}
			
			ninjaAreaPos = (battleNinja as Ninja).data.pos;
			
			if(gridRoll)
			{
				gridOverPos = (battleNinja as Ninja).data.pos;
			}
			else
			{
				ninjaOverPos = (battleNinja as Ninja).data.pos;
			}
			
			if(showGrids){showGrid(isLeft);}
			if(canSelect(pos, type))
			{
				if(showGrids){overmc(pos,isLeft,type)};
			}
			
			battleNinja.showText();
			
			//			currType = type;
		}
		
		private function canSelect(pos:int, type:int):Boolean
		{
			if(isSelectedmc(pos, type))
			{
				return false;
			}
			
			return true;
		}
		
		private function selectedmc(pos:int,isLeft:Boolean,type:int):void
		{
			selectedPos = pos;
			currType = type;
			
			var ninja:Ninja;
			var dir1:String = isLeft?"left":"right";
			var dir2:String = isLeft?"right":"left";
			
			logger.output("[SceneManager]", "mirror", mirror, "selectedPos", selectedPos);
			
			ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(selectedPos);
			(ninja as Ninja).dispatchEvent(new VirtualNinjaMouseEvent(VirtualNinjaMouseEvent.MOUSE_SELECTED));
		}
		
		private function isSelectedmc(pos:int, type:int):Boolean
		{
			var cp:int = pos;
			cp = mirrorPos(cp, mirror);
			
			if(type == 1)
			{
				return cp == selectedPos;
			}else if(type == 2)
			{
				return cp == selectedPos || cp == selectedPos+1;
			}else if(type == 3)
			{
				return selectedPos != -1 && (selectedPos < 100) == (cp < 100);
			}else if(type == 4)
			{
				return cp == selectedPos || cp == selectedPos+1 || cp == selectedPos+3 || cp == selectedPos+4;
			}
			return false;
		}
		
		private function overmc(pos:int,isLeft:Boolean,type:int):void
		{
			var gridPos:int;
			var dir1:String = isLeft?"left":"right";
			var dir2:String = isLeft?"right":"left";
			
			gridPos = pos;
			if(!isLeft)
			{
				gridPos = gridPos - 100;
			}
			
			if(type == 3)
			{
				gridPos = 18;
			}
			
			gridsBackground[dir1]["overmc"].gotoAndStop(type);
			//			trace(ui[dir1]["overmc"].x, ui[dir1]["grids"]["g"+pos].x, ui[dir1]["grids"]["g"+pos].width/2);
			gridsBackground[dir1]["overmc"].x = ui[dir1]["grids"]["g"+gridPos].x + ui[dir1]["grids"]["g"+gridPos].width/2;
			gridsBackground[dir1]["overmc"].y = ui[dir1]["grids"]["g"+gridPos].y + ui[dir1]["grids"]["g"+gridPos].height/2;
			gridsBackground[dir1]["overmc"].visible = true;
			var scale:Number = 1 + ((int(gridPos/3)+3)%9)*0.044;
			gridsBackground[dir1]["overmc"].scaleX = gridsBackground[dir1]["overmc"].scaleY = scale;
			
			gridsBackground[dir2]["overmc"].gotoAndStop(1);
			gridsBackground[dir2]["overmc"].visible = false;
		}
		
		private function cancelOvermc():void
		{
			gridsBackground.left["overmc"].gotoAndStop(1);
			gridsBackground.left["overmc"].visible = false;
			gridsBackground.right["overmc"].gotoAndStop(1);
			gridsBackground.right["overmc"].visible = false;
		}
		
		public function getSelectedPos():int
		{
			return selectedPos;
		}
		
		public function getGridOverPos():int
		{
			return gridOverPos;
		}
		
		public function setNinjaOverPos(value:int):void
		{
			ninjaOverPos = value;
		}
		
		public function getNinjaOverPos():int
		{
			return ninjaOverPos;
		}
		
		public function get gridsBackground():MovieClip
		{
			return ui["gridsBackground"];
		}
		
		private var mirror:Boolean;
		public function show(mirror:Boolean):void
		{
			if(ui == null)
			{
				initUI();
			}
			
			this.mirror = mirror;
			//			if(mirror)
			//			{
			//				ui.gotoAndStop(2);
			//			}else
			//			{
			//				ui.gotoAndStop(1);
			//			}
		}
		
		private function posTransform(pos:int, isLeft:Boolean, mirror:Boolean):int
		{
			if(!isLeft && !mirror)
			{
				return pos + 100;
			}
			
			if(isLeft && mirror)
			{
				return pos + 100;
			}
			
			return pos;
		}
		
		private function mirrorPos(pos:int, mirror:Boolean):int
		{
			if(mirror)
			{
				if(pos < 100)
				{
					return pos + 100;
				}
				else
				{
					return pos - 100
				}
			}
			
			return pos;
		}
		
		public function dispose():void
		{
			if(stage){stage.removeEventListener(MouseEvent.CLICK, onMouseClick)};
			if(ui == null){return ;}
			
			for(var i:int=0;i<27;i++)
			{
				var leftGrid:Sprite = ui.left["grids"]["g"+i];
				leftGrid.removeEventListener(MouseEvent.ROLL_OUT,onMouseEvent);
				leftGrid.removeEventListener(MouseEvent.ROLL_OVER,onMouseEvent);
				
				var rightGrid:Sprite = ui.right["grids"]["g"+i];
				rightGrid.removeEventListener(MouseEvent.ROLL_OUT,onMouseEvent);
				rightGrid.removeEventListener(MouseEvent.ROLL_OVER,onMouseEvent);
			}
		}
	
															
		public function autoSetNull():void
		{

			ui = null;
			m_parent = null;
		}
	}
}