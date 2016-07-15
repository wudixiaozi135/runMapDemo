package com.tencent.morefun.naruto.plugin.world.views
{
	import base.ApplicationData;
	
	import cfgData.dataStruct.SceneCFG;
	
	import com.tencent.morefun.naruto.base.def.GlobelModelKeyDef;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	import com.tencent.morefun.naruto.plugin.ui.box.BaseBox;
	import com.tencent.morefun.naruto.plugin.ui.box.FullScreenBox;
	import com.tencent.morefun.naruto.plugin.ui.components.buttons.Button;
	import com.tencent.morefun.naruto.plugin.ui.components.events.ScrollEvent;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.filters.GlowFilter;
	import flash.geom.ColorTransform;
	import flash.geom.Rectangle;
	
	import player.commands.CrossSceneGotoNpcCommand;
	
	import ui.world.WorldMapUI;
	
	import world.SceneConfig;
	
	public class WorldMap extends FullScreenBox
	{
		private var head:WorldMapHead;
		private var head2:WorldMapHead;
		private static const NORMAL_COLOR_TRANSFORM:ColorTransform = new ColorTransform();
		private static const NORMAL_FILTERS:Array = [];
		private static const OVER_COLOR_TRANSFORM:ColorTransform = new ColorTransform(1,1,1,1,30,30,30,0);
		private static const OVER_FILTERS:Array = [new GlowFilter(0xFEAB12,0.8,20,20)];
		private static const DOWN_COLOR_TRANSFORM:ColorTransform = new ColorTransform(0.5,0.5,0.5);
		private var btns:Array;
		private var m_maskbg:BitmapData;
		private var m_maskbmp:Bitmap;
		
		private var leftBtn:Button;
		private var rightBtn:Button;
		private var upBtn:Button;
		private var downBtn:Button;
		
		private var inited:Boolean;
		
		public function WorldMap()
		{
			super(new WorldMapUI, true, true, false);
			
			initUI();
			ApplicationData.singleton.globelInfo.addEventListener(ModelEvent.UPDATE,onSceneChanged);
		}
		
		private function get selfUI():WorldMapUI
		{
			return content as WorldMapUI;
		}
		
		override public function get width():Number
		{
			return selfUI.width;
		}
		
		override public function get height():Number
		{
			return selfUI.height;
		}
		
		override public function showMask(toShow:Boolean):void
		{
			if(toShow) {
				if(m_mask == null) {
					Sprite(background).addChild(m_maskbmp = new Bitmap(m_maskbg = new BitmapData(1, 1, false, 0x000000))); //
				}
				m_maskbmp.width = LayoutManager.stageWidth;
				m_maskbmp.height = LayoutManager.stageHeight;
				m_maskbmp.visible = true;
			} else {
				m_maskbmp && (m_maskbmp.visible = false);
			}
		}
		
		override public function onScreenResize(e:Event=null):void
		{
			super.onScreenResize(e);
			center();
		}
		
		override public function center():void
		{
			this.x = 0;
			this.y = 0;
			if(background){
				background.width = LayoutManager.stageWidth;
				background.height = LayoutManager.stageHeight;
			}
			layoutMap();
			if(!inited){
				//打开时候将镜头尽量放在视野内
				inited = true;
				lookAtHead();
			}
			layoutMap(false);
			if(selfUI.closeBtn){
				closeButton.x = selfUI.x + selfUI.masklayer.width - closeButton.width - 10;
				closeButton.y = selfUI.y + 10;
			}
		}
		
		public function layoutMap(resetMapLoc:Boolean = true):void
		{
			var screen:Rectangle = calcSafeRectangle();
			screen.height = Math.min(LayoutManager.stageHeight, selfUI.mapbackground.height);
			//
			screen.width = Math.min(selfUI.mapbackground.width, screen.width);
			screen.height = Math.min(selfUI.mapbackground.height, screen.height);
			
			//
			if(resetMapLoc){
				selfUI.mapbackground.x = selfUI.masklayer.x;
				selfUI.mapbackground.y = selfUI.masklayer.y;
			}
			selfUI.masklayer.width = screen.width;
			selfUI.masklayer.height = screen.height;
			selfUI.masksp.width = screen.width - 10;
			selfUI.masksp.height = screen.height - 10;
			selfUI.masksp.x = selfUI.masklayer.x + 5;
			selfUI.masksp.y = selfUI.masklayer.y + 5;
			selfUI.x = Math.floor((LayoutManager.stageWidth - screen.width)/2);
			selfUI.y = Math.floor((LayoutManager.stageHeight - screen.height)/2);
			
			//
			if(selfUI.home.visible){
				selfUI.home.x = Math.floor((selfUI.masklayer.width - selfUI.home.width)/2);
				selfUI.home.y = Math.floor((selfUI.masklayer.height - selfUI.home.height)/2);
				selfUI.homemaskshape.width = selfUI.masklayer.width;
				selfUI.homemaskshape.height = selfUI.masklayer.height;
				selfUI.homemaskshape.x = selfUI.masklayer.x;
				selfUI.homemaskshape.y = selfUI.masklayer.y;
			}
			
			selfUI.upbtn.x = Math.floor(selfUI.masklayer.width / 2);
			selfUI.upbtn.y = Math.floor(selfUI.masklayer.x + selfUI.upbtn.height - 10);
			
			selfUI.downbtn.x = Math.floor(selfUI.masklayer.width / 2);
			selfUI.downbtn.y = Math.floor(selfUI.masklayer.height - selfUI.downbtn.height + 10);
			
			selfUI.leftbtn.x = Math.floor(selfUI.masklayer.x + selfUI.leftbtn.width - 10);
			selfUI.leftbtn.y = Math.floor(selfUI.masklayer.height / 2 + selfUI.masklayer.y);
			
			selfUI.rightbtn.x = Math.floor(selfUI.masklayer.width - selfUI.rightbtn.width + 10);
			selfUI.rightbtn.y = Math.floor(selfUI.masklayer.height / 2 + selfUI.masklayer.y);
			
			if(selfUI.masklayer.width < selfUI.mapbackground.width){
				if(selfUI.mapbackground.x < selfUI.masklayer.x){
					selfUI.leftbtn.visible = true;
				}else{
					selfUI.leftbtn.visible = false;
				}
				
				if(selfUI.mapbackground.width + selfUI.mapbackground.x > selfUI.masklayer.width + selfUI.masklayer.x){
					selfUI.rightbtn.visible = true;
				}else{
					selfUI.rightbtn.visible = false;
				}
			}else{
				leftBtn.visible = rightBtn.visible = false;
			}
			
			if(selfUI.masklayer.height < selfUI.mapbackground.height){
				if(selfUI.mapbackground.y < selfUI.masklayer.y){
					selfUI.upbtn.visible = true;
				}else{
					selfUI.upbtn.visible = false;
				}
				
				if(selfUI.mapbackground.height + selfUI.mapbackground.y > selfUI.masklayer.height + selfUI.masklayer.y){
					selfUI.downbtn.visible = true;
				}else{
					selfUI.downbtn.visible = false;
				}
			}else{
				upBtn.visible = downBtn.visible = false;
			}
		}
		
		private function initUI():void
		{
			closeButton = selfUI.closeBtn;
			
			showMask(true);
			
			selfUI.mapbackground.head.mouseEnabled = false;
			selfUI.mapbackground.head.mouseChildren = false;
			
			selfUI.masklayer.mouseEnabled = false;
			
			selfUI.mapbackground.homeBtn.addEventListener(MouseEvent.CLICK, onClickBtn);
			selfUI.home.btn_2015001.addEventListener(MouseEvent.CLICK, onClickBtn);
			selfUI.home.btn_2015002.addEventListener(MouseEvent.CLICK, onClickBtn);
			selfUI.home.btn_2015003.addEventListener(MouseEvent.CLICK, onClickBtn);
			selfUI.home.btn_2015004.addEventListener(MouseEvent.CLICK, onClickBtn);
			selfUI.home.backBtn.addEventListener(MouseEvent.CLICK, onClickBtn);
			
			selfUI.home.visible = false;
			selfUI.homemaskshape.visible = false;
			
			leftBtn = new Button(selfUI.leftbtn);
			leftBtn.addEventListener(MouseEvent.CLICK, onClickBtn);
			rightBtn = new Button(selfUI.rightbtn);
			rightBtn.addEventListener(MouseEvent.CLICK, onClickBtn);
			upBtn = new Button(selfUI.upbtn);
			upBtn.addEventListener(MouseEvent.CLICK, onClickBtn);
			downBtn = new Button(selfUI.downbtn);
			downBtn.addEventListener(MouseEvent.CLICK, onClickBtn);

			addChild(closeButton);
			
			btns = [selfUI.mapbackground.homeBtn];
			for(var i:int=0;i<selfUI.mapbackground.numChildren;i++)
			{
				var btn:MovieClip = selfUI.mapbackground.getChildAt(i) as MovieClip;
				if(btn && btn.name.indexOf("btn_") == 0)
				{
					btns.push(btn);
				}
			}
			for(i=0;i<selfUI.home.numChildren;i++)
			{
				btn = selfUI.home.getChildAt(i) as MovieClip;
				if(btn && btn.name.indexOf("btn_") == 0)
				{
					btns.push(btn);
				}
			}
			
			for each(btn in btns)
			{
				btn.buttonMode = true;
				btn.addEventListener(MouseEvent.CLICK, onClickBtn);
				btn.addEventListener(MouseEvent.ROLL_OVER, onMouseEvent);
				btn.addEventListener(MouseEvent.ROLL_OUT, onMouseEvent);
				btn.addEventListener(MouseEvent.MOUSE_DOWN, onMouseEvent);
				btn.addEventListener(MouseEvent.MOUSE_UP, onMouseEvent);
			}
			
			updateHead();
		}
		
		public function lookAtHead():void
		{
			var ofx:Number = selfUI.mapbackground.head.x;
			var ofy:Number = selfUI.mapbackground.head.y;
			selfUI.mapbackground.x = Math.min(0, Math.max(selfUI.masklayer.width - selfUI.mapbackground.width, selfUI.mapbackground.head.x - selfUI.masklayer.width/2)); 
			selfUI.mapbackground.y = Math.min(0, Math.max(selfUI.masklayer.height - selfUI.mapbackground.height, selfUI.mapbackground.head.y - selfUI.masklayer.height/2));
		}
		
		private function updateHead():void
		{
			if(head == null)
			{
				head = new WorldMapHead();
			}
			var sceneId:int = ApplicationData.singleton.globelInfo.sceneToId || ApplicationData.singleton.globelInfo.sceneId;
			var info:SceneCFG = SceneConfig.getSceneInfo(sceneId);
			var btn:DisplayObject = selfUI.mapbackground.getChildByName("btn_"+info.worldMapId);
			if(btn)
			{
				head.x = btn.x;
				head.y = btn.y;
				selfUI.mapbackground.head.addChild(head);
			}else
			{
				btn = selfUI.home.getChildByName("btn_"+info.worldMapId);
				if(btn)
				{
					head.x = selfUI.mapbackground.homeBtn.x;
					head.y = selfUI.mapbackground.homeBtn.y;
					selfUI.mapbackground.head.addChild(head);
					
					if(head2 == null)
					{
						head2 = new WorldMapHead();
					}
					head2.x = btn.x;
					head2.y = btn.y;
					selfUI.home.addChild(head2);
				}
			}
		}
		
		protected function onSceneChanged(event:ModelEvent):void
		{
			switch(event.key)
			{
				case GlobelModelKeyDef.SCENE_ID:
					updateHead();
					break;
			}
		}
		
		protected function onMouseEvent(event:MouseEvent):void
		{
			var btn:MovieClip = event.currentTarget as MovieClip;
			switch(event.type)
			{
				case MouseEvent.MOUSE_UP:
				case MouseEvent.ROLL_OVER:
					btn.filters = OVER_FILTERS;
					btn.transform.colorTransform = OVER_COLOR_TRANSFORM;
					break;
				case MouseEvent.ROLL_OUT:
					btn.filters = NORMAL_FILTERS;
					btn.transform.colorTransform = NORMAL_COLOR_TRANSFORM;
					break;
				case MouseEvent.MOUSE_DOWN:
					btn.filters = NORMAL_FILTERS;
					btn.transform.colorTransform = DOWN_COLOR_TRANSFORM;
					break;
			}
		}
		
		protected function onClickBtn(event:MouseEvent):void
		{
			switch(event.currentTarget)
			{
				case selfUI.mapbackground.homeBtn:
					selfUI.home.visible = true;
					selfUI.homemaskshape.visible = true;
					center();
					break;
				case selfUI.home.backBtn:
					selfUI.home.visible = false;
					selfUI.homemaskshape.visible = false;
					layoutMap(false);
					break;
				case upBtn:
					selfUI.mapbackground.y = 0;
					layoutMap(false);
					break;
				case downBtn:
					selfUI.mapbackground.y = selfUI.masklayer.y + selfUI.masklayer.height - selfUI.mapbackground.height;
					layoutMap(false);
					break;
				case leftBtn:
					selfUI.mapbackground.x = 0;
					layoutMap(false);
					break;
				case rightBtn:
					selfUI.mapbackground.x = selfUI.masklayer.x + selfUI.masklayer.width - selfUI.mapbackground.width;
					layoutMap(false);
					break;
				default:
					//				case selfUI.home.btn_2015001:
					//				case selfUI.home.btn_2015002:
					//				case selfUI.home.btn_2015003:
					//				case selfUI.home.btn_2015004:
					var sid:int = int(event.currentTarget.name.substr(4));
					if(sid)
					{
						new CrossSceneGotoNpcCommand(sid,0).call();
						close();
					}
					break;
			}
		}
		
		override public function destroy():void
		{
			ApplicationData.singleton.globelInfo.removeEventListener(ModelEvent.UPDATE,onSceneChanged);
			for each(var btn:MovieClip in btns)
			{
				btn.removeEventListener(MouseEvent.CLICK, onClickBtn);
				btn.removeEventListener(MouseEvent.ROLL_OVER, onMouseEvent);
				btn.removeEventListener(MouseEvent.ROLL_OUT, onMouseEvent);
				btn.removeEventListener(MouseEvent.MOUSE_DOWN, onMouseEvent);
				btn.removeEventListener(MouseEvent.MOUSE_UP, onMouseEvent);
			}
			btns.length = 0;
			btns = null;
			
			selfUI.mapbackground.homeBtn.removeEventListener(MouseEvent.CLICK, onClickBtn);
			selfUI.home.btn_2015001.removeEventListener(MouseEvent.CLICK, onClickBtn);
			selfUI.home.btn_2015002.removeEventListener(MouseEvent.CLICK, onClickBtn);
			selfUI.home.btn_2015003.removeEventListener(MouseEvent.CLICK, onClickBtn);
			selfUI.home.btn_2015004.removeEventListener(MouseEvent.CLICK, onClickBtn);
			selfUI.home.backBtn.removeEventListener(MouseEvent.CLICK, onClickBtn);
			
			if(head)
			{
				if(head.parent)
				{
					head.parent.removeChild(head);
				}
				head.destroy();
				head = null;
			}
			if(head2)
			{
				if(head2.parent)
				{
					head2.parent.removeChild(head2);
				}
				head2.destroy();
				head2 = null;
			}
			selfUI.mapbackground.homeBtn.removeEventListener(MouseEvent.CLICK, onClickBtn);
			selfUI.home.backBtn.removeEventListener(MouseEvent.CLICK, onClickBtn);
			
			super.destroy();
		}
	}
}