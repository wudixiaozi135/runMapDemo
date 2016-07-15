package com.tencent.morefun.naruto.plugin.newplot.views
{
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent;
	import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
	import com.tencent.morefun.naruto.plugin.newplot.datas.ActorData;
	import com.tencent.morefun.naruto.plugin.newplot.events.ActorEvent;
	import com.tencent.morefun.naruto.util.GameTip;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.filters.GlowFilter;
	import flash.geom.Rectangle;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	import base.ApplicationData;
	
	import def.PlotAssetDef;
	
	import majorRole.def.MajorNinjaDef;
	
	import npc.defs.NpcAssetDef;
	
	import ui.newplot.ShadowUI;
	
	[Event(name="updatePosition", type="com.tencent.morefun.naruto.plugin.newplot.events.ActorEvent")]
	[Event(name="updatePopupPosition", type="com.tencent.morefun.naruto.plugin.newplot.events.ActorEvent")]
	[Event(name="destroy", type="com.tencent.morefun.naruto.plugin.newplot.events.ActorEvent")]
    import com.tencent.morefun.naruto.i18n.I18n;
	public class Actor extends Sprite
	{
		protected var _mmeRenderer:MmeAssetRender;
		protected var _mmeRenderer2:MmeAssetRender;
		protected var popupContainer:Sprite;
		
		public var data:ActorData;
		protected var nameTxt:TextField;
		protected var shadowUI:ShadowUI;
		protected var currAction:String;
		protected var unLoopPlayEndFun:Function;
		protected var commonHeadY:int;
		protected static var commonActions:Array = ["run_6", "run_7", "run_0", "run_1", "run_2", "run_3", "run_4", "run_5", "idle_6", "idle_7", "idle_0", "idle_1", "idle_2", "idle_3", "idle_4", "idle_5"];
		
		public function Actor(data:ActorData)
		{
			super();
			this.popupContainer = new Sprite();
			this.data = data;
			
			init();
		}
		
		private function init():void
		{
			if(data.cfg.showShadow)
			{
				shadowUI = new ShadowUI();
				addChild(shadowUI);
			}
			nameTxt = new TextField();
			nameTxt.defaultTextFormat = new TextFormat("SimSun", 13, data.seq==1?0xFFDA46:0xFFFFFF);
			nameTxt.autoSize = TextFieldAutoSize.LEFT;
			nameTxt.filters = [new GlowFilter(0x0, 1, 2, 2, 10, 1)];
			nameTxt.multiline = false;
			nameTxt.selectable = false;
			
			nameTxt.text = data.cfg.name;
			nameTxt.x = - nameTxt.width>>1;
			nameTxt.y = - nameTxt.height;
            nameTxt.visible = data.cfg.showName;
			
			if(data.cfg.resAlone == 0 || data.cfg.resAlone == 2)
			{
				_mmeRenderer = new MmeAssetRender(NpcAssetDef.MME_ASSET); 
				_mmeRenderer.addEventListener(MmeAssetRenderEvent.READY,onMmeRenderer);
				_mmeRenderer.addEventListener(MmeAssetRenderEvent.FRAME_EVENT,onMmeRenderer);
				_mmeRenderer.addEventListener(MmeAssetRenderEvent.LOAD_ERROR,onMmeRenderer);
				_mmeRenderer.addEventListener(MmeAssetRenderEvent.PLAY_END,onMmeRenderer);
				if(data.id < 10)
				{
					var showNinja:int = ApplicationData.singleton.selfInfo.showNinja;
					if(showNinja && !MajorNinjaDef.isMajorNinjaId(showNinja))
					{
						_mmeRenderer.loadUrl(PlotAssetDef.getAsset(PlotAssetDef.TYPE_ACTOR,showNinja));
					}else
					{
						_mmeRenderer.loadUrl(PlotAssetDef.getAsset(PlotAssetDef.TYPE_ACTOR,ApplicationData.singleton.selfInfo.fashionNinja || ApplicationData.singleton.selfInfo.ninja));
					}
				}else
				{
					_mmeRenderer.loadUrl(PlotAssetDef.getAsset(PlotAssetDef.TYPE_ACTOR,data.cfg.resId));
				}
			}
			if(data.cfg.resAlone == 1 || data.cfg.resAlone == 2)
			{
				_mmeRenderer2 = new MmeAssetRender(NpcAssetDef.MME_ASSET);
				_mmeRenderer2.addEventListener(MmeAssetRenderEvent.READY,onMmeRenderer);
				_mmeRenderer2.addEventListener(MmeAssetRenderEvent.FRAME_EVENT,onMmeRenderer);
				_mmeRenderer2.addEventListener(MmeAssetRenderEvent.LOAD_ERROR,onMmeRenderer);
				_mmeRenderer2.addEventListener(MmeAssetRenderEvent.PLAY_END,onMmeRenderer);
				_mmeRenderer2.loadUrl(PlotAssetDef.getAsset(PlotAssetDef.TYPE_ACTOR_ALONE,data.cfg.resId));
			}
			addChild(nameTxt);
		}
		
		protected function onMmeRenderer(event:MmeAssetRenderEvent):void
		{
			var mme:MmeAssetRender = event.currentTarget as MmeAssetRender;
			switch(event.type)
			{
				case MmeAssetRenderEvent.READY:
					var an:String = currAction || data.defaultAction;
					ps = mme.getReferPointsFromAction("posData",0);
					if(ps && ps.length)
					{
						commonHeadY = ps[0];
					}else if(mme.hasActionName("idle_0"))
					{
						mme.gotoAction("idle_0");
						var bound:Rectangle = mme.getBounds(null);
						commonHeadY = bound.top;
					}
					if(mme.hasActionName(an))
					{
						mme.play(an);
						addChild(mme);
						reCalcHeadPosition();
					}
					break;
				case MmeAssetRenderEvent.PLAY_END:
					if(unLoopPlayEndFun != null)
					{
						unLoopPlayEndFun();
						unLoopPlayEndFun = null;
					}
					break;
				case MmeAssetRenderEvent.FRAME_EVENT:
					if(event.frameEvent == "refp")
					{
						var ps:Array = mme.getCurrReferPoints();
						if(ps && ps.length)
						{
							headY = PointElementData(ps[0]).y;
							applyHeadPosition();
						}else
						{
							reCalcHeadPosition();
						}
					}else if(event.frameEvent == "hideShadow")
					{
//						shadowUI.visible = false;
					}
					break;
				case MmeAssetRenderEvent.LOAD_ERROR:
					GameTip.show(I18n.lang("as_newplot_1451031574_4610_0")+data.seq+"."+data.id+I18n.lang("as_newplot_1451031574_4610_1"));
					break;
			}
		}
		
		protected function hideMme(who:int=0):void
		{
			if((who==0||who==1) && _mmeRenderer && contains(_mmeRenderer))
			{
				removeChild(_mmeRenderer);
			}
			
			if((who==0||who==2) && _mmeRenderer2 && contains(_mmeRenderer2))
			{
				removeChild(_mmeRenderer2);
			}
		}
		
		public function playAction(actionName:String,keepFrame:Boolean,loop:Boolean,unLoopPlayEndFun:Function):void
		{
			currAction = actionName;
			this.unLoopPlayEndFun = unLoopPlayEndFun;
			var played:Boolean = false;
			var frame:int;
			if(_mmeRenderer && _mmeRenderer.isReady)
			{
				if(_mmeRenderer.hasActionName(actionName))
				{
					if(keepFrame)
					{
						frame = Math.max(0,_mmeRenderer.getCurrFrame());
					}
					played = _mmeRenderer.play(actionName,frame,loop);
					hideMme(2);
					addChild(_mmeRenderer);
					reCalcHeadPosition();
				}else
				{
					hideMme(1);
				}
			}
			
			if(_mmeRenderer2 && _mmeRenderer2.isReady)
			{
				if(_mmeRenderer2.hasActionName(actionName))
				{
					if(keepFrame)
					{
						frame = Math.max(0,_mmeRenderer2.getCurrFrame());
					}
					played = _mmeRenderer2.play(actionName,frame,loop);
					hideMme(1);
					addChild(_mmeRenderer2);
					reCalcHeadPosition();
				}else
				{
					hideMme(2);
				}
			}
			
//			if(!played)
//			{
//				GameTip.show("无法播放"+data.id+"的动作："+actionName);
//			}
		}
		
		public function getCurrAction():String
		{
			return currAction || data.defaultAction;
		}
		
		public function addPopup(dobj:DisplayObject):void
		{
			if(!popupContainer.contains(dobj))
			{
				popupContainer.addChild(dobj);
				dispatchEvent(new ActorEvent(ActorEvent.UPDATE_POPUP_POSITION));
			}
		}
		
		public function removePopup(dobj:DisplayObject):void
		{
			if(popupContainer.contains(dobj))
			{
				popupContainer.removeChild(dobj);
				dispatchEvent(new ActorEvent(ActorEvent.UPDATE_POPUP_POSITION));
				
			}
		}
		
		public function getPopupContainer():Sprite
		{
			return popupContainer;
		}
		
		private var headY:int;
		public function reCalcHeadPosition():void
		{
//			graphics.clear();
//			graphics.beginFill(0xFF0000,1);
			
			var an:String = currAction || data.defaultAction;
			if(commonHeadY==0 || commonActions.indexOf(an)==-1)
			{
				var bound:Rectangle;
				if(contains(nameTxt))
				{
					removeChild(nameTxt);
					bound = this.getBounds(null);
					addChild(nameTxt);
				}else
				{
					bound = this.getBounds(null);
				}
				headY = bound.top;
			}else
			{
				headY = commonHeadY;
			}
			
//			graphics.drawCircle(0,headY,2);
			
			applyHeadPosition();
		}
		
		private function applyHeadPosition():void
		{
			nameTxt.y = - nameTxt.height + headY;
			popupContainer.y = y + nameTxt.y;
		}
		
		override public function set x(value:Number):void
		{
			super.x = value;
			popupContainer.x = value;
			dispatchEvent(new ActorEvent(ActorEvent.UPDATE_POSITION));
		}
		
		override public function set y(value:Number):void
		{
			super.y = value;
			reCalcHeadPosition();
			dispatchEvent(new ActorEvent(ActorEvent.UPDATE_POSITION));
		}
		
		public function destroy():void
		{
			if(_mmeRenderer)
			{
				_mmeRenderer.removeEventListener(MmeAssetRenderEvent.READY,onMmeRenderer);
				_mmeRenderer.removeEventListener(MmeAssetRenderEvent.LOAD_ERROR,onMmeRenderer);
				_mmeRenderer.removeEventListener(MmeAssetRenderEvent.PLAY_END,onMmeRenderer);
				_mmeRenderer.destroy();
				_mmeRenderer = null;
			}
			
			if(_mmeRenderer2)
			{
				_mmeRenderer2.removeEventListener(MmeAssetRenderEvent.READY,onMmeRenderer);
				_mmeRenderer2.removeEventListener(MmeAssetRenderEvent.LOAD_ERROR,onMmeRenderer);
				_mmeRenderer2.removeEventListener(MmeAssetRenderEvent.PLAY_END,onMmeRenderer);				
				_mmeRenderer2.destroy();
				_mmeRenderer2 = null;
			}
			if(shadowUI)
			{
				if(shadowUI.parent)
				{
					shadowUI.parent.removeChild(shadowUI);
				}
				shadowUI = null;
			}
			if(popupContainer.parent)
			{
				popupContainer.parent.removeChild(popupContainer);
			}
			popupContainer.removeChildren();
			popupContainer = null;
			data = null;
			dispatchEvent(new ActorEvent(ActorEvent.DESTROY));
		}
	}
}