package com.tencent.morefun.naruto.plugin.motion.manager.scene
{

	import com.greensock.plugins.AutoAlphaPlugin;
	import com.greensock.plugins.TweenPlugin;
	import com.tencent.morefun.framework.net.LoadManager;
	import com.tencent.morefun.framework.net.def.LoaderDef;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent;
	import com.tencent.morefun.naruto.plugin.exui.base.Image;
	import com.tencent.morefun.naruto.plugin.motion.IMotionNotifyReceiver;
	import com.tencent.morefun.naruto.plugin.motion.MotionLogger;
	import com.tencent.morefun.naruto.plugin.motion.MotionNotifyCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.view.Effect;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.event.VirtualNinjaMouseEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.view.BaseSceneNinjaUI;
	import com.tencent.morefun.naruto.plugin.motion.manager.res.data.MMEAssetsProvider;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.SceneInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.data.SceneItem;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.event.SceneEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.view.BaseItemSceneUI;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.view.SceneFloorGrid;
	import com.tencent.morefun.naruto.plugin.motion.notice.AddSceneItemUINotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.AddSceneNinjaUINotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.PlaySoundNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.RemoveSceneItemUINotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.RemoveSceneNinjaUINotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	import com.tencent.morefun.naruto.plugin.ui.util.TweenManager;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	import flash.display.BitmapData;
	
	import flash.display.Bitmap;
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.utils.Dictionary;
	import flash.utils.setTimeout;
	
	import avmplus.getQualifiedClassName;
	
	import sound.commands.PlayUISoundCommand;
	import sound.def.UISoundDef;

	public class SceneManager extends Sprite implements IMotionNotifyReceiver
	{
		private var _missionFun:Function;
		private var _refurbishTime:int = 100;
		private var	_resMap:Dictionary;
		
		private var _itemDisplayList:Array = [];
		private var _itemArr:Array = [];
		private var _ui1Display:Array = [];
		private var _ui2Display:Array = [];
		
		private var _overTextRender:MmeAssetRender;
		
		private var ninjaUILayer:Sprite;
		private var itemUILayer:Sprite;
		private var _blackMask:Sprite;
		private var _colorMask:Sprite;
		private var _whiteMask:Sprite;
		private var _item:Sprite;
		private var _grid:SceneFloorGrid;
		private var _gridBackground:Sprite;
		private var _background:Sprite;
		/**
		 * 结界
		 */
		private var _enchantment:Image;
		private var _environmentEffect:MmeAssetRender;
		
		private var _backgroundImage:Image;
		private var _ninjaBackgroundImage:Image;
		
		private var _content:Sprite;
		
		public var effect:Effect;
		public var faceEffect:Effect;
		
		
		private var _canvas:BitmapData;
		
		public function SceneManager()
		{
			TweenPlugin.activate([AutoAlphaPlugin]);
			
			var uiContainer:Sprite;
			
			uiContainer = new Sprite();
			_content = new Sprite();
			ninjaUILayer = new Sprite();
			itemUILayer = new Sprite();
			_blackMask = new Sprite();
			_colorMask = new Sprite();
			_whiteMask = new Sprite();
			_item = new Sprite();
			_background = new Sprite();	
			_gridBackground = new Sprite();
			
			_backgroundImage = new Image();
			_enchantment = new Image();
			_ninjaBackgroundImage = new Image();
			
			_grid = new SceneFloorGrid();
			effect = new Effect();
			faceEffect = new Effect();
			faceEffect.setCentreLayer(uiContainer);
			
			_overTextRender = new MmeAssetRender(MMEAssetsProvider.asstets);
			_overTextRender.setFrameRate(24);
			_overTextRender.setLoop(false);
			
			_environmentEffect = new MmeAssetRender(MMEAssetsProvider.asstets);
			_environmentEffect.setLoop(true);
			
			effect.setCentreLayer(_item);
			_item.addChild(_whiteMask);
			_item.addChild(_overTextRender);
			
			uiContainer.addChild(effect);
			uiContainer.addChild(ninjaUILayer);
			uiContainer.addChild(itemUILayer);
			
			this.addChild(_content);
			_content.addChild(_background);
			_content.addChild(_backgroundImage);
			_content.addChild(_enchantment);
			_content.addChild(_ninjaBackgroundImage);
			_content.addChild(_gridBackground);
			_content.addChild(_environmentEffect);
			_content.addChild(_blackMask);
			_content.addChild(_colorMask);
//			_content.addChild(_whiteMask);
//			_content.addChild(_overTextRender);
			_content.addChild(faceEffect);
			_content.addChild(_grid);
			_blackMask.alpha = 0;
			_whiteMask.alpha = 0;
			
			_overTextRender.visible = false;
			
			TimerProvider.addTimeTask(_refurbishTime, relayout);
			 
			_blackMask.mouseEnabled = _blackMask.mouseChildren = false;
			_whiteMask.mouseEnabled = _whiteMask.mouseChildren = false;
			_overTextRender.mouseEnabled = _overTextRender.mouseChildren = false;
			_grid.mouseEnabled = false;
			effect.mouseEnabled =  false;
			faceEffect.mouseEnabled = false;
			//			_item.mouseEnabled = _item.mouseChildren = false;
			ninjaUILayer.mouseEnabled = ninjaUILayer.mouseChildren = false;
			itemUILayer.mouseEnabled = itemUILayer.mouseChildren = false;
			_gridBackground.mouseEnabled = _gridBackground.mouseChildren = false;
			_enchantment.addEventListener(Event.COMPLETE, onEnchantmentComplete);
			_environmentEffect.addEventListener(MmeAssetRenderEvent.READY,onEnvironmentReady);
			
			MotionNotifyCenter.add(this);
			
			// 侦听flash导出SWF特效事件
			addEventListener("fla.sound", effectSoundHandler);
			
			addEventListener(Event.ENTER_FRAME, onHitTestEnterFrame);
			
			
			//
			//_canvas = new BitmapData(1300, 800, true, 0);
			//this.addChild(new Bitmap(_canvas));
			//addEventListener(Event.ENTER_FRAME, drawScene);
			
		}
		/*
		private function drawScene(e:Event):void 
		{
			_canvas.fillRect(_canvas.rect, 0x0);
			_canvas.draw(_content);
		}*/
		
		private var lastGridOverItem:Ninja;
		private var lastNinjaOverItem:Ninja;
		private var objectPoints:Point = new Point();
		private function onHitTestEnterFrame(evt:Event):void
		{
			var curGridOverPos:int;
			
			if(!stage)
			{
				return ;
			}
			
			curGridOverPos = _grid.getGridOverPos();
			if(lastGridOverItem)
			{
				if(lastGridOverItem.data.pos == curGridOverPos)
				{
					return ;
				}
				
				_grid.rollOutGrids(lastGridOverItem.data.pos, true, true);
				lastGridOverItem.dispatchEvent(new VirtualNinjaMouseEvent(VirtualNinjaMouseEvent.MOUSE_ROLL_OUT));
				lastGridOverItem = null;
			}
			
			if(lastNinjaOverItem)
			{
				_grid.rollOutGrids(lastNinjaOverItem.data.pos, false, true);
				lastNinjaOverItem.dispatchEvent(new VirtualNinjaMouseEvent(VirtualNinjaMouseEvent.MOUSE_ROLL_OUT));
				lastNinjaOverItem = null;
			}
			
			if(curGridOverPos != -1)
			{
				for each(var sceneItem:SceneItem in _itemArr)
				{
					if(sceneItem.id == curGridOverPos)
					{
						
						_grid.rollOverGrids(curGridOverPos, true, true, true);
						lastGridOverItem = sceneItem.display as Ninja;
						sceneItem.display.dispatchEvent(new VirtualNinjaMouseEvent(VirtualNinjaMouseEvent.MOUSE_ROLL_OVER));
						return;
					}
				}
			}

			_itemDisplayList.sortOn(["y"], [Array.DESCENDING]);
			for each(var ninja:Ninja in _itemDisplayList)
			{
				if((ninja as Ninja).hitTestBody(stage.mouseX, stage.mouseY))
				{
					lastNinjaOverItem = ninja;
					(ninja as Ninja).dispatchEvent(new VirtualNinjaMouseEvent(VirtualNinjaMouseEvent.MOUSE_ROLL_OVER));
					if((ninja as Ninja).x == (ninja as Ninja).data.x && (ninja as Ninja).y == (ninja as Ninja).data.y)
					{
						_grid.rollOverGrids((ninja as Ninja).data.pos, true, false, true);
					}
					else
					{
						_grid.rollOverGrids((ninja as Ninja).data.pos, false, false, true);
					}
					return;
				}
			}
		}
		
		/**
		 * 处理flash导出SWF特效音效播放
		 */
		private function effectSoundHandler(e:Event):void 
		{
			e.stopPropagation();
			
			var target:MovieClip = e.target as MovieClip;
			if ("data" in target)
			{
				var sound:Object = target["data"];
				new PlaySoundNotice(parseInt(sound["id"]), parseInt(sound["volume"])).send();
			}
		}
		
		public function receive(notice:BaseNotice):void
		{
			switch(getQualifiedClassName(notice))
			{
				case getQualifiedClassName(AddSceneNinjaUINotice):
					addUIItem((notice as AddSceneNinjaUINotice).item);
					break;
				case getQualifiedClassName(RemoveSceneNinjaUINotice):
					removeUIItem((notice as RemoveSceneNinjaUINotice).item);
					break;
				case getQualifiedClassName(AddSceneItemUINotice):
					addSceneItemUI((notice as AddSceneItemUINotice).item);
					break;
				case getQualifiedClassName(RemoveSceneItemUINotice):
					removeSceneItemUI((notice as RemoveSceneItemUINotice).item);
					break;
			}
		}
		
		private function onEnchantmentComplete(evt:Event):void
		{
			_background.visible = false;
		}
		
		private function onEnvironmentReady(evt:Event):void
		{
			_environmentEffect.play("effect", 0, true);
		}
		
		public function focusItem(pos:int):void
		{
			var midX:int;
			var midY:int;
			var itemMidY:int;
			var sceneItem:SceneItem;
			
			sceneItem = this.getSceneItemById(pos);
			midX = 1300 / 2;
			midY = 780 / 2;
			this.effect.graphics.beginFill(0x00ff00);
			this.effect.graphics.drawRect(0, 0, 10, 10);
			this.effect.x = midX - sceneItem.display.x * 2;
			this.effect.y = midY - sceneItem.display.y * 2 + sceneItem.display.height / 2 * 2;
			this.effect.scaleX = 2;
			this.effect.scaleY = 2;
			this.ninjaUILayer.scaleX = 2;
			this.ninjaUILayer.scaleY = 2;
			this.ninjaUILayer.x = effect.x;
			this.ninjaUILayer.y = effect.y;
		}
		
		public function clearFocus():void
		{
			effect.scaleX = 1;
			effect.scaleY = 1;
			this.effect.x = 0;
			this.effect.y = 0;
			this.ninjaUILayer.scaleX = 1;
			this.ninjaUILayer.scaleY = 1;
			this.ninjaUILayer.x = 0;
			this.ninjaUILayer.y = 0;
		}
		
		public function addUIItem(value:BaseItemSceneUI):void
		{
			ninjaUILayer.addChild(value);
			_ui1Display.push(value);
			
			value.addEventListener(Event.RESIZE, onUIResize);
			updateUIOffset();//TODO:这个方法执行太多次，可以优化
		}
		
		public function removeUIItem(value:BaseItemSceneUI):void
		{
			if(_ui1Display.indexOf(value) != -1)
			{
				ninjaUILayer.removeChild(value);
				_ui1Display.splice(_ui1Display.indexOf(value), 1);
			}
			
			if(_ui2Display.indexOf(value) != -1)
			{
				itemUILayer.removeChild(value);
				_ui2Display.splice(_ui2Display.indexOf(value), 1);
			}
			
			value.removeEventListener(Event.RESIZE, onUIResize);
			
			updateUIOffset();
		}
		
		private function onUIResize(evt:Event):void
		{
			updateUIOffset();
		}
		
		private function updateUIOffset():void
		{
			var pos:int;
			var sceneNinjaUI:BaseSceneNinjaUI;
			var baseSceneUI:BaseItemSceneUI;
			
			for each(baseSceneUI in _ui1Display)
			{
				baseSceneUI.offsetY = 0;
			}
			
			//			for each(var baseSceneUI:BaseItemSceneUI in _ui2Display)
			//			{
			//				baseSceneUI.offsetY = 0;
			//			}
			
			_ui1Display.sortOn(["row"], [Array.DESCENDING]);
			//			_ui2Display.sortOn(["row"], [Array.DESCENDING]);
			for each(baseSceneUI in _ui1Display)
			{
				checkAndUpdateUIOffset(baseSceneUI as BaseSceneNinjaUI);
			}
			
			//			for each(var baseSceneUI:BaseItemSceneUI in _ui2Display)
			//			{
			//				checkAndUpdateUIOffset(baseSceneUI as BaseSceneNinjaUI);
			//			}
		}
		
		private function checkAndUpdateUIOffset(sceneNinjaUI:BaseSceneNinjaUI):void
		{
			var girdPos:Point;
			var isLeft:Boolean;
			var otherPos:int;
			var otherNinjaUI:BaseSceneNinjaUI;
			var posList:Array;
			
			if(sceneNinjaUI == null || sceneNinjaUI.enableOffset == false)
			{
				return ;
			}
			
			posList = sceneNinjaUI.posList;
			for each(var pos:int in posList)
			{
				girdPos = SceneConfig.getGridByPos(pos);
				
				for(var i:int = girdPos.y;i >= 0;i --)
				{
					otherPos = SceneConfig.getPosByGrid(i, girdPos.x);
					otherNinjaUI = getSceneNinjaUIByPos(otherPos);
					if(otherNinjaUI && otherNinjaUI != sceneNinjaUI)
					{
						if(otherNinjaUI.baseY > sceneNinjaUI.baseY - 15)
						{
							otherNinjaUI.offsetY = (sceneNinjaUI.baseY - 15 - otherNinjaUI.uiY);
						}
					}
				}
			}
		}
		
		private function getSceneNinjaUIByPos(pos:int):BaseSceneNinjaUI
		{
			var sceneNinjaUI:BaseSceneNinjaUI;
			
			for each(var baseSceneUI:BaseItemSceneUI in _ui1Display)
			{
				sceneNinjaUI = baseSceneUI as BaseSceneNinjaUI;
				if(sceneNinjaUI && sceneNinjaUI.enableOffset && sceneNinjaUI.containsPos(pos))
				{
					return sceneNinjaUI;
				}
			}
			
			//			for each(var baseSceneUI:BaseItemSceneUI in _ui2Display)
			//			{
			//				sceneNinjaUI = baseSceneUI as BaseSceneNinjaUI;
			//				if(sceneNinjaUI && sceneNinjaUI.enableOffset && sceneNinjaUI.containsPos(pos))
			//				{
			//					return sceneNinjaUI;
			//				}
			//			}
			
			return null;
		}
		
		public function get content():DisplayObject
		{
			return _content;
		}
		
		public function set resMap(value:Dictionary):void
		{
			_resMap = value;
		}
		
		public function get resMap():Dictionary
		{
			return _resMap;
		}
		
		private var topItemDisp:DisplayObject;
		public function setTopItem(id:int):void
		{
			var sceneItem:SceneItem;
			
			sceneItem = this.getSceneItemById(id);
			if(sceneItem)
			{
				topItemDisp = sceneItem.display;
			}
		}
		
		private var bottomItemDisp:DisplayObject;
		public function setBottemItem(id:int):void
		{
			var sceneItem:SceneItem;
			
			sceneItem = this.getSceneItemById(id);
			if(sceneItem)
			{
				bottomItemDisp = sceneItem.display;
			}
		}
		
		public function clearItemIndex(id:int):void
		{
			var sceneItem:SceneItem;
			
			sceneItem = this.getSceneItemById(id);
			if(sceneItem && topItemDisp == sceneItem.display)
			{
				topItemDisp = null;
			}
			
			if(sceneItem && bottomItemDisp == sceneItem.display)
			{
				bottomItemDisp = null;
			}
		}
		
		private function relayout():void//所有场景里的元素层叠关系
		{
			var i:int;
			
			_itemArr.sort(compareItem);
			for(var j:int=_itemArr.length-1;j>=0;--j)
			{
				var sceneItem:SceneItem = _itemArr[j];
				this._item.setChildIndex(sceneItem.display, j); 
			}
			
			_ui1Display.sort(compareDisp);
			for(i=_ui1Display.length-1;i>=0;--i)
			{
				this.ninjaUILayer.setChildIndex(_ui1Display[i], i); 
			}
			
			_ui2Display.sort(compareDisp);
			for(i=_ui2Display.length-1;i>=0;--i)
			{
				this.itemUILayer.setChildIndex(_ui2Display[i], i); 
			}
			
			_item.setChildIndex(_whiteMask, 0);
			_item.setChildIndex(_overTextRender, 1);
		}
		
		private function compareDisp(d1:Object, d2:Object):int
		{
			if(d1 == topItemDisp || d2 == bottomItemDisp)
			{
				return 1;
			}
			
			if(d1 == bottomItemDisp || d2 == topItemDisp)
			{
				return -1;
			}
			
			if(d1.ninjaY == d2.ninjaY)
			{
				if(d1.name > d2.name)
				{
					return 1;
				}
				return -1;
				
			}else if(d1.ninjaY < d2.ninjaY)
			{
				return (-1);
				
			}else
			{
				return 1
			}
		}
		
		private function compareItem(va:SceneItem,vb:SceneItem):int
		{ 		 
			if(va.display == topItemDisp || vb.display == bottomItemDisp)
			{
				return 1;
			}
			
			if(va.display == bottomItemDisp || vb.display == topItemDisp)
			{
				return -1;
			}
			
			if(va.display.y == vb.display.y)
			{
				if(va.id > vb.id)
				{
					return 1;
				}
				return -1;
				
			}else if(va.display.y< vb.display.y)
			{
				return (-1);
			}
			else
			{
				return 1
			}
		} 
		
		public function hideUI():void
		{
			ninjaUILayer.visible = false;
		}
		
//		private var sceneBitmap:Bitmap;
		public function showSecen(sceneID:int):void
		{
			var bgResName:String;
			var sceneInfo:SceneInfo;
			
			SceneConfig.sceneId = sceneID;
			sceneInfo = SceneConfig.getCurSceneInfo();
			bgResName = sceneInfo.res;
			_background.removeChildren();
//			sceneBitmap = (_resMap[bgResName] as Loader).content as Bitmap;
			_backgroundImage.load(sceneInfo.res);
//			_background.addChild(sceneBitmap);
			_blackMask.graphics.clear();
			_blackMask.graphics.beginFill(0x000000);
			_blackMask.graphics.drawRect(0, 0, this.width, this.height);
			_whiteMask.graphics.clear();
			_whiteMask.graphics.beginFill(0xffffff);
			_whiteMask.graphics.drawRect(0, 0, this.width, this.height);
			_blackMask.cacheAsBitmap = true;
			
			//			_environmentEffect.unload();
			//			_environmentEffect.loadUrl(sceneInfo.environmentEffect);
			
			_overTextRender.load((_resMap["plugin.battle.overText"] as Loader).contentLoaderInfo.applicationDomain);
			
			_grid.show(sceneInfo.positionInfo.mirror);
			_gridBackground.addChild(_grid.gridsBackground);
			
			this.dispatchEvent(new Event(Event.RESIZE, true));
		}
		
		public function getScenePosById(id:int):Point
		{
			var sceneItem:SceneItem;
			var destItem:SceneItem;
			var sceneposition:Point;
			
			for(var i:int = 0;i < _itemArr.length;i ++)
			{
				sceneItem = _itemArr[i];
				if(sceneItem.id == id)
				{
					destItem = sceneItem;
					break;
				}
			}
			
			sceneposition = new Point();
			
			if(destItem != null)
			{
				sceneposition.x = destItem.display.x;
				sceneposition.y = destItem.display.y;
			}
			return sceneposition;
		}
		
		public function renderer():void
		{
			effect.render();
			faceEffect.render();
		}
		
		public function addFaceEffect(effectInfo:EffectInfo, scale:Boolean = true, scaleOffsetX:int = 0):int
		{
			return faceEffect.addEffect(effectInfo, scale, scaleOffsetX);
		}
		
		public function playFaceEffect(effectInfo:EffectInfo, x:int = 0, y:int = 0):void
		{
			faceEffect.playEffect(effectInfo, x, y);
		}
		
		public function removeFaceEffect(effectInfo:EffectInfo):void
		{
			faceEffect.removeEffect(effectInfo);
		}
		
		public function addEffect(effectInfo:EffectInfo, scale:Boolean = true, scaleOffsetX:int = 0):int
		{
			return effect.addEffect(effectInfo, scale, scaleOffsetX);
		}
		
		public function playEffect(effectInfo:EffectInfo, x:int = 0, y:int = 0):void
		{
			effect.playEffect(effectInfo, x, y);
		}
		
		public function removeEffect(effectInfo:EffectInfo):void
		{
			effect.removeEffect(effectInfo);
		}
		
		public function addSceneItemUI(item:DisplayObject):void
		{
			_ui2Display.push(item);
			itemUILayer.addChild(item);
		}
		
		public function removeSceneItemUI(item:DisplayObject):void
		{
			if(_ui2Display.indexOf(item) != -1)
			{
				_ui2Display.splice(_ui2Display.indexOf(item), 1);
			}
			itemUILayer.removeChild(item);
		}
		
		public function addSceneItem(sceneItem:SceneItem, pt:Point):void
		{
			MotionLogger.output("[Battle]","[SceneManager][addSceneItem]<<<", "ItemId", sceneItem.id, "pt.poX",pt.x,"pt.poY",pt.y);
			
//			if(sceneItem.id < 100)
//			{
//				_grid.acceptMouseEvent(sceneItem.id, true);
//			}
//			else
//			{
//				_grid.acceptMouseEvent(sceneItem.id % 100, false);
//			}
			
			_itemArr.push(sceneItem);
			sceneItem.display.x = pt.x;
			sceneItem.display.y = pt.y;
			_item.addChild(sceneItem.display);
			_itemDisplayList.push(sceneItem.display);
		}
		
		public function removeSceneItem(id:int):void
		{
			var sceneItem:SceneItem;
			
			MotionLogger.output("[Battle]","[SceneManager][removeSceneItem]<<<", "ItemId", id);
			
			for each(sceneItem in _itemArr)
			{
				if(sceneItem.id == id)
				{
					break;
				}
			}
			
//			if(sceneItem.id < 100)
//			{
//				_grid.forbidMouseEvent(sceneItem.id, true);
//			}
//			else
//			{
//				_grid.forbidMouseEvent(sceneItem.id % 100, false);
//			}
			
			if(_item.contains(sceneItem.display))
			{
				_item.removeChild(sceneItem.display);
			}
			
			TweenManager.killTweensOf(sceneItem.display);
			
			if(_itemArr.indexOf(sceneItem) != -1)
			{
				_itemArr.splice(_itemArr.indexOf(sceneItem), 1);
				_itemDisplayList.splice(_itemDisplayList.indexOf(sceneItem.display), 1);
			}
			
			if(id == _grid.getSelectedPos())
			{
				_grid.hideAllGrid();
				_grid.onCancelSelected(null);
			}
		}
		
		public function getSceneItemById(id:int):SceneItem
		{
			for each(var sceneItem:SceneItem in _itemArr)
			{
				if(sceneItem.id == id)
				{
					return sceneItem;
				}
			}
			
			return null;
		}
		
		
		
		public function resetEnchantment():void
		{
			_enchantment.dispose();
			_background.visible = true;
		}
		
		public function setEnchantment(url:String):void
		{
			_enchantment.load(url);
		}
		
		public function updateNinjaSceneInfo(scene:int):void
		{
			var sceneInfo:SceneInfo;
			
			_environmentEffect.unload();
			sceneInfo = SceneConfig.getSceneInfo(scene);
			_ninjaBackgroundImage.load(sceneInfo.res);
			_environmentEffect.loadUrl(sceneInfo.environmentEffect);
		}
		
		public function resetNinjaSceneInfo():void
		{
			var sceneInfo:SceneInfo;
			
			_environmentEffect.unload();
			sceneInfo = SceneConfig.getCurSceneInfo();
			_ninjaBackgroundImage.dispose();
			_environmentEffect.loadUrl(sceneInfo.environmentEffect);
		}
		
		public function updateSceneInfo(scene:int):void
		{
			var sceneInfo:SceneInfo;
			
			sceneInfo = SceneConfig.getSceneInfo(scene);
			_backgroundImage.load(sceneInfo.res);
			_environmentEffect.loadUrl(sceneInfo.environmentEffect);
		}
		
		public function resetSceneInfo():void
		{
			var sceneInfo:SceneInfo;
			
			sceneInfo = SceneConfig.getCurSceneInfo();
			_backgroundImage.dispose();
			_environmentEffect.loadUrl(sceneInfo.environmentEffect);
		}
		
		public function resetColorMask():void
		{
			_colorMask.graphics.clear();
		}
		
		public function showColorMask(color:uint = 0x000000):void
		{
			_colorMask.alpha = 1;
			
			TweenManager.killTweensOf(_colorMask);
			_colorMask.graphics.clear();
			_colorMask.graphics.beginFill(color);
			_colorMask.graphics.drawRect(0, 0, this.width, this.height);
		}
		
		public function showColorMaskEffect(color:uint = 0x000000, time1:Number = 0.3, time2:Number = 0.3):void
		{
			TweenManager.killTweensOf(_colorMask);
			
			_colorMask.graphics.clear();
			_colorMask.graphics.beginFill(color);
			_colorMask.graphics.drawRect(0, 0, this.width, this.height);
			
			_colorMask.alpha = 0;
			
			TweenManager.addTweenTo(_colorMask, time1, {alpha:1});
			TweenManager.addTweenTo(_colorMask, time2, {alpha:0, delay:time1});
		}
		
		public function setSceneBlackMask(alpha:Number = 0, time:Number = 0.5):void
		{
			TweenManager.killTweensOf(_blackMask);
			TweenManager.addTweenTo(_blackMask, time, {alpha:alpha, onComplete:onSeneceBlackMaskComplete});
		}
		
		public function setSceneWhiteMask(alpha:Number = 0, time:Number = 0.5):void
		{
			TweenManager.killTweensOf(_whiteMask);
			TweenManager.addTweenTo(_whiteMask, time, {alpha:alpha});
		}
		
		public function showOverText():void
		{
			_overTextRender.addEventListener(MmeAssetRenderEvent.PLAY_END, onOverTexePlayEnd);
			
			_overTextRender.visible = true;
			_overTextRender.gotoAction("effect", 0, true);
			TimerProvider.addTimeTask(1000 / 24, onRenderOverText);
			setTimeout(function():void
			{
				new PlayUISoundCommand(UISoundDef.BATTLE_OVER).call();
			}, 1500);
		}
		
		private function onOverTexePlayEnd(evt:MmeAssetRenderEvent):void
		{
			_overTextRender.visible = false;
			
			_overTextRender.removeEventListener(MmeAssetRenderEvent.PLAY_END, onOverTexePlayEnd);
			TimerProvider.removeTimeTask(1000 / 24, onRenderOverText);
		}
		
		private function onRenderOverText():void
		{
			_overTextRender.manualEnterFrame();
		}
		
		private function onSeneceBlackMaskComplete():void
		{
			var event:SceneEvent;
			
			event = new SceneEvent(SceneEvent.SCENE_MASK, 0);
			this.dispatchEvent(event);
		}
		
		public function getSelectedFloorGridPos():int
		{
			return _grid.getSelectedPos();
		}
		
		public function setSceneItemPos(id:int, pt:Point):void
		{
			var sceneItem:SceneItem;
			
			sceneItem = getSceneItemById(id);
			if(sceneItem != null)
			{
				sceneItem.display.x = pt.x;
				sceneItem.display.y = pt.y; 
			}
		}
		
		public function moveSceneItem(id:int, pt:Point, time:Number = 0.5):void//type 1是普通移�?2是瞬移过�?
		{
			var sceneItem:SceneItem;
			for(var i:int=0;i<_itemArr.length;i++){
				sceneItem = _itemArr[i];
				if(sceneItem.id == id){
					break;
				}
			}
			
			TweenManager.addTweenTo(sceneItem.display,time, {x:pt.x,y:pt.y,onComplete:onMoveComplete, onCompleteParams:[sceneItem.id]});
		}
		
		private function onMoveComplete(id:int):void
		{			
			var sceneEvent:SceneEvent = new SceneEvent(SceneEvent.MOVE_COMPLETE,id);
			this.dispatchEvent(sceneEvent);
		}
		
		public function destroy():void
		{
			CollectionClearUtil.clearDictionary(_resMap);
			
			if(_item != null)
			{
				_item.removeChildren();
			}
			if(this._item != null)
			{
				_item.removeChildren();
			}
			if(this._background != null)
			{
				_background.removeChildren();
			}
			if(_gridBackground != null)
			{
				_gridBackground.removeChildren();
			}
			
//			if(sceneBitmap)
//			{
//				sceneBitmap.bitmapData.dispose();
//				sceneBitmap.bitmapData = null;
//				sceneBitmap = null;
//			}
			
			if(_grid)
			{
				_grid.dispose();
			}
			
			_blackMask.graphics.clear();
			_colorMask.graphics.clear();
			_whiteMask.graphics.clear();
			
			effect.destroy();
			faceEffect.destroy();
			_environmentEffect.destroy();
			_overTextRender.destroy();
			_overTextRender.removeEventListener(MmeAssetRenderEvent.PLAY_END, onOverTexePlayEnd);
			TimerProvider.removeTimeTask(1000 / 24, onRenderOverText);
			
			LoadManager.getManager(LoaderDef.IMAGE).dispose(_backgroundImage.url);
			_ninjaBackgroundImage.dispose();
			_ninjaBackgroundImage = null;
			
			_enchantment.dispose();
			_backgroundImage.dispose();
			_enchantment = null;
			_backgroundImage = null;
			effect = null;
			faceEffect = null;
			_environmentEffect = null;
			_overTextRender = null;
			
			_content.removeChildren();
			this.removeChildren();
			
			var i:int;
			for(i = 0;i<this._itemArr.length;i++){
				_itemArr[i]=null;
			}
			_itemArr = [];
			_itemDisplayList = [];
			
			TimerProvider.removeTimeTask(_refurbishTime, relayout);
			MotionNotifyCenter.remove(this);
			removeEventListener("fla.sound", effectSoundHandler);
			removeEventListener(Event.ENTER_FRAME, onHitTestEnterFrame);
		}
	
															
		public function autoSetNull():void
		{

			_missionFun = null;
			_resMap = null;
			_itemDisplayList = null;
			_itemArr = null;
			_ui1Display = null;
			_ui2Display = null;
			_overTextRender = null;
			ninjaUILayer = null;
			itemUILayer = null;
			_blackMask = null;
			_colorMask = null;
			_whiteMask = null;
			_item = null;
			_grid = null;
			_gridBackground = null;
			_background = null;
			_enchantment = null;
			_environmentEffect = null;
			_backgroundImage = null;
			_ninjaBackgroundImage = null;
			_content = null;
			effect = null;
			faceEffect = null;
			lastGridOverItem = null;
			lastNinjaOverItem = null;
			objectPoints = null;
			topItemDisp = null;
			bottomItemDisp = null;
//			sceneBitmap = null;
		}
	}
}